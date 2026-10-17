.class public final Lcom/jichi/ob/ui/MergeFragment;
.super Landroidx/fragment/app/Fragment;
.source "MergeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;,
        Lcom/jichi/ob/ui/MergeFragment$ParseResult;,
        Lcom/jichi/ob/ui/MergeFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMergeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MergeFragment.kt\ncom/jichi/ob/ui/MergeFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1823:1\n1#2:1824\n774#3:1825\n865#3,2:1826\n295#3,2:1828\n1068#3:1833\n1563#3:1834\n1634#3,3:1835\n774#3:1842\n865#3,2:1843\n785#3:1845\n796#3:1846\n1878#3,2:1847\n797#3,2:1849\n1880#3:1851\n799#3:1852\n1878#3,3:1853\n1869#3,2:1856\n1563#3:1858\n1634#3,3:1859\n1869#3,2:1866\n774#3:1868\n865#3,2:1869\n785#3:1871\n796#3:1872\n1878#3,2:1873\n797#3,2:1875\n1880#3:1877\n799#3:1878\n1563#3:1879\n1634#3,3:1880\n1563#3:1883\n1634#3,3:1884\n360#3,7:1887\n785#3:1894\n796#3:1895\n1878#3,2:1896\n797#3,2:1898\n1880#3:1900\n799#3:1901\n1563#3:1902\n1634#3,3:1903\n1869#3,2:1906\n3829#4:1830\n4344#4,2:1831\n37#5:1838\n36#5,3:1839\n37#5:1862\n36#5,3:1863\n*S KotlinDebug\n*F\n+ 1 MergeFragment.kt\ncom/jichi/ob/ui/MergeFragment\n*L\n594#1:1825\n594#1:1826,2\n646#1:1828,2\n688#1:1833\n693#1:1834\n693#1:1835,3\n1055#1:1842\n1055#1:1843,2\n1141#1:1845\n1141#1:1846\n1141#1:1847,2\n1141#1:1849,2\n1141#1:1851\n1141#1:1852\n1278#1:1853,3\n1431#1:1856,2\n1525#1:1858\n1525#1:1859,3\n1558#1:1866,2\n1637#1:1868\n1637#1:1869,2\n699#1:1871\n699#1:1872\n699#1:1873,2\n699#1:1875,2\n699#1:1877\n699#1:1878\n703#1:1879\n703#1:1880,3\n704#1:1883\n704#1:1884,3\n1289#1:1887,7\n1533#1:1894\n1533#1:1895\n1533#1:1896,2\n1533#1:1898,2\n1533#1:1900\n1533#1:1901\n1533#1:1902\n1533#1:1903,3\n1590#1:1906,2\n687#1:1830\n687#1:1831,2\n693#1:1838\n693#1:1839,3\n1529#1:1862\n1529#1:1863,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001:\u0004\u00ce\u0001\u00cf\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010o\u001a\u00020pH\u0002J&\u0010q\u001a\u0004\u0018\u00010\u000b2\u0006\u0010r\u001a\u00020s2\u0008\u0010t\u001a\u0004\u0018\u00010u2\u0008\u0010v\u001a\u0004\u0018\u00010wH\u0016J\u001a\u0010x\u001a\u00020p2\u0006\u0010y\u001a\u00020\u000b2\u0008\u0010v\u001a\u0004\u0018\u00010wH\u0016J\u0010\u0010z\u001a\u00020p2\u0006\u0010{\u001a\u00020[H\u0002J\u0010\u0010|\u001a\u00020p2\u0006\u0010}\u001a\u00020\u001fH\u0002J\u0008\u0010~\u001a\u00020pH\u0002J\u0011\u0010\u007f\u001a\u00020\u001f2\u0007\u0010\u0080\u0001\u001a\u00020\u001fH\u0002J\t\u0010\u0081\u0001\u001a\u00020pH\u0002J\t\u0010\u0082\u0001\u001a\u00020pH\u0002J\t\u0010\u0083\u0001\u001a\u00020pH\u0002J\t\u0010\u0087\u0001\u001a\u00020pH\u0002J\t\u0010\u0089\u0001\u001a\u00020pH\u0002J\t\u0010\u008a\u0001\u001a\u00020pH\u0002J\u0015\u0010\u008d\u0001\u001a\u0004\u0018\u00010[2\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0002J\t\u0010\u0090\u0001\u001a\u00020pH\u0002J*\u0010\u0091\u0001\u001a\u00020p2\r\u0010\u0092\u0001\u001a\u0008\u0012\u0004\u0012\u00020[0a2\u0010\u0010\u0093\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0094\u00010aH\u0002J\u0016\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u00012\u0008\u0010\u0097\u0001\u001a\u00030\u0094\u0001H\u0002J\t\u0010\u0098\u0001\u001a\u00020pH\u0002J\u0012\u0010\u0099\u0001\u001a\u00020\u001f2\u0007\u0010\u009a\u0001\u001a\u00020[H\u0002J\u0014\u0010\u009b\u0001\u001a\u00020p2\t\u0008\u0002\u0010\u009c\u0001\u001a\u00020\tH\u0002J\t\u0010\u009d\u0001\u001a\u00020pH\u0002J\t\u0010\u009e\u0001\u001a\u00020pH\u0002J\u0012\u0010\u009f\u0001\u001a\u00020[2\u0007\u0010\u00a0\u0001\u001a\u00020bH\u0002J\t\u0010\u00a1\u0001\u001a\u00020pH\u0002J\u0012\u0010\u00a2\u0001\u001a\u00020p2\u0007\u0010\u00a3\u0001\u001a\u00020\u001fH\u0002J\t\u0010\u00a4\u0001\u001a\u00020pH\u0002J\t\u0010\u00a5\u0001\u001a\u00020pH\u0002J\t\u0010\u00a6\u0001\u001a\u00020pH\u0002J\t\u0010\u00a7\u0001\u001a\u00020pH\u0002J\t\u0010\u00a8\u0001\u001a\u00020pH\u0002J\t\u0010\u00a9\u0001\u001a\u00020pH\u0002J\u001b\u0010\u00aa\u0001\u001a\u00020p2\u0007\u0010\u00ab\u0001\u001a\u00020]2\u0007\u0010\u00ac\u0001\u001a\u00020\u001fH\u0002J\u001b\u0010\u00ad\u0001\u001a\u00020p2\u0007\u0010\u00ab\u0001\u001a\u00020]2\u0007\u0010\u00ac\u0001\u001a\u00020\u001fH\u0002J\u0013\u0010\u00ae\u0001\u001a\u00020[2\u0008\u0010\u00af\u0001\u001a\u00030\u00b0\u0001H\u0002J\t\u0010\u00b1\u0001\u001a\u00020pH\u0002J\u0013\u0010\u00b2\u0001\u001a\u00030\u00b3\u00012\u0007\u0010\u00b4\u0001\u001a\u00020\tH\u0002J\t\u0010\u00b5\u0001\u001a\u00020pH\u0002J\u0012\u0010\u00b6\u0001\u001a\u00020p2\u0007\u0010\u00b7\u0001\u001a\u00020\u001fH\u0002J\t\u0010\u00b8\u0001\u001a\u00020pH\u0002J\u0014\u0010\u00b9\u0001\u001a\u00030\u00ba\u00012\u0008\u0010\u00bb\u0001\u001a\u00030\u00bc\u0001H\u0002J\t\u0010\u00bd\u0001\u001a\u00020pH\u0002J\t\u0010\u00be\u0001\u001a\u00020pH\u0002J\t\u0010\u00bf\u0001\u001a\u00020pH\u0002J\t\u0010\u00c2\u0001\u001a\u00020pH\u0002J\t\u0010\u00c3\u0001\u001a\u00020pH\u0002J\u0012\u0010\u00c4\u0001\u001a\u00020p2\u0007\u0010\u00c5\u0001\u001a\u00020\tH\u0002J\t\u0010\u00c6\u0001\u001a\u00020[H\u0002J\t\u0010\u00c7\u0001\u001a\u00020pH\u0002J\t\u0010\u00c8\u0001\u001a\u00020pH\u0002J\t\u0010\u00c9\u0001\u001a\u00020pH\u0002J\t\u0010\u00ca\u0001\u001a\u00020pH\u0002J\t\u0010\u00cb\u0001\u001a\u00020pH\u0002J\u0012\u0010\u00cc\u0001\u001a\u00020p2\u0007\u0010\u00cd\u0001\u001a\u00020[H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0018\u00010\u001cR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001f0\u001ej\u0008\u0012\u0004\u0012\u00020\u001f` X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010J\u001a\u0008\u0012\u0004\u0012\u00020L0KX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u001f0RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010Z\u001a\u0012\u0012\u0004\u0012\u00020[0\u001ej\u0008\u0012\u0004\u0012\u00020[` X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\\\u001a\u0004\u0018\u00010]X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010^\u001a\u0004\u0018\u00010_X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010`\u001a\u0008\u0012\u0004\u0012\u00020b0aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u0004\u0018\u00010[X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010d\u001a\u0004\u0018\u00010[X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010e\u001a\u00020[X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010f\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010g\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010h\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010i\u001a\u00020j8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008m\u0010n\u001a\u0004\u0008k\u0010lR\u001f\u0010\u0084\u0001\u001a\u0012\u0012\r\u0012\u000b \u0086\u0001*\u0004\u0018\u00010[0[0\u0085\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0088\u0001\u001a\u0012\u0012\r\u0012\u000b \u0086\u0001*\u0004\u0018\u00010[0[0\u0085\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R-\u0010\u008b\u0001\u001a \u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020[ \u0086\u0001*\u000b\u0012\u0004\u0012\u00020[\u0018\u00010\u008c\u00010\u008c\u00010\u0085\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u00c0\u0001\u001a\u000f\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u00020\u001f0\u00c1\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00d0\u0001"
    }
    d2 = {
        "Lcom/jichi/ob/ui/MergeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "prefs",
        "Lcom/jichi/ob/util/PrefsManager;",
        "source",
        "Lcom/jichi/ob/model/DataSource;",
        "localMode",
        "",
        "stepSource",
        "Landroid/view/View;",
        "stepSelect",
        "stepPreview",
        "stepResult",
        "mergeTitle",
        "Landroid/widget/TextView;",
        "mergeStepHint",
        "gridMergeSource",
        "Landroid/widget/GridLayout;",
        "btnMergeNext",
        "Lcom/google/android/material/button/MaterialButton;",
        "rvMergeList",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "tvMergeHint",
        "tvMergeSelected",
        "btnDoMerge",
        "mergeAdapter",
        "Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;",
        "selectedIndexes",
        "Ljava/util/LinkedHashSet;",
        "",
        "Lkotlin/collections/LinkedHashSet;",
        "rangeMode",
        "rangeAnchor",
        "previewTrack",
        "Lcom/jichi/ob/ui/TrackPreviewView;",
        "categoryTabRow",
        "Landroid/widget/LinearLayout;",
        "bgPickerRow",
        "Landroid/widget/HorizontalScrollView;",
        "bgChipRow",
        "comboPanel",
        "gridMergeStats",
        "btnSaveMerge",
        "btnExportGpx",
        "btnExportFit",
        "btnExportSticker",
        "btnStickerStyle",
        "btnSticker3d",
        "btnStickerColor",
        "btnStickerTextColor",
        "btnStickerItems",
        "btnStickerPos",
        "btnStickerGlow",
        "btnSticker3dBand",
        "btnSticker3dMode",
        "btnSticker3dReset",
        "btnStickerTransparent",
        "btnStickerWidth",
        "btnStickerDataLayer",
        "btnStickerWatermark",
        "btnStickerBadge",
        "btnStickerTrack",
        "btnStickerBrand",
        "btnStickerSummary",
        "btnStickerPhoto",
        "stickerTemplateName",
        "stickerCardTitle",
        "stickerCardPage",
        "templateIdx",
        "comboOverride",
        "comboPanelOpen",
        "badgeOn",
        "photoBgs",
        "",
        "Lcom/jichi/ob/merge/StickerCore$StickerBg;",
        "stickerStyle",
        "sticker3d",
        "stickerLineMode",
        "stickerTextMode",
        "stickerItems",
        "",
        "stickerPos",
        "tvMergeResultTitle",
        "tvMergeResultFile",
        "tvMergeResultPath",
        "gridMergeUpload",
        "btnUploadMerge",
        "btnMergeDone",
        "selectedUploadTags",
        "",
        "mergedResult",
        "Lcom/jichi/ob/merge/TrackMerger$MergedResult;",
        "savedFile",
        "Ljava/io/File;",
        "allRecords",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "fromDate",
        "toDate",
        "lastErr",
        "pageSkip",
        "listHasMore",
        "pageLoading",
        "dp",
        "",
        "getDp",
        "()F",
        "dp$delegate",
        "Lkotlin/Lazy;",
        "editSummaryStats",
        "",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "sizeCardForAspect",
        "a",
        "showStep",
        "step",
        "onBack",
        "color",
        "id",
        "setupSourceGrid",
        "showLocalSourceChoices",
        "showDownloadedFilesDialog",
        "photoPicker",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "pickStickerPhoto",
        "logoPicker",
        "pickStickerLogo",
        "showBrandDialog",
        "filePicker",
        "",
        "queryDisplayName",
        "uri",
        "Landroid/net/Uri;",
        "launchFilePicker",
        "processLocalFiles",
        "names",
        "bytesList",
        "",
        "parseBytes",
        "Lcom/jichi/ob/ui/MergeFragment$ParseResult;",
        "bytes",
        "refreshSourceSelection",
        "platformColor",
        "tag",
        "loadActivities",
        "append",
        "pickDateFilter",
        "refreshDateFilterViews",
        "dayOf",
        "rec",
        "applyDateFilter",
        "onItemClick",
        "pos",
        "updateRangeBtn",
        "selectToday",
        "toggleRangeMode",
        "clearSelection",
        "refreshSelectionHint",
        "doMerge",
        "showPreview",
        "result",
        "mergedCount",
        "buildStats",
        "formatDuration",
        "sec",
        "",
        "syncPreviewParams",
        "chipBg",
        "Landroid/graphics/drawable/GradientDrawable;",
        "selected",
        "buildCategoryTabs",
        "selectTemplate",
        "idx",
        "updateBadgeVisibility",
        "trackLabel",
        "",
        "t",
        "Lcom/jichi/ob/merge/StickerCore$StickerTrack;",
        "openCombo",
        "updateCategoryTabs",
        "refreshStickerChips",
        "bgSwatches",
        "",
        "buildBgChips",
        "saveMerge",
        "exportMerge",
        "exportFit",
        "mergeFileName",
        "pickStickerItems",
        "showDataEditDialog",
        "exportSticker",
        "setupUploadGrid",
        "uploadMerge",
        "toast",
        "msg",
        "ParseResult",
        "MergeAdapter",
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
.field private allRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private badgeOn:Z

.field private bgChipRow:Landroid/widget/LinearLayout;

.field private bgPickerRow:Landroid/widget/HorizontalScrollView;

.field private final bgSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jichi/ob/merge/StickerCore$StickerBg;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private btnDoMerge:Lcom/google/android/material/button/MaterialButton;

.field private btnExportFit:Landroid/widget/TextView;

.field private btnExportGpx:Landroid/widget/TextView;

.field private btnExportSticker:Landroid/widget/TextView;

.field private btnMergeDone:Landroid/widget/TextView;

.field private btnMergeNext:Lcom/google/android/material/button/MaterialButton;

.field private btnSaveMerge:Lcom/google/android/material/button/MaterialButton;

.field private btnSticker3d:Landroid/widget/TextView;

.field private btnSticker3dBand:Landroid/widget/TextView;

.field private btnSticker3dMode:Landroid/widget/TextView;

.field private btnSticker3dReset:Landroid/widget/TextView;

.field private btnStickerBadge:Landroid/widget/TextView;

.field private btnStickerBrand:Landroid/widget/TextView;

.field private btnStickerColor:Landroid/widget/TextView;

.field private btnStickerDataLayer:Landroid/widget/TextView;

.field private btnStickerGlow:Landroid/widget/TextView;

.field private btnStickerItems:Landroid/widget/TextView;

.field private btnStickerPhoto:Landroid/widget/TextView;

.field private btnStickerPos:Landroid/widget/TextView;

.field private btnStickerStyle:Landroid/widget/TextView;

.field private btnStickerSummary:Landroid/widget/TextView;

.field private btnStickerTextColor:Landroid/widget/TextView;

.field private btnStickerTrack:Landroid/widget/TextView;

.field private btnStickerTransparent:Landroid/widget/TextView;

.field private btnStickerWatermark:Landroid/widget/TextView;

.field private btnStickerWidth:Landroid/widget/TextView;

.field private btnUploadMerge:Lcom/google/android/material/button/MaterialButton;

.field private categoryTabRow:Landroid/widget/LinearLayout;

.field private comboOverride:Z

.field private comboPanel:Landroid/widget/LinearLayout;

.field private comboPanelOpen:Z

.field private final dp$delegate:Lkotlin/Lazy;

.field private final filePicker:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fromDate:Ljava/lang/String;

.field private gridMergeSource:Landroid/widget/GridLayout;

.field private gridMergeStats:Landroid/widget/GridLayout;

.field private gridMergeUpload:Landroid/widget/GridLayout;

.field private lastErr:Ljava/lang/String;

.field private listHasMore:Z

.field private localMode:Z

.field private final logoPicker:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

.field private mergeStepHint:Landroid/widget/TextView;

.field private mergeTitle:Landroid/widget/TextView;

.field private mergedResult:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

.field private pageLoading:Z

.field private pageSkip:I

.field private final photoBgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jichi/ob/merge/StickerCore$StickerBg;",
            ">;"
        }
    .end annotation
.end field

.field private final photoPicker:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Lcom/jichi/ob/util/PrefsManager;

.field private previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

.field private rangeAnchor:I

.field private rangeMode:Z

.field private rvMergeList:Landroidx/recyclerview/widget/RecyclerView;

.field private savedFile:Ljava/io/File;

.field private final selectedIndexes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedUploadTags:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/jichi/ob/model/DataSource;

.field private stepPreview:Landroid/view/View;

.field private stepResult:Landroid/view/View;

.field private stepSelect:Landroid/view/View;

.field private stepSource:Landroid/view/View;

.field private sticker3d:Z

.field private stickerCardPage:Landroid/widget/TextView;

.field private stickerCardTitle:Landroid/widget/TextView;

.field private stickerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stickerLineMode:I

.field private stickerPos:I

.field private stickerStyle:I

.field private stickerTemplateName:Landroid/widget/TextView;

.field private stickerTextMode:I

.field private templateIdx:I

.field private toDate:Ljava/lang/String;

.field private tvMergeHint:Landroid/widget/TextView;

.field private tvMergeResultFile:Landroid/widget/TextView;

.field private tvMergeResultPath:Landroid/widget/TextView;

.field private tvMergeResultTitle:Landroid/widget/TextView;

.field private tvMergeSelected:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-8QVo-g1BYkdkhCIfXYHZVg8RDA(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/PlatformButton;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/MergeFragment;->setupUploadGrid$lambda$152$lambda$151(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/PlatformButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-BIRP-OaGfmP6DQrMO2IaO1oXk4(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$31(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0fUXD_e1LcgtAUZp7MZRD-DOfSc(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$63(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1YdSx3JBQMTUaTB79IPNOd0a85o(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$35(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1qyH2yFio8UYgVJs5hdPnz611Ds(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildCategoryTabs$lambda$120$lambda$119(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Ew3GM13A7cACZw1JClZnIvJa_w(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$19(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2IfWtd9f-PPM-JlLjHbpGccruGc(Lcom/jichi/ob/ui/MergeFragment;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$37(Lcom/jichi/ob/ui/MergeFragment;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4ZUqodjKqUmt-67Ro1KXMuKWpns(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;[ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->pickStickerItems$lambda$133(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;[ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$58rQnZXDa3Gfe6_XDRzxPB_uILE(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$11$lambda$10(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5gyUWmc9GsGKtWuysyNORGQahSo(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$48(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5mHeoR3L1sB1Jo0Bsu0_krU4UUI(Lcom/jichi/ob/ui/MergeFragment;)F
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/MergeFragment;->dp_delegate$lambda$0(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$66h-wMyMLMElVMaw_8pBEJHK1Ug(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/MergeFragment;->showDataEditDialog$lambda$142(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6z-zQn4P5UJ-nXFUJ0z7cjVfifs(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$47(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7_VP3vGUFUHHRUGimVFWWy97Vlg(Lcom/jichi/ob/ui/MergeFragment;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->exportSticker$lambda$146$lambda$145(Lcom/jichi/ob/ui/MergeFragment;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7po-Ss4sbWSwBQvJHdj8dEV4XrQ(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$20(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7rma6hUJ4EJxqpQemWg4zRw7JZo(ILandroid/view/View;Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/MergeFragment;->sizeCardForAspect$trySize$lambda$72$lambda$70(ILandroid/view/View;Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9nau0xWx16N-qYyL_XfYTzGyav8(Lcom/jichi/ob/ui/MergeFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/MergeFragment;->showLocalSourceChoices$lambda$88(Lcom/jichi/ob/ui/MergeFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AJSzhBi3jaQ8u9XZKSz4bVU8RbQ(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$42(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EHqf_EWrFEMhAESssyUFv6SvWZg(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->logoPicker$lambda$99(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EkYNrqSWruoznBNfgrb6scX6cvY(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$45(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FZqDQqYjFxie2_4r4SuX1uwpb0w(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$49(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FsoBuPBgl90eZhdk0_EBNh2lol4(Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->showDataEditDialog$lambda$143(Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FxUN8R93C7Icijdv6rOUJdAFOho(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$39(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBx5eiAaUAAYF-OLXiD7RaidHIs(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$64(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGAmaZpDZD8xE6U1hYqu1ctlmnU(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$62(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HNPHg6mIqlA2Ghh9SsjQFWmm-Oc(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/StickerCore$StickerBg;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildBgChips$lambda$128$lambda$124$lambda$123(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/StickerCore$StickerBg;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IJxdP3VmO5oHK8MvdQep2YUf0qU(Lcom/jichi/ob/ui/MergeFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/MergeFragment;->showLocalSourceChoices$lambda$87(Lcom/jichi/ob/ui/MergeFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$It8MySJ8mx4gqNxEt8yKcLjJDZg(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$41(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JCquFVpehcR3Szg6qKjyusk0oqg(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->setupSourceGrid$lambda$81$lambda$80(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JMBTQdOnra_W9OGwX4Z51B7RLhY(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$15(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$My3uxvsT5n3ffu6pWnGmPhmUiuo(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$36(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NNFl0s5OSGxIhEckM0jIUfgohr8(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$67(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NnmAijniZzCkE_1svF3Sb99eW3U(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;[ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->showDownloadedFilesDialog$lambda$97(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;[ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$O88VlWpZpHijFQ1DOVu6OY9BbSE(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$66(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OFCRVglL6IE7XoBPPF80Lm97uqw(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/jichi/ob/ui/MergeFragment;->editSummaryStats$lambda$9(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OQw2ZSmx5CnjKLpdfkx4HE-tOBk(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->showLocalSourceChoices$addBtn$lambda$86(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PiMNuvw1h_ajvYZsMsfgBmfQUmk(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$40(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QWNMSkqzdT3ODzi5tXHEcPUz3Zo(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->filePicker$lambda$102(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R4svKNZRbHNiSOb7fRzlm59WCk0(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$13(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RgtACNqwOZOhT_GNl_a1a2oyN-s(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$53(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SSnzuCQt2eEgeDxWAsKft0Y2iM4(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$29(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sta9iozXqK6kkIixrMnkqe5SpXY(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$52(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ToNMX0gs6L-qZFkgcI2kw3fwPYU(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$18(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TuAQQJ7Vsp7VP_EuiiwNPzbG9sI(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$65(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEQN1bAD0d7imXKPmgjQ4NEFpG4(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$54(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VqnI73efgJSyoTdMvh1O8FXfzJk(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$46(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W05UBqX-Km6Rkqqto4sg0ofWpCw(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$57(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WzpTZNJInxMFEw8GcHraNghzgiM(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$58(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y51ywbSF2BUtRZzk0KRKmrwl484(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$59(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z173U_T7RIZp5rN2njJbkzyrfkM(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$23(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1pLh0NdZE97a_paaFtv37qq6dc(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$51(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9ylD2A8A7GodNl7g0LMbZ_rXuo(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$14(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a71xdlXrv-wNCWWujLoQ9sMLbjs(Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->showBrandDialog$lambda$101(Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMCCqi3tpd24dJfyvcPnskvWJjM(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$24(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqLDF8rYaHQXy1UrtuEYwpZBwcw(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$44(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bW7gNVZLE6tU2EGZ9qmRQDNPAvg(Landroid/view/View;ILjava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/MergeFragment;->sizeCardForAspect$trySize$lambda$72(Landroid/view/View;ILjava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bX8Sgbctqpv-zxhhGZ3mUYoNE-4(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->pickDateFilter$lambda$106(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$cVDdor6wMQQjUSE8zBmaEDtJ7lA(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$61(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d_K6tReSrav82hNAIbvUSZMpvtw([ZLandroid/content/DialogInterface;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/MergeFragment;->pickStickerItems$lambda$130([ZLandroid/content/DialogInterface;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgKiB9eR2Gx_y-tSK8X-oaPundc(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$drQNZ6wuJAHIUtxEHWqoOg-135k(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$50(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eHTw-Yh-H5jGGqwHrgSK0VO9j1k(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$17(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hHf6HHgmLfHgV89fRW-yoIFOVUU(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$22(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iAmSYKwevUjK8xLvB5ge1tGIQZI(Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/jichi/ob/ui/MergeFragment;->pickDateFilter$lambda$106$lambda$105(Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$iOA2qI3VsNhRRhQhi_KBoBNbT_A(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$32(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lH9wsSFF9N3sNckXar-AGwHhniY(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$34(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oMNhXNRg_jVSvcGCQkglY1WPMxQ(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$26(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oT0Fy-k7Cyzcx6nU0HXGVrwdPw4(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$27(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8aCZkhJnVpD07eWnKddWIQoQlY(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$43(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pEil0SLDCcsMBJPO0r0dnfewRaI(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$16(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qm4Z0fH1o-Zp9zaGJvB7tv2RBjU(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$55(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$quAetflAIQhTeymVrZi5DJbVQ7Q(Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/MergeFragment;->sizeCardForAspect$trySize$lambda$72$lambda$71(Lcom/jichi/ob/ui/MergeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rLROUs1lbzEOF7ktCY8OAnb2lyw(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$33(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2nx3ICziKlSMP1RcZaQ05lIxU8(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$25(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tHHih06Dr7W1yVliTqmTwTOOZuk(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->setupSourceGrid$lambda$78$lambda$77(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tkceJNWU3QXaq_cZgiNhmrgRXvk(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$60(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tqSqXCmxDubFNSZd22AELlzDp04(Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/MergeFragment;->exportSticker$lambda$146(Lcom/jichi/ob/ui/MergeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uarkbSW01OxDhwp0vMANJQLYStU(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$56(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wa6eEaXOZufar0GXUsB1YbRXITI(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$21(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wjt4sjJkuGaRgTSlVV2v7dFUfpw(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$lambda$38(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wy5cCQARCFwxMBWNM0riPUcCXG4([ZLandroid/content/DialogInterface;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/MergeFragment;->showDownloadedFilesDialog$lambda$92([ZLandroid/content/DialogInterface;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ylbz96bP7ERonSBXdfE0WV4I9pg(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->photoPicker$lambda$98(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->badgeOn:Z

    const/4 v2, 0x3

    .line 124
    new-array v3, v2, [Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_OVERLAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 125
    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerBg;->FROSTED:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    aput-object v4, v3, v1

    .line 126
    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_SPLIT:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 123
    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->photoBgs:Ljava/util/Set;

    .line 131
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->sticker3d:Z

    .line 132
    iput v6, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerLineMode:I

    .line 134
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFAULT()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerItems:Ljava/util/List;

    .line 144
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedUploadTags:Ljava/util/LinkedHashSet;

    .line 151
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->allRecords:Ljava/util/List;

    .line 154
    const-string v3, ""

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->lastErr:Ljava/lang/String;

    .line 161
    new-instance v3, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda72;

    invoke-direct {v3, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda72;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->dp$delegate:Lkotlin/Lazy;

    .line 712
    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v3}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    check-cast v3, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v4, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda73;

    invoke-direct {v4, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda73;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p0, v3, v4}, Lcom/jichi/ob/ui/MergeFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    const-string v4, "registerForActivityResult(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->photoPicker:Landroidx/activity/result/ActivityResultLauncher;

    .line 745
    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v3}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    check-cast v3, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v7, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda74;

    invoke-direct {v7, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda74;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p0, v3, v7}, Lcom/jichi/ob/ui/MergeFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->logoPicker:Landroidx/activity/result/ActivityResultLauncher;

    .line 814
    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;

    invoke-direct {v3}, Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;-><init>()V

    check-cast v3, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v7, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda75;

    invoke-direct {v7, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda75;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p0, v3, v7}, Lcom/jichi/ob/ui/MergeFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->filePicker:Landroidx/activity/result/ActivityResultLauncher;

    const/16 v3, 0x17

    .line 1414
    new-array v3, v3, [Lkotlin/Pair;

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerBg;->DEEP_SPACE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v7, -0xf4f2e4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerBg;->CHECKER:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v5, -0xefefec

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1415
    sget-object v1, Lcom/jichi/ob/merge/StickerCore$StickerBg;->NEON:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v4, -0xf5f8ec

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v6

    sget-object v1, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PURE_BLACK:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v4, -0xf7f7f6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v2

    .line 1416
    sget-object v1, Lcom/jichi/ob/merge/StickerCore$StickerBg;->MINIMAL_WHITE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v3, v1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->CREAM:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0x90e1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v3, v1

    .line 1417
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->LIGHT_GRAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0x13100e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v3, v1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->WARM_POSTER:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const/16 v1, -0x1e3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v3, v1

    .line 1418
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->MAP_GRID:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0xe7dcc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v3, v1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->SATELLITE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0xf3e9da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v3, v1

    .line 1419
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->LIGHT_MAP:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0x1f1914

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v3, v1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->CONTOUR:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0x71c38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v3, v1

    .line 1420
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->HEAT_BG:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0xd5f2f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, v3, v1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ORANGE_BAND:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0xe3e5e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v3, v1

    .line 1421
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ICE_BAND:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0xedc3ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v3, v1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->LIGHT_TRAIL:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0xf7f4ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v3, v1

    .line 1422
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->DUAL_DARK:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v1, -0xf2f0e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v3, v2

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->POSTER_ORANGE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v2, -0x3b3fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v3, v2

    .line 1423
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->RETRO_PURPLE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v2, -0xd5efb0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v3, v2

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ANNUAL_DARK:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v2, -0xe9dfc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v3, v2

    .line 1424
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_OVERLAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v2, -0x775f48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v3, v2

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->FROSTED:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const v2, -0x362d24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v3, v2

    .line 1425
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_SPLIT:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, v3, v1

    .line 1413
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->bgSwatches:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$applyDateFilter(Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->applyDateFilter()V

    return-void
.end method

.method public static final synthetic access$color(Lcom/jichi/ob/ui/MergeFragment;I)I
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$formatDuration(Lcom/jichi/ob/ui/MergeFragment;J)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAllRecords$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->allRecords:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getBtnMergeNext$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnMergeNext:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public static final synthetic access$getBtnSaveMerge$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSaveMerge:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public static final synthetic access$getBtnUploadMerge$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnUploadMerge:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public static final synthetic access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFromDate$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->fromDate:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getListHasMore$p(Lcom/jichi/ob/ui/MergeFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/jichi/ob/ui/MergeFragment;->listHasMore:Z

    return p0
.end method

.method public static final synthetic access$getPageSkip$p(Lcom/jichi/ob/ui/MergeFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/jichi/ob/ui/MergeFragment;->pageSkip:I

    return p0
.end method

.method public static final synthetic access$getPhotoBgs$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/Set;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->photoBgs:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/util/PrefsManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    return-object p0
.end method

.method public static final synthetic access$getPreviewTrack$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/ui/TrackPreviewView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    return-object p0
.end method

.method public static final synthetic access$getRangeAnchor$p(Lcom/jichi/ob/ui/MergeFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    return p0
.end method

.method public static final synthetic access$getRangeMode$p(Lcom/jichi/ob/ui/MergeFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    return p0
.end method

.method public static final synthetic access$getSelectedIndexes$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public static final synthetic access$getSelectedUploadTags$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedUploadTags:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/model/DataSource;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->source:Lcom/jichi/ob/model/DataSource;

    return-object p0
.end method

.method public static final synthetic access$getToDate$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->toDate:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTvMergeHint$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeHint:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvMergeResultTitle$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeResultTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$onItemClick(Lcom/jichi/ob/ui/MergeFragment;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->onItemClick(I)V

    return-void
.end method

.method public static final synthetic access$parseBytes(Lcom/jichi/ob/ui/MergeFragment;[B)Lcom/jichi/ob/ui/MergeFragment$ParseResult;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->parseBytes([B)Lcom/jichi/ob/ui/MergeFragment$ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$platformColor(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)I
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->platformColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$processLocalFiles(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->processLocalFiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$queryDisplayName(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->queryDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshDateFilterViews(Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshDateFilterViews()V

    return-void
.end method

.method public static final synthetic access$refreshStickerChips(Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method public static final synthetic access$setAllRecords$p(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->allRecords:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setComboOverride$p(Lcom/jichi/ob/ui/MergeFragment;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    return-void
.end method

.method public static final synthetic access$setListHasMore$p(Lcom/jichi/ob/ui/MergeFragment;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->listHasMore:Z

    return-void
.end method

.method public static final synthetic access$setLocalMode$p(Lcom/jichi/ob/ui/MergeFragment;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->localMode:Z

    return-void
.end method

.method public static final synthetic access$setMergedResult$p(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/TrackMerger$MergedResult;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->mergedResult:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    return-void
.end method

.method public static final synthetic access$setPageLoading$p(Lcom/jichi/ob/ui/MergeFragment;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->pageLoading:Z

    return-void
.end method

.method public static final synthetic access$setPageSkip$p(Lcom/jichi/ob/ui/MergeFragment;I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/jichi/ob/ui/MergeFragment;->pageSkip:I

    return-void
.end method

.method public static final synthetic access$setRangeAnchor$p(Lcom/jichi/ob/ui/MergeFragment;I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    return-void
.end method

.method public static final synthetic access$setRangeMode$p(Lcom/jichi/ob/ui/MergeFragment;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    return-void
.end method

.method public static final synthetic access$showPreview(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/TrackMerger$MergedResult;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->showPreview(Lcom/jichi/ob/merge/TrackMerger$MergedResult;I)V

    return-void
.end method

.method public static final synthetic access$showStep(Lcom/jichi/ob/ui/MergeFragment;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->showStep(I)V

    return-void
.end method

.method public static final synthetic access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private final applyDateFilter()V
    .locals 7

    .line 1053
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->source:Lcom/jichi/ob/model/DataSource;

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->allRecords:Ljava/util/List;

    .line 1055
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->fromDate:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 1842
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1843
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/jichi/ob/model/ActivityRecord;

    .line 1055
    invoke-direct {p0, v4}, Lcom/jichi/ob/ui/MergeFragment;->dayOf(Lcom/jichi/ob/model/ActivityRecord;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->fromDate:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->toDate:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2

    .line 1843
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1844
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 1056
    :goto_1
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeHint:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-nez v1, :cond_4

    const-string/jumbo v1, "tvMergeHint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_4
    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment;->fromDate:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 1057
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5df2\u52a0\u8f7d\u6700\u8fd1 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u6761 \u00b7 \u70b9\u300c\ud83d\udcc5 \u65e5\u671f\u8303\u56f4\u300d\u53ef\u68c0\u7d22\u66f4\u65e9\u8bb0\u5f55\uff08\u5408\u5e76\u901a\u5e38\u8de8\u597d\u51e0\u5929\uff09"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_2

    .line 1059
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jichi/ob/ui/MergeFragment;->toDate:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u5171 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u6761"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1056
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "rvMergeList"

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    .line 1061
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeSelected:Landroid/widget/TextView;

    if-nez v0, :cond_6

    const-string/jumbo v0, "tvMergeSelected"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    const-string/jumbo v5, "\u5df2\u9009 0 \u6761"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    invoke-direct {v0, p0, v2}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;-><init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    .line 1063
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rvMergeList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1064
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnDoMerge:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "btnDoMerge"

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_8
    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1065
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnDoMerge:Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v3, v0

    :goto_3
    const-string/jumbo v0, "\u5408\u5e76"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1068
    :cond_a
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iput-boolean v4, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    .line 1069
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    invoke-direct {v0, p0, v2}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;-><init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    .line 1070
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rvMergeList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object v3, v0

    :goto_4
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1071
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshSelectionHint()V

    return-void
.end method

.method private final buildBgChips()V
    .locals 14

    .line 1429
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->bgChipRow:Landroid/widget/LinearLayout;

    const-string v1, "bgChipRow"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1430
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1431
    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerBg;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1856
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/merge/StickerCore$StickerBg;

    .line 1432
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 1433
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x11

    .line 1434
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v8, 0x6

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 1435
    invoke-virtual {v5, v8, v9, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1436
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x7

    int-to-float v10, v10

    mul-float/2addr v10, v0

    float-to-int v10, v10

    .line 1437
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1436
    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1439
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1440
    new-instance v8, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda52;

    invoke-direct {v8, p0, v4}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda52;-><init>(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/StickerCore$StickerBg;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    new-instance v8, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1448
    iget-object v10, p0, Lcom/jichi/ob/ui/MergeFragment;->bgSwatches:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    :cond_1
    const v10, -0xf4f2e4

    .line 1449
    :goto_1
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1450
    invoke-virtual {v11, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v9, 0xa

    int-to-float v9, v9

    mul-float/2addr v9, v0

    .line 1451
    invoke-virtual {v11, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1452
    sget-object v9, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_OVERLAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    const/4 v12, 0x2

    if-ne v4, v9, :cond_2

    int-to-float v9, v12

    mul-float/2addr v9, v0

    float-to-int v9, v9

    const v13, -0x624b38

    invoke-virtual {v11, v9, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1453
    :goto_2
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1454
    sget-object v9, Lcom/jichi/ob/merge/StickerCore$StickerBg;->MINIMAL_WHITE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-eq v4, v9, :cond_3

    sget-object v9, Lcom/jichi/ob/merge/StickerCore$StickerBg;->CREAM:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-eq v4, v9, :cond_3

    .line 1455
    sget-object v9, Lcom/jichi/ob/merge/StickerCore$StickerBg;->LIGHT_GRAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-eq v4, v9, :cond_3

    sget-object v9, Lcom/jichi/ob/merge/StickerCore$StickerBg;->WARM_POSTER:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-eq v4, v9, :cond_3

    .line 1456
    sget-object v9, Lcom/jichi/ob/merge/StickerCore$StickerBg;->LIGHT_MAP:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-eq v4, v9, :cond_3

    sget-object v9, Lcom/jichi/ob/merge/StickerCore$StickerBg;->CONTOUR:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-eq v4, v9, :cond_3

    sget-object v9, Lcom/jichi/ob/merge/StickerCore$StickerBg;->FROSTED:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-ne v4, v9, :cond_4

    :cond_3
    int-to-float v9, v12

    mul-float/2addr v9, v0

    float-to-int v9, v9

    const v10, -0x333334

    .line 1457
    invoke-virtual {v11, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1449
    :cond_4
    check-cast v11, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x38

    int-to-float v10, v10

    mul-float/2addr v10, v0

    float-to-int v10, v10

    const/16 v11, 0x28

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1462
    invoke-virtual {v4}, Lcom/jichi/ob/merge/StickerCore$StickerBg;->getKey()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41100000    # 9.0f

    .line 1463
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1464
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1465
    iget-object v6, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v6, :cond_5

    const-string v6, "previewTrack"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_5
    invoke-virtual {v6}, Lcom/jichi/ob/ui/TrackPreviewView;->getBgType()Lcom/jichi/ob/merge/StickerCore$StickerBg;

    move-result-object v6

    if-ne v4, v6, :cond_6

    sget v4, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_3

    :cond_6
    sget v4, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_3
    invoke-direct {p0, v4}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1466
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1468
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1469
    check-cast v9, Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1470
    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment;->bgChipRow:Landroid/widget/LinearLayout;

    if-nez v4, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7
    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private static final buildBgChips$lambda$128$lambda$124$lambda$123(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/StickerCore$StickerBg;Landroid/view/View;)V
    .locals 1

    .line 1441
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "previewTrack"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setBgType(Lcom/jichi/ob/merge/StickerCore$StickerBg;)V

    const/4 p1, 0x1

    .line 1442
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 1443
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    .line 1444
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->bgPickerRow:Landroid/widget/HorizontalScrollView;

    if-nez p0, :cond_1

    const-string p0, "bgPickerRow"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method private final buildCategoryTabs()V
    .locals 11

    .line 1277
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->categoryTabRow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "categoryTabRow"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1278
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getCATEGORIES()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1854
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v4, Ljava/lang/String;

    .line 1279
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1280
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41400000    # 12.0f

    .line 1281
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x11

    .line 1282
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v6, 0x10

    int-to-float v6, v6

    .line 1283
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    const/16 v8, 0x8

    int-to-float v8, v8

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v10

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    invoke-virtual {v3, v7, v9, v6, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1284
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1285
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v7

    mul-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1284
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1288
    new-instance v6, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda56;

    invoke-direct {v6, p0, v4}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda56;-><init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1292
    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment;->categoryTabRow:Landroid/widget/LinearLayout;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v3, v5

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static final buildCategoryTabs$lambda$120$lambda$119(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 1289
    sget-object p2, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object p2

    .line 1888
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1889
    check-cast v1, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    .line 1289
    invoke-virtual {v1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 1290
    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->selectTemplate(I)V

    :cond_2
    return-void
.end method

.method private final buildStats(Lcom/jichi/ob/merge/TrackMerger$MergedResult;I)V
    .locals 4

    .line 1227
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeStats:Landroid/widget/GridLayout;

    if-nez v0, :cond_0

    const-string v0, "gridMergeStats"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 1242
    sget-object v0, Lcom/jichi/ob/merge/TrackMerger;->INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getSport()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jichi/ob/merge/TrackMerger;->sportName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "\u8dd1\u6b65"

    goto :goto_0

    :cond_1
    const-string v1, "hiking"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u5f92\u6b65"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\u9a91\u884c"

    :goto_0
    const-string/jumbo v1, "\u8fd0\u52a8\u7c7b\u578b"

    invoke-static {p0, v1, v0}, Lcom/jichi/ob/ui/MergeFragment;->buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-lt p2, v0, :cond_3

    .line 1243
    const-string/jumbo v1, "\u5408\u5e76\u6bb5\u6570"

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "\u8bb0\u5f55\u6570"

    :goto_1
    if-lt p2, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " \u6761 \u2192 1 \u6761"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    const-string p2, "1 \u6761\uff08\u672a\u5408\u5e76\uff09"

    :goto_2
    invoke-static {p0, v1, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDistanceKm()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.2f km"

    invoke-static {p2, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "\u603b\u8ddd\u79bb"

    invoke-static {p0, v2, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDurationSec()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/jichi/ob/ui/MergeFragment;->formatDuration(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "\u603b\u65f6\u957f"

    invoke-static {p0, v2, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAscentM()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.0f m"

    invoke-static {p2, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "\u7d2f\u8ba1\u722c\u5347"

    invoke-static {p0, v0, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgHr()I

    move-result p2

    const-string/jumbo v0, "\u2014"

    if-lez p2, :cond_5

    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgHr()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " bpm"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v0

    :goto_3
    const-string/jumbo v1, "\u5e73\u5747\u5fc3\u7387"

    invoke-static {p0, v1, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgCad()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgCad()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " rpm"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    move-object p2, v0

    :goto_4
    const-string/jumbo v1, "\u5e73\u5747\u8e0f\u9891"

    invoke-static {p0, v1, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgPower()I

    move-result p2

    if-lez p2, :cond_7

    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgPower()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " W"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string/jumbo p1, "\u5e73\u5747\u529f\u7387"

    invoke-static {p0, p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final buildStats$addStat(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1229
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1230
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x6

    int-to-float v2, v2

    .line 1231
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1233
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1234
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    sget p1, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1236
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1237
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    sget p2, Lcom/jichi/ob/R$color;->text_primary:I

    invoke-direct {p0, p2}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1239
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1240
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeStats:Landroid/widget/GridLayout;

    if-nez p0, :cond_0

    const-string p0, "gridMergeStats"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    check-cast v0, Landroid/view/View;

    new-instance p0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {p0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/high16 p1, -0x80000000

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v0, p0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final chipBg(Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 1269
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x10

    int-to-float v1, v1

    .line 1270
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p1, :cond_0

    const v1, -0xd47301

    goto :goto_0

    :cond_0
    const v1, -0xe0b08

    .line 1271
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-nez p1, :cond_1

    const/4 p1, 0x1

    int-to-float p1, p1

    .line 1272
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const v1, -0x1c1106

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-object v0
.end method

.method private final clearSelection()V
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshSelectionHint()V

    return-void
.end method

.method private final color(I)I
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1
.end method

.method private final dayOf(Lcom/jichi/ob/model/ActivityRecord;)Ljava/lang/String;
    .locals 1

    .line 1049
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final doMerge()V
    .locals 11

    .line 1139
    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment;->source:Lcom/jichi/ob/model/DataSource;

    if-nez v4, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1141
    :cond_1
    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->getRecords()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1845
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1848
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1849
    :cond_2
    move-object v7, v5

    check-cast v7, Lcom/jichi/ob/model/ActivityRecord;

    .line 1141
    iget-object v7, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1849
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    move v3, v6

    goto :goto_1

    .line 1852
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 1142
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u8bf7\u81f3\u5c11\u9009\u62e9 1 \u6761\u8bb0\u5f55"

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 1143
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_6

    const/4 v0, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    move v3, v2

    .line 1144
    :goto_2
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSaveMerge:Lcom/google/android/material/button/MaterialButton;

    const/4 v5, 0x0

    if-nez v0, :cond_7

    const-string v0, "btnSaveMerge"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1145
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeHint:Landroid/widget/TextView;

    if-nez v0, :cond_8

    const-string/jumbo v0, "tvMergeHint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v5, v0

    :goto_3
    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6b63\u5728\u5408\u5e76 "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u6761\u8bb0\u5f55..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string/jumbo v0, "\u6b63\u5728\u751f\u6210\u5355\u6761\u8d34\u7eb8..."

    :goto_4
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;ZLcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final dp_delegate$lambda$0(Lcom/jichi/ob/ui/MergeFragment;)F
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method private final editSummaryStats()V
    .locals 18

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x38

    const/16 v4, 0x18

    const/16 v5, 0x8

    .line 168
    invoke-virtual {v1, v3, v4, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move-object/from16 v11, p0

    .line 170
    iget-object v3, v11, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_0

    const-string v3, "previewTrack"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getSummaryStats()Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    move-result-object v3

    .line 171
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 172
    const-string/jumbo v6, "\u6b21\u6570\uff08\u5982 12\uff09"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    .line 173
    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 v8, 0x41700000    # 15.0f

    .line 174
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 175
    const-string v9, ""

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    :cond_1
    move-object v10, v9

    :cond_2
    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    .line 176
    invoke-virtual {v7, v10, v5, v10, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 178
    new-instance v12, Landroid/widget/EditText;

    invoke-direct {v12, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 179
    const-string/jumbo v13, "\u603b\u91cc\u7a0b km\uff08\u5982 126.5\uff09"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v13, 0x2002

    .line 180
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 181
    invoke-virtual {v12, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 182
    const-string v13, "format(...)"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getTotalKm()D

    move-result-wide v14

    sget-object v16, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    const-string v15, "%.1f"

    invoke-static {v4, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_4

    :cond_3
    move-object v4, v9

    :cond_4
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v12, v10, v5, v10, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    move-object v4, v9

    .line 185
    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 186
    const-string/jumbo v14, "\u603b\u65f6\u957f \u5206\u949f\uff08\u5982 458\uff09"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 188
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setTextSize(F)V

    if-eqz v3, :cond_5

    .line 189
    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getTotalSec()J

    move-result-wide v14

    const/16 v2, 0x3c

    move-object/from16 v17, v7

    int-to-long v6, v2

    div-long/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    move-object/from16 v17, v7

    :goto_0
    move-object v2, v4

    :cond_6
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v9, v10, v5, v10, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 192
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 193
    const-string/jumbo v6, "\u603b\u722c\u5347 m\uff08\u5982 1520\uff09"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    .line 194
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 195
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setTextSize(F)V

    if-eqz v3, :cond_7

    .line 196
    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getTotalAscentM()D

    move-result-wide v6

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%.0f"

    invoke-static {v3, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_8

    :cond_7
    move-object v3, v4

    :cond_8
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v2, v10, v5, v10, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 199
    move-object/from16 v7, v17

    check-cast v7, Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v3, v12

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v3, v9

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    const-string/jumbo v0, "\u5f55\u5165\u5f80\u671f\u6570\u636e"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    const-string/jumbo v3, "\u7528\u4e8e\u300c\u7d2f\u8ba1\u5bf9\u6bd4 / \u53cc\u680f / \u5e74\u5ea6\u603b\u7ed3\u300d\u6a21\u677f\u7684\u53f3\u4fa7\u7d2f\u8ba1\u6570\u636e\uff0c\u6309\u6708/\u5e74\u624b\u8f93\u5373\u53ef"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 203
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "\u4fdd\u5b58"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda53;

    move-object v10, v2

    move-object v8, v12

    move-object/from16 v7, v17

    invoke-direct/range {v6 .. v11}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda53;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "\u6e05\u9664"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final editSummaryStats$lambda$9(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V
    .locals 8

    .line 205
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v1, p0

    .line 206
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    const-wide/16 p5, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    move-wide v2, p0

    goto :goto_1

    :cond_1
    move-wide v2, p5

    .line 207
    :goto_1
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    const-wide/16 p1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, p1

    .line 208
    :goto_2
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_3

    :cond_3
    move-wide v6, p5

    .line 209
    :goto_3
    const-string p0, "previewTrack"

    const/4 p3, 0x0

    if-gtz v1, :cond_5

    cmpg-double v0, v2, p5

    if-gtz v0, :cond_5

    cmp-long p1, v4, p1

    if-gtz p1, :cond_5

    cmpg-double p1, v6, p5

    if-gtz p1, :cond_5

    .line 210
    iget-object p1, p4, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_4

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_4
    invoke-virtual {p1, p3}, Lcom/jichi/ob/ui/TrackPreviewView;->setSummaryStats(Lcom/jichi/ob/merge/StickerCore$SummaryStats;)V

    .line 211
    const-string/jumbo p0, "\u5df2\u6e05\u9664\u5f80\u671f\u6570\u636e"

    invoke-direct {p4, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    goto :goto_5

    .line 213
    :cond_5
    iget-object p1, p4, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_6

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object p3, p1

    :goto_4
    new-instance v0, Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    const/16 p0, 0x3c

    int-to-long p0, p0

    mul-long/2addr v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;-><init>(IDJD)V

    invoke-virtual {p3, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setSummaryStats(Lcom/jichi/ob/merge/StickerCore$SummaryStats;)V

    .line 214
    const-string/jumbo p0, "\u5f80\u671f\u6570\u636e\u5df2\u4fdd\u5b58"

    invoke-direct {p4, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    :goto_5
    const/4 p0, 0x1

    .line 216
    iput-boolean p0, p4, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 217
    invoke-direct {p4}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private final exportMerge(Z)V
    .locals 23

    move-object/from16 v1, p0

    const-string/jumbo v0, "\u5df2\u5bfc\u51fa\uff1a"

    const-string v2, "merged-"

    .line 1497
    iget-object v3, v1, Lcom/jichi/ob/ui/MergeFragment;->mergedResult:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    if-nez v3, :cond_0

    return-void

    .line 1498
    :cond_0
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/jichi/ob/MainActivity;->Companion:Lcom/jichi/ob/MainActivity$Companion;

    invoke-virtual {v5}, Lcom/jichi/ob/MainActivity$Companion;->getSAVE_DIR()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "\u5408\u5e76"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1500
    :cond_1
    invoke-direct {v1}, Lcom/jichi/ob/ui/MergeFragment;->mergeFileName()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_2

    .line 1503
    :try_start_0
    sget-object v6, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getPoints()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getSport()I

    move-result v8

    invoke-virtual {v3}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDistanceKm()D

    move-result-wide v9

    const/16 v2, 0x3e8

    int-to-double v11, v2

    mul-double v15, v9, v11

    invoke-virtual {v3}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAscentM()D

    move-result-wide v17

    invoke-virtual {v3}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getDescentM()D

    move-result-wide v19

    const/16 v21, 0x3c

    const/16 v22, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v22}, Lcom/jichi/ob/GpxToFitConverter;->convertPoints$default(Lcom/jichi/ob/GpxToFitConverter;Ljava/util/List;IDJIIDDDILjava/lang/Object;)[B

    move-result-object v2

    goto :goto_0

    .line 1505
    :cond_2
    sget-object v6, Lcom/jichi/ob/merge/TrackMerger;->INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

    sget-object v7, Lcom/jichi/ob/merge/TrackMerger;->INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getSport()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/jichi/ob/merge/TrackMerger;->sportName(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Lcom/jichi/ob/merge/TrackMerger;->buildGpx(Lcom/jichi/ob/merge/TrackMerger$MergedResult;Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    if-eqz p1, :cond_3

    .line 1507
    const-string v3, "fit"

    goto :goto_1

    :cond_3
    const-string v3, "gpx"

    .line 1508
    :goto_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1509
    invoke-static {v6, v2}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 1510
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1512
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5bfc\u51fa\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private final exportSticker()V
    .locals 5

    .line 1605
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergedResult:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    if-nez v0, :cond_0

    return-void

    .line 1606
    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v2, 0x0

    const-string v3, "previewTrack"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setPoints(Ljava/util/List;)V

    .line 1608
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda62;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda62;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v0, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final exportSticker$lambda$146(Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 13

    .line 1610
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "previewTrack"

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 1612
    :cond_0
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getWatermarkOn()Z

    move-result v4

    .line 1613
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerItems:Ljava/util/List;

    .line 1614
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getDx()F

    move-result v6

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getDy()F

    move-result v7

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getScale()F

    move-result v8

    .line 1615
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/jichi/ob/ui/TrackPreviewView;->getTransparentBg()Z

    move-result v9

    .line 1610
    new-instance v10, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda63;

    invoke-direct {v10, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda63;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/16 v2, 0x400

    const/4 v3, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v12}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$default(Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1628
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8d34\u7eb8\u751f\u6210\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private static final exportSticker$lambda$146$lambda$145(Lcom/jichi/ob/ui/MergeFragment;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 6

    const-string/jumbo v0, "\u8d34\u7eb8\u5df2\u5bfc\u51fa\uff1a"

    const-string v1, "bmp"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1617
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/jichi/ob/MainActivity;->Companion:Lcom/jichi/ob/MainActivity$Companion;

    invoke-virtual {v2}, Lcom/jichi/ob/MainActivity$Companion;->getSAVE_DIR()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "\u5408\u5e76"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1618
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1619
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->mergeFileName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_sticker.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1621
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v1

    check-cast v3, Ljava/io/FileOutputStream;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    check-cast v3, Ljava/io/OutputStream;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1622
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1621
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 1624
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8d34\u7eb8\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    .line 1626
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final filePicker$lambda$102(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V
    .locals 12

    .line 815
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 816
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 817
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 818
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;-><init>(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final formatDuration(J)Ljava/lang/String;
    .locals 6

    const/16 v0, 0xe10

    int-to-long v0, v0

    .line 1253
    div-long v2, p1, v0

    rem-long v0, p1, v0

    const/16 v4, 0x3c

    int-to-long v4, v4

    div-long/2addr v0, v4

    rem-long/2addr p1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    .line 1254
    const-string v5, "format(...)"

    if-lez v4, :cond_0

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

    :goto_0
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%02d"

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private final getDp()F
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->dp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final launchFilePicker()V
    .locals 4

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->filePicker:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "*/*"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 852
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u65e0\u6cd5\u6253\u5f00\u6587\u4ef6\u9009\u62e9\u5668\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private final loadActivities(Z)V
    .locals 10

    .line 969
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->source:Lcom/jichi/ob/model/DataSource;

    if-nez v3, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/jichi/ob/ui/MergeFragment;

    const-string/jumbo p1, "\u8bf7\u5148\u9009\u62e9\u6765\u6e90\u5e73\u53f0"

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 970
    :cond_0
    iget-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->pageLoading:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 971
    iput-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->pageLoading:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 973
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnMergeNext:Lcom/google/android/material/button/MaterialButton;

    const-string v4, "btnMergeNext"

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 974
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnMergeNext:Lcom/google/android/material/button/MaterialButton;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    const-string/jumbo v4, "\u52a0\u8f7d\u4e2d..."

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 976
    :cond_4
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeHint:Landroid/widget/TextView;

    if-nez v2, :cond_5

    const-string/jumbo v2, "tvMergeHint"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_5
    if-eqz p1, :cond_6

    const-string/jumbo v4, "\u6b63\u5728\u52a0\u8f7d\u66f4\u65e9\u8bb0\u5f55..."

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6b63\u5728\u83b7\u53d6 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6d3b\u52a8\u5217\u8868..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    sget v1, Lcom/jichi/ob/R$id;->btnLoadMore:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :cond_7
    move-object v2, v1

    if-eqz v2, :cond_8

    .line 978
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 979
    :cond_8
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Lcom/jichi/ob/model/DataSource;ZLkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v6

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method static synthetic loadActivities$default(Lcom/jichi/ob/ui/MergeFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 968
    :cond_0
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->loadActivities(Z)V

    return-void
.end method

.method private static final logoPicker$lambda$99(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 747
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$logoPicker$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/jichi/ob/ui/MergeFragment$logoPicker$1$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final mergeFileName()Ljava/lang/String;
    .locals 4

    .line 1517
    iget-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->localMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->source:Lcom/jichi/ob/model/DataSource;

    .line 1518
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "local"

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_merged_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final onBack()V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stepResult:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "stepResult"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->showStep(I)V

    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stepPreview:Landroid/view/View;

    if-nez v0, :cond_2

    const-string/jumbo v0, "stepPreview"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->showStep(I)V

    return-void

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stepSelect:Landroid/view/View;

    if-nez v0, :cond_4

    const-string/jumbo v0, "stepSelect"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->showStep(I)V

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshSourceSelection()V

    return-void

    .line 583
    :cond_5
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/jichi/ob/MainActivity;

    if-eqz v2, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/jichi/ob/MainActivity;

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/jichi/ob/MainActivity;->closeMerge()V

    :cond_7
    return-void
.end method

.method private final onItemClick(I)V
    .locals 3

    .line 1076
    iget-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    if-eqz v0, :cond_2

    .line 1077
    iget v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    if-gez v0, :cond_0

    .line 1078
    iput p1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    .line 1079
    const-string/jumbo p1, "\u8d77\u70b9\u5df2\u6807\u8bb0\uff0c\u8bf7\u518d\u70b9\u9009\u7ec8\u70b9"

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1082
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-direct {v2, v0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    const/4 v1, 0x0

    .line 1083
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5df2\u9009\u62e9 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6761\u8bb0\u5f55"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->updateRangeBtn()V

    .line 1087
    :goto_0
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->notifyDataSetChanged()V

    .line 1088
    :cond_1
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshSelectionHint()V

    return-void

    .line 1091
    :cond_2
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 1092
    :cond_3
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshSelectionHint()V

    return-void
.end method

.method private static final onViewCreated$applyAspect(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_0

    const-string v0, "previewTrack"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p4}, Lcom/jichi/ob/ui/TrackPreviewView;->setAspect(Ljava/lang/String;)V

    .line 358
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "1:1"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$applyAspect$style(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Z)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "3:4"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$applyAspect$style(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Z)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "9:16"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p3, p1}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$applyAspect$style(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Z)V

    .line 359
    invoke-direct {p0, p4}, Lcom/jichi/ob/ui/MergeFragment;->sizeCardForAspect(Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$applyAspect$style(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Z)V
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    sget v1, Lcom/jichi/ob/R$drawable;->merge_chip_white_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/jichi/ob/R$drawable;->merge_chip_white:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 356
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p2, :cond_1

    sget p2, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_1

    :cond_1
    sget p2, Lcom/jichi/ob/R$color;->text_primary:I

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private static final onViewCreated$lambda$11$lambda$10(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 250
    iget-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->pageLoading:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->listHasMore:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->loadActivities(Z)V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$12(Landroid/view/View;)V
    .locals 2

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 290
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$13(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->pickStickerPhoto()V

    return-void
.end method

.method private static final onViewCreated$lambda$14(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 1

    .line 299
    sget-object p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 300
    iget v0, p0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p1

    rem-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->selectTemplate(I)V

    return-void
.end method

.method private static final onViewCreated$lambda$15(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 1

    .line 303
    sget-object p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 304
    iget v0, p0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->selectTemplate(I)V

    return-void
.end method

.method private static final onViewCreated$lambda$16(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->openCombo()V

    return-void
.end method

.method private static final onViewCreated$lambda$17(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const p1, 0x3f5eb852    # 0.87f

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->zoomTrackBy(F)V

    return-void
.end method

.method private static final onViewCreated$lambda$18(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const p1, 0x3f933333    # 1.15f

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->zoomTrackBy(F)V

    return-void
.end method

.method private static final onViewCreated$lambda$19(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/high16 p1, -0x3e900000    # -15.0f

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->rotateTrackBy(F)V

    return-void
.end method

.method private static final onViewCreated$lambda$20(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->rotateTrackBy(F)V

    return-void
.end method

.method private static final onViewCreated$lambda$21(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/high16 p1, -0x3ee00000    # -10.0f

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->tiltTrackBy(F)V

    return-void
.end method

.method private static final onViewCreated$lambda$22(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->tiltTrackBy(F)V

    return-void
.end method

.method private static final onViewCreated$lambda$23(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 2

    .line 317
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->resetTrackTransform()V

    .line 318
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->resetTrack3d()V

    .line 319
    const-string/jumbo p1, "\u5df2\u590d\u4f4d"

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$24(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 1

    .line 322
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x0

    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-virtual {p0, p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->moveTrackBy(FF)V

    return-void
.end method

.method private static final onViewCreated$lambda$25(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 1

    .line 323
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->moveTrackBy(FF)V

    return-void
.end method

.method private static final onViewCreated$lambda$26(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 1

    .line 324
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/high16 p1, -0x3ee00000    # -10.0f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->moveTrackBy(FF)V

    return-void
.end method

.method private static final onViewCreated$lambda$27(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 1

    .line 325
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_0

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->moveTrackBy(FF)V

    return-void
.end method

.method private static final onViewCreated$lambda$29(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 2

    .line 330
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    .line 331
    :cond_1
    iget-object v0, p1, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_2

    const-string v0, "previewTrack"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p2

    :cond_2
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p0

    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->setTitleOverride(Ljava/lang/String;)V

    .line 332
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_4

    const-string/jumbo p0, "\u5df2\u6062\u590d\u9ed8\u8ba4\u6807\u9898"

    goto :goto_2

    :cond_4
    const-string/jumbo p0, "\u6807\u9898\u5df2\u66f4\u65b0"

    :goto_2
    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$31(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 335
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    .line 336
    :cond_1
    iget-object p3, p1, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p3, :cond_2

    const-string p3, "previewTrack"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_2
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p0

    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->setTitleOverride(Ljava/lang/String;)V

    .line 337
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_4

    const-string/jumbo p0, "\u5df2\u6062\u590d\u9ed8\u8ba4\u6807\u9898"

    goto :goto_2

    :cond_4
    const-string/jumbo p0, "\u6807\u9898\u5df2\u66f4\u65b0"

    :goto_2
    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onViewCreated$lambda$32(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->showDataEditDialog()V

    return-void
.end method

.method private static final onViewCreated$lambda$33(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 344
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_0

    const-string p1, "previewTrack"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->clearDataOverrides()V

    .line 345
    const-string/jumbo p1, "\u5df2\u6e05\u7a7a\u624b\u8f93\u6570\u636e"

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$34(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 361
    const-string p4, "1:1"

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$applyAspect(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$35(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 362
    const-string p4, "3:4"

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$applyAspect(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$36(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 363
    const-string p4, "9:16"

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$applyAspect(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$37(Lcom/jichi/ob/ui/MergeFragment;I)Lkotlin/Unit;
    .locals 2

    .line 368
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 369
    iget v1, p0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    add-int/2addr v1, p1

    rem-int/2addr v1, v0

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/jichi/ob/ui/MergeFragment;->selectTemplate(I)V

    .line 370
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$38(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->onBack()V

    return-void
.end method

.method private static final onViewCreated$lambda$39(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 380
    invoke-static {p0, v1, p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->loadActivities$default(Lcom/jichi/ob/ui/MergeFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final onViewCreated$lambda$40(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 381
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->pickDateFilter()V

    return-void
.end method

.method private static final onViewCreated$lambda$41(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 383
    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->fromDate:Ljava/lang/String;

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->toDate:Ljava/lang/String;

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Lcom/jichi/ob/ui/MergeFragment;->pageSkip:I

    iput-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->listHasMore:Z

    .line 385
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshDateFilterViews()V

    const/4 v1, 0x1

    .line 386
    invoke-static {p0, v0, v1, p1}, Lcom/jichi/ob/ui/MergeFragment;->loadActivities$default(Lcom/jichi/ob/ui/MergeFragment;ZILjava/lang/Object;)V

    .line 387
    const-string/jumbo p1, "\u5df2\u6062\u590d\u663e\u793a\u6700\u8fd1\u8bb0\u5f55"

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$42(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->selectToday()V

    return-void
.end method

.method private static final onViewCreated$lambda$43(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->toggleRangeMode()V

    return-void
.end method

.method private static final onViewCreated$lambda$44(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 391
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->clearSelection()V

    return-void
.end method

.method private static final onViewCreated$lambda$45(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 392
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->doMerge()V

    return-void
.end method

.method private static final onViewCreated$lambda$46(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->saveMerge()V

    return-void
.end method

.method private static final onViewCreated$lambda$47(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 394
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->exportMerge(Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$48(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 395
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->exportMerge(Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$49(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->exportSticker()V

    return-void
.end method

.method private static final onViewCreated$lambda$50(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 4

    .line 400
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->bgPickerRow:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    const-string v1, "bgPickerRow"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 401
    :goto_0
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->bgPickerRow:Landroid/widget/HorizontalScrollView;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz p1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    if-nez p1, :cond_4

    .line 402
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->buildBgChips()V

    :cond_4
    return-void
.end method

.method private static final onViewCreated$lambda$51(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 4

    .line 406
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackType()Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    move-result-object p1

    .line 407
    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    .line 408
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    invoke-interface {v2, p1}, Lkotlin/enums/EnumEntries;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-interface {v2}, Lkotlin/enums/EnumEntries;->size()I

    move-result v3

    rem-int/2addr p1, v3

    invoke-interface {v2, p1}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrackType(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)V

    .line 409
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 410
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$52(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 4

    .line 414
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getLayoutType()Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    move-result-object p1

    .line 415
    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    invoke-interface {v2, p1}, Lkotlin/enums/EnumEntries;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-interface {v2}, Lkotlin/enums/EnumEntries;->size()I

    move-result v3

    rem-int/2addr p1, v3

    invoke-interface {v2, p1}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setLayoutType(Lcom/jichi/ob/merge/StickerCore$StickerLayout;)V

    .line 417
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 418
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$53(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 4

    .line 422
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getTextType()Lcom/jichi/ob/merge/StickerCore$StickerText;

    move-result-object p1

    .line 423
    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerText;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    .line 424
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    invoke-interface {v2, p1}, Lkotlin/enums/EnumEntries;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-interface {v2}, Lkotlin/enums/EnumEntries;->size()I

    move-result v3

    rem-int/2addr p1, v3

    invoke-interface {v2, p1}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setTextType(Lcom/jichi/ob/merge/StickerCore$StickerText;)V

    .line 425
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 426
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$54(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 4

    .line 430
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrack3d()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 431
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getGlowOn()Z

    goto :goto_2

    .line 433
    :cond_2
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getGlowOn()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setGlowOn(Z)V

    .line 435
    :goto_2
    iput-boolean v2, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 436
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$55(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 3

    .line 439
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getShow3dBand()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setShow3dBand(Z)V

    .line 440
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 441
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$56(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 5

    .line 444
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    invoke-virtual {v2}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackWidth()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackWidth()I

    move-result v0

    add-int/2addr v0, v4

    :goto_1
    invoke-virtual {p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrackWidth(I)V

    .line 445
    iput-boolean v4, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 446
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$57(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 3

    .line 449
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getTransparentBg()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setTransparentBg(Z)V

    .line 450
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 451
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$58(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 3

    .line 454
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getDataLayerOn()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setDataLayerOn(Z)V

    .line 455
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 456
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$59(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 3

    .line 459
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getWatermarkOn()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setWatermarkOn(Z)V

    .line 460
    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 461
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$60(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 465
    iget-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->badgeOn:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->badgeOn:Z

    .line 466
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->updateBadgeVisibility()V

    .line 467
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$61(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 4

    .line 471
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackOn()Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 472
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrackOn(Z)V

    .line 473
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrack3dMode(Z)V

    goto :goto_2

    .line 475
    :cond_3
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrackOn(Z)V

    .line 477
    :goto_2
    iput-boolean v2, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 478
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$62(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->showBrandDialog()V

    return-void
.end method

.method private static final onViewCreated$lambda$63(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->editSummaryStats()V

    return-void
.end method

.method private static final onViewCreated$lambda$64(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 3

    .line 497
    iget p1, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerPos:I

    add-int/lit8 p1, p1, 0x1

    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->Companion:Lcom/jichi/ob/ui/TrackPreviewView$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView$Companion;->getPosNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerPos:I

    .line 498
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    const-string v1, "previewTrack"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget v2, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerPos:I

    invoke-virtual {p1, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->setPosMode(I)V

    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->applyPosMode()V

    .line 499
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private static final onViewCreated$lambda$65(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->pickStickerItems()V

    return-void
.end method

.method private static final onViewCreated$lambda$66(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->uploadMerge()V

    return-void
.end method

.method private static final onViewCreated$lambda$67(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 503
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/jichi/ob/MainActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/jichi/ob/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->closeMerge()V

    :cond_1
    return-void
.end method

.method private final openCombo()V
    .locals 4

    const/4 v0, 0x1

    .line 1334
    iput-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->comboPanelOpen:Z

    .line 1335
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "comboPanel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1336
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v1, :cond_1

    const-string v1, "previewTrack"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setUseTemplate(Z)V

    .line 1337
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private final parseBytes([B)Lcom/jichi/ob/ui/MergeFragment$ParseResult;
    .locals 13

    const-string v0, "FIT \u6587\u4ef6\u4e0d\u5b8c\u6574\uff08\u5934\u90e8\u58f0\u660e "

    const-string v1, "FIT \u65e0\u6709\u6548\u8f68\u8ff9\u70b9\uff08"

    const-string v2, "FIT \u6587\u4ef6\u65e0\u6cd5\u89e3\u6790\uff08"

    const-string v3, "GPX \u65e0\u6709\u6548\u8f68\u8ff9\u70b9\uff08"

    const/4 v4, 0x0

    .line 907
    :try_start_0
    sget-object v5, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v5, p1}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, " \u5b57\u8282\uff09"

    if-eqz v5, :cond_3

    .line 909
    :try_start_1
    array-length v3, p1

    const/16 v5, 0xc

    if-lt v3, v5, :cond_0

    const/4 v3, 0x4

    .line 910
    aget-byte v3, p1, v3

    int-to-long v7, v3

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    int-to-long v11, v3

    and-long/2addr v11, v9

    const/16 v3, 0x8

    shl-long/2addr v11, v3

    or-long/2addr v7, v11

    const/4 v3, 0x6

    .line 911
    aget-byte v3, p1, v3

    int-to-long v11, v3

    and-long/2addr v11, v9

    const/16 v3, 0x10

    shl-long/2addr v11, v3

    or-long/2addr v7, v11

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    int-to-long v11, v5

    and-long/2addr v9, v11

    const/16 v5, 0x18

    shl-long/2addr v9, v5

    or-long/2addr v7, v9

    .line 912
    array-length v5, p1

    sub-int/2addr v5, v3

    const/4 v3, 0x0

    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    int-to-long v9, v3

    cmp-long v5, v7, v9

    if-lez v5, :cond_0

    .line 914
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u5b57\u8282\uff0c\u5b9e\u9645\u53ea\u6709 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u5b57\u8282\uff09\u2014\u2014\u4e0b\u8f7d\u4e2d\u65ad\u6216\u6587\u4ef6\u635f\u574f\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->lastErr:Ljava/lang/String;

    return-object v4

    .line 918
    :cond_0
    sget-object v0, Lcom/jichi/ob/merge/FitParser;->INSTANCE:Lcom/jichi/ob/merge/FitParser;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/merge/FitParser;->parse([B)Lcom/jichi/ob/merge/FitParser$FitResult;

    move-result-object v0

    if-nez v0, :cond_1

    .line 919
    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u5b57\u8282\uff0c\u53ef\u80fd\u4e0d\u662f\u6807\u51c6 FIT\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->lastErr:Ljava/lang/String;

    return-object v4

    .line 920
    :cond_1
    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->lastErr:Ljava/lang/String;

    return-object v4

    .line 921
    :cond_2
    new-instance p1, Lcom/jichi/ob/ui/MergeFragment$ParseResult;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getAscentM()I

    move-result v2

    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getDescentM()I

    move-result v0

    invoke-direct {p1, v1, v2, v0}, Lcom/jichi/ob/ui/MergeFragment$ParseResult;-><init>(Ljava/util/List;II)V

    return-object p1

    .line 923
    :cond_3
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/GpxToFitConverter;->parseGpxBytes([B)Ljava/util/List;

    move-result-object v8

    .line 924
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->lastErr:Ljava/lang/String;

    return-object v4

    :cond_4
    new-instance v7, Lcom/jichi/ob/ui/MergeFragment$ParseResult;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/jichi/ob/ui/MergeFragment$ParseResult;-><init>(Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 927
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->lastErr:Ljava/lang/String;

    return-object v4
.end method

.method private static final photoPicker$lambda$98(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 714
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final pickDateFilter()V
    .locals 7

    .line 1016
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1017
    new-instance v1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 1031
    new-instance v3, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda67;

    invoke-direct {v3, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda67;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1017
    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1031
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private static final pickDateFilter$lambda$106(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/DatePicker;III)V
    .locals 7

    .line 1018
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%04d-%02d-%02d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    new-instance v1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 1030
    new-instance v3, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda51;

    invoke-direct {v3, p1, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda51;-><init>(Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1020
    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1030
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private static final pickDateFilter$lambda$106$lambda$105(Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/DatePicker;III)V
    .locals 1

    .line 1021
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    add-int/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const-string p4, "%04d-%02d-%02d"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "format(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-gez p3, :cond_0

    .line 1023
    const-string/jumbo p0, "\u7ed3\u675f\u65e5\u671f\u4e0d\u80fd\u65e9\u4e8e\u5f00\u59cb\u65e5\u671f"

    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 1025
    :cond_0
    iput-object p0, p1, Lcom/jichi/ob/ui/MergeFragment;->fromDate:Ljava/lang/String;

    iput-object p2, p1, Lcom/jichi/ob/ui/MergeFragment;->toDate:Ljava/lang/String;

    const/4 p0, 0x0

    .line 1026
    iput p0, p1, Lcom/jichi/ob/ui/MergeFragment;->pageSkip:I

    iput-boolean p0, p1, Lcom/jichi/ob/ui/MergeFragment;->listHasMore:Z

    .line 1027
    invoke-direct {p1}, Lcom/jichi/ob/ui/MergeFragment;->refreshDateFilterViews()V

    const/4 p2, 0x0

    .line 1028
    invoke-static {p1, p0, v0, p2}, Lcom/jichi/ob/ui/MergeFragment;->loadActivities$default(Lcom/jichi/ob/ui/MergeFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method private final pickStickerItems()V
    .locals 8

    .line 1524
    sget-object v0, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1525
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 1858
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1859
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1860
    check-cast v3, Ljava/util/Map$Entry;

    .line 1525
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1860
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1861
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Z

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_1

    iget-object v6, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerItems:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    aput-boolean v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1527
    :cond_1
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1528
    const-string/jumbo v5, "\u53ef\u70b9\u9009\u5c55\u793a\u4fe1\u606f\uff082~6 \u9879\uff09"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1529
    check-cast v2, Ljava/util/Collection;

    .line 1865
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 1529
    new-instance v4, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda58;

    invoke-direct {v4, v3}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda58;-><init>([Z)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1532
    const-string/jumbo v2, "\u786e\u8ba4"

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v4, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda59;

    invoke-direct {v4, v0, p0, v3}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda59;-><init>(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;[Z)V

    invoke-virtual {v1, v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1540
    const-string/jumbo v1, "\u53d6\u6d88"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1541
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final pickStickerItems$lambda$130([ZLandroid/content/DialogInterface;IZ)V
    .locals 0

    .line 1530
    aput-boolean p3, p0, p2

    return-void
.end method

.method private static final pickStickerItems$lambda$133(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;[ZLandroid/content/DialogInterface;I)V
    .locals 3

    .line 1533
    check-cast p0, Ljava/lang/Iterable;

    .line 1894
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 1897
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    if-gez p4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1898
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 1533
    aget-boolean p4, p2, p4

    if-eqz p4, :cond_1

    .line 1898
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    move p4, v1

    goto :goto_0

    .line 1901
    :cond_2
    check-cast p3, Ljava/util/List;

    .line 1894
    check-cast p3, Ljava/lang/Iterable;

    .line 1902
    new-instance p0, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 1903
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1904
    check-cast p3, Ljava/util/Map$Entry;

    .line 1533
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1904
    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1905
    :cond_3
    check-cast p0, Ljava/util/List;

    .line 1534
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_4

    const-string/jumbo p0, "\u81f3\u5c11\u9009\u62e9 2 \u9879\u6570\u636e"

    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 1535
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x6

    if-le p2, p3, :cond_5

    const-string/jumbo p0, "\u6700\u591a\u9009\u62e9 6 \u9879\u6570\u636e"

    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 1536
    :cond_5
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    iput-object p0, p1, Lcom/jichi/ob/ui/MergeFragment;->stickerItems:Ljava/util/List;

    .line 1537
    iget-object p0, p1, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_6

    const-string p0, "previewTrack"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_6
    iget-object p2, p1, Lcom/jichi/ob/ui/MergeFragment;->stickerItems:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->setItems(Ljava/util/List;)V

    .line 1538
    invoke-direct {p1}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    return-void
.end method

.method private final pickStickerLogo()V
    .locals 3

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->logoPicker:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u65e0\u6cd5\u6253\u5f00\u76f8\u518c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private final pickStickerPhoto()V
    .locals 3

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->photoPicker:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u65e0\u6cd5\u6253\u5f00\u76f8\u518c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private final platformColor(Ljava/lang/String;)I
    .locals 1

    .line 944
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "cscn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "igp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 945
    :cond_0
    sget p1, Lcom/jichi/ob/R$color;->igp_green:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_2
    const-string v0, "icu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 957
    :cond_1
    sget p1, Lcom/jichi/ob/R$color;->intervals_icu_orange:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_3
    const-string v0, "gcn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "zp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 960
    :cond_2
    sget p1, Lcom/jichi/ob/R$color;->zepp_blue:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_5
    const-string/jumbo v0, "zf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 956
    :cond_3
    sget p1, Lcom/jichi/ob/R$color;->zwift_purple:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_6
    const-string/jumbo v0, "xz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 946
    :cond_4
    sget p1, Lcom/jichi/ob/R$color;->xingzhe_blue:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_7
    const-string/jumbo v0, "wo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 953
    :cond_5
    sget p1, Lcom/jichi/ob/R$color;->wahoo_red:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_8
    const-string/jumbo v0, "su"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 962
    :cond_6
    sget p1, Lcom/jichi/ob/R$color;->suunto_blue:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_9
    const-string v0, "ob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 954
    :cond_7
    sget p1, Lcom/jichi/ob/R$color;->outbase_orange:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_a
    const-string v0, "mw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 955
    :cond_8
    sget p1, Lcom/jichi/ob/R$color;->mywhoosh_orange:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_b
    const-string v0, "mg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 947
    :cond_9
    sget p1, Lcom/jichi/ob/R$color;->magene_blue:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_c
    const-string v0, "kt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 961
    :cond_a
    sget p1, Lcom/jichi/ob/R$color;->komoot_red:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_d
    const-string v0, "kp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    .line 958
    :cond_b
    sget p1, Lcom/jichi/ob/R$color;->keep_yellow:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_e
    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    .line 950
    :cond_c
    sget p1, Lcom/jichi/ob/R$color;->giant_blue:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_f
    const-string v0, "gm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    .line 951
    :cond_d
    sget p1, Lcom/jichi/ob/R$color;->garmin_blue:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_10
    const-string v0, "cs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    .line 952
    :cond_e
    sget p1, Lcom/jichi/ob/R$color;->coros_red:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_11
    const-string v0, "cd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    .line 959
    :cond_f
    sget p1, Lcom/jichi/ob/R$color;->codoon_green:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_12
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    .line 949
    :cond_10
    sget p1, Lcom/jichi/ob/R$color;->bryton_red:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 944
    :sswitch_13
    const-string v0, "bb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    .line 948
    :cond_11
    sget p1, Lcom/jichi/ob/R$color;->blackbird_green:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    .line 963
    :goto_0
    sget p1, Lcom/jichi/ob/R$color;->primary:I

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0xc40 -> :sswitch_13
        0xc50 -> :sswitch_12
        0xc61 -> :sswitch_11
        0xc70 -> :sswitch_10
        0xce6 -> :sswitch_f
        0xced -> :sswitch_e
        0xd65 -> :sswitch_d
        0xd69 -> :sswitch_c
        0xd9a -> :sswitch_b
        0xdaa -> :sswitch_a
        0xdd3 -> :sswitch_9
        0xe62 -> :sswitch_8
        0xed8 -> :sswitch_7
        0xf02 -> :sswitch_6
        0xf2c -> :sswitch_5
        0xf36 -> :sswitch_4
        0x18f12 -> :sswitch_3
        0x1969b -> :sswitch_2
        0x19712 -> :sswitch_1
        0x2ebcdb -> :sswitch_0
    .end sparse-switch
.end method

.method private final processLocalFiles(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 858
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "\u672a\u9009\u62e9\u6587\u4ef6"

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "tvMergeHint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6b63\u5728\u89e3\u6790 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u672c\u5730\u6587\u4ef6..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSaveMerge:Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_2

    const-string v0, "btnSaveMerge"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 861
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;-><init>(Ljava/util/List;Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final queryDisplayName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    .line 842
    :try_start_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    .line 843
    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .line 842
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private final refreshDateFilterViews()V
    .locals 6

    .line 1035
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/jichi/ob/R$id;->btnPickDate:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1036
    :goto_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v1, Lcom/jichi/ob/R$id;->btnClearDate:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1037
    :cond_1
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->fromDate:Ljava/lang/String;

    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    .line 1038
    const-string/jumbo v2, "\ud83d\udcc5 \u65e5\u671f\u8303\u56f4"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 1039
    const-string/jumbo v0, "\u6700\u8fd1\u8bb0\u5f55"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v1, :cond_7

    .line 1040
    sget v0, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 1042
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "substring(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->toDate:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\ud83d\udcc5 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ~ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 1043
    const-string/jumbo v0, "\u2715 \u6e05\u9664"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 1044
    sget v0, Lcom/jichi/ob/R$color;->primary:I

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    return-void
.end method

.method private final refreshSelectionHint()V
    .locals 8

    .line 1125
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->notifyDataSetChanged()V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    .line 1127
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "tvMergeHint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->getRecords()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5171 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u6761\u8bb0\u5f55 \u00b7 \u70b9\u6309\u52fe\u9009\uff08\u5355\u9009\u751f\u6210\u8d34\u7eb8\uff0c\u591a\u9009\u5408\u5e76\uff09"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeSelected:Landroid/widget/TextView;

    if-nez v1, :cond_3

    const-string/jumbo v1, "tvMergeSelected"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5df2\u9009 "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u6761"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnDoMerge:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "btnDoMerge"

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v0, v5, :cond_5

    .line 1130
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u5408\u5e76\uff08"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " \u6761\uff09"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_5
    if-ne v0, v6, :cond_6

    .line 1131
    const-string/jumbo v5, "\u751f\u6210\u8d34\u7eb8\uff081 \u6761\uff09"

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_1

    .line 1132
    :cond_6
    const-string/jumbo v5, "\u5408\u5e76"

    check-cast v5, Ljava/lang/CharSequence;

    .line 1129
    :goto_1
    invoke-virtual {v1, v5}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnDoMerge:Lcom/google/android/material/button/MaterialButton;

    if-nez v1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v2, v1

    :goto_2
    if-lt v0, v6, :cond_8

    move v4, v6

    :cond_8
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method private final refreshSourceSelection()V
    .locals 9

    .line 933
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeSource:Landroid/widget/GridLayout;

    const-string v1, "gridMergeSource"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_b

    .line 934
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeSource:Landroid/widget/GridLayout;

    if-nez v5, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_1
    invoke-virtual {v5, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/jichi/ob/ui/PlatformButton;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/jichi/ob/ui/PlatformButton;

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_3

    goto :goto_5

    .line 935
    :cond_3
    invoke-virtual {v5}, Lcom/jichi/ob/ui/PlatformButton;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_4

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_2
    if-nez v6, :cond_5

    goto :goto_5

    .line 936
    :cond_5
    sget-object v7, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v7, v6}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 938
    iget-object v8, p0, Lcom/jichi/ob/ui/MergeFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v8, :cond_6

    const-string v8, "prefs"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v2

    :cond_6
    invoke-virtual {v8, v7}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v5, v3, v3}, Lcom/jichi/ob/ui/PlatformButton;->setPlatformState(ZZ)V

    goto :goto_5

    .line 939
    :cond_7
    const-string v7, "local"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    iget-boolean v6, p0, Lcom/jichi/ob/ui/MergeFragment;->localMode:Z

    invoke-virtual {v5, v6, v8}, Lcom/jichi/ob/ui/PlatformButton;->setPlatformState(ZZ)V

    goto :goto_5

    .line 940
    :cond_8
    iget-object v7, p0, Lcom/jichi/ob/ui/MergeFragment;->source:Lcom/jichi/ob/model/DataSource;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_9
    move-object v7, v2

    :goto_3
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/jichi/ob/ui/MergeFragment;->localMode:Z

    if-nez v6, :cond_a

    move v6, v8

    goto :goto_4

    :cond_a
    move v6, v3

    :goto_4
    invoke-virtual {v5, v6, v8}, Lcom/jichi/ob/ui/PlatformButton;->setPlatformState(ZZ)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    return-void
.end method

.method private final refreshStickerChips()V
    .locals 19

    move-object/from16 v0, p0

    .line 1352
    sget-object v1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {v1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1353
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerTemplateName:Landroid/widget/TextView;

    if-nez v2, :cond_0

    const-string/jumbo v2, "stickerTemplateName"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    iget v4, v0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    const-string/jumbo v5, "stickerCardPage"

    const-string/jumbo v6, "stickerCardTitle"

    if-ltz v4, :cond_3

    .line 1354
    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {v4}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object v4

    iget v7, v0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    .line 1356
    iget-object v7, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerCardTitle:Landroid/widget/TextView;

    if-nez v7, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_1
    invoke-virtual {v4}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " \u00b7 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->updateBadgeVisibility()V

    .line 1358
    iget-object v4, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerCardPage:Landroid/widget/TextView;

    if-nez v4, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2
    iget v5, v0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    add-int/lit8 v5, v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    iget v4, v0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 1361
    :cond_3
    iget-object v4, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerCardTitle:Landroid/widget/TextView;

    if-nez v4, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_4
    const-string/jumbo v6, "\u81ea\u5b9a\u4e49\u7ec4\u5408"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->updateBadgeVisibility()V

    .line 1363
    iget-object v4, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerCardPage:Landroid/widget/TextView;

    if-nez v4, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "C/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    sget-object v1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {v1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getCOMBO_COUNT()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u81ea\u5b9a\u4e49\u7ec4\u5408 \u00b7 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u79cd"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1353
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerBadge:Landroid/widget/TextView;

    const-string v2, "btnStickerBadge"

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_6
    iget-boolean v4, v0, Lcom/jichi/ob/ui/MergeFragment;->badgeOn:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "\u89d2\u6807:\u5f00"

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "\u89d2\u6807:\u5173"

    :goto_1
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerBadge:Landroid/widget/TextView;

    if-nez v1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_8
    iget-boolean v2, v0, Lcom/jichi/ob/ui/MergeFragment;->badgeOn:Z

    if-eqz v2, :cond_9

    sget v2, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_2

    :cond_9
    sget v2, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_2
    invoke-direct {v0, v2}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1368
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTrack:Landroid/widget/TextView;

    const-string v2, "btnStickerTrack"

    if-nez v1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_a
    iget-object v4, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const-string v5, "previewTrack"

    if-nez v4, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_b
    invoke-virtual {v4}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackOn()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "\u8f68\u8ff9:\u5e73\u9762"

    goto :goto_3

    :cond_c
    const-string/jumbo v4, "\u8f68\u8ff9:\u5173"

    :goto_3
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTrack:Landroid/widget/TextView;

    if-nez v1, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_d
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_e
    invoke-virtual {v2}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackOn()Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_4

    :cond_f
    sget v2, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_4
    invoke-direct {v0, v2}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1371
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerBrand:Landroid/widget/TextView;

    const-string v2, "btnStickerBrand"

    if-nez v1, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_10
    iget-object v4, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v4, :cond_11

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_11
    invoke-virtual {v4}, Lcom/jichi/ob/ui/TrackPreviewView;->getBrandIdx()I

    move-result v4

    sget v6, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_CUSTOM:I

    if-ne v4, v6, :cond_12

    const-string/jumbo v4, "\u89d2\u6807:\u81ea\u5b9a\u4e49"

    goto :goto_5

    :cond_12
    const-string/jumbo v4, "\u89d2\u6807:\u9e21\u7fc5OB"

    :goto_5
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerBrand:Landroid/widget/TextView;

    if-nez v1, :cond_13

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_13
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_14

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_14
    invoke-virtual {v2}, Lcom/jichi/ob/ui/TrackPreviewView;->getBrandIdx()I

    move-result v2

    sget v4, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_CUSTOM:I

    if-ne v2, v4, :cond_15

    sget v2, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_6

    :cond_15
    sget v2, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_6
    invoke-direct {v0, v2}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1373
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerStyle:Landroid/widget/TextView;

    const-string v2, "btnStickerStyle"

    if-nez v1, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_16
    iget-object v4, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v4, :cond_17

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_17
    invoke-virtual {v4}, Lcom/jichi/ob/ui/TrackPreviewView;->getBgType()Lcom/jichi/ob/merge/StickerCore$StickerBg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jichi/ob/merge/StickerCore$StickerBg;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u80cc\u666f:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnSticker3d:Landroid/widget/TextView;

    const-string v4, "btnSticker3d"

    if-nez v1, :cond_18

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_18
    iget-object v6, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v6, :cond_19

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_19
    invoke-virtual {v6}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackType()Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/jichi/ob/ui/MergeFragment;->trackLabel(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerColor:Landroid/widget/TextView;

    const-string v6, "btnStickerColor"

    if-nez v1, :cond_1a

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1a
    iget-object v7, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v7, :cond_1b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_1b
    invoke-virtual {v7}, Lcom/jichi/ob/ui/TrackPreviewView;->getLayoutType()Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->getKey()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u5e03\u5c40:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTextColor:Landroid/widget/TextView;

    const-string v7, "btnStickerTextColor"

    if-nez v1, :cond_1c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1c
    iget-object v8, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v8, :cond_1d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_1d
    invoke-virtual {v8}, Lcom/jichi/ob/ui/TrackPreviewView;->getTextType()Lcom/jichi/ob/merge/StickerCore$StickerText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jichi/ob/merge/StickerCore$StickerText;->getKey()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u5b57\u8272:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerItems:Landroid/widget/TextView;

    const-string v8, "btnStickerItems"

    if-nez v1, :cond_1e

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1e
    iget-object v9, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\u6570\u636e:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u9879"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerPos:Landroid/widget/TextView;

    const-string v9, "btnStickerPos"

    if-nez v1, :cond_1f

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1f
    sget-object v10, Lcom/jichi/ob/ui/TrackPreviewView;->Companion:Lcom/jichi/ob/ui/TrackPreviewView$Companion;

    invoke-virtual {v10}, Lcom/jichi/ob/ui/TrackPreviewView$Companion;->getPosNames()Ljava/util/List;

    move-result-object v10

    iget v11, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerPos:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\u4f4d\u7f6e:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1379
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerWidth:Landroid/widget/TextView;

    const-string v10, "btnStickerWidth"

    if-nez v1, :cond_20

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_20
    sget-object v11, Lcom/jichi/ob/ui/TrackPreviewView;->trackWidthNames:[Ljava/lang/String;

    iget-object v12, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v12, :cond_21

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v12, 0x0

    :cond_21
    invoke-virtual {v12}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackWidth()I

    move-result v12

    aget-object v11, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u7c97\u7ec6:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerWidth:Landroid/widget/TextView;

    if-nez v1, :cond_22

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_22
    iget-object v10, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v10, :cond_23

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_23
    invoke-virtual {v10}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackWidth()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_24

    sget v10, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_7

    :cond_24
    sget v10, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_7
    invoke-direct {v0, v10}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1381
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerGlow:Landroid/widget/TextView;

    const-string v10, "btnStickerGlow"

    if-nez v1, :cond_25

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_25
    iget-object v11, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v11, :cond_26

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_26
    invoke-virtual {v11}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrack3d()Z

    move-result v11

    if-eqz v11, :cond_27

    const-string/jumbo v11, "\u53d1\u5149:3D\u5173"

    :goto_8
    check-cast v11, Ljava/lang/CharSequence;

    goto :goto_9

    :cond_27
    iget-object v11, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v11, :cond_28

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_28
    invoke-virtual {v11}, Lcom/jichi/ob/ui/TrackPreviewView;->getGlowOn()Z

    move-result v11

    if-eqz v11, :cond_29

    const-string/jumbo v11, "\u53d1\u5149:\u5f00"

    goto :goto_8

    :cond_29
    const-string/jumbo v11, "\u53d1\u5149:\u5173"

    goto :goto_8

    :goto_9
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnSticker3dBand:Landroid/widget/TextView;

    const-string v11, "btnSticker3dBand"

    if-nez v1, :cond_2a

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2a
    iget-object v12, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v12, :cond_2b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v12, 0x0

    :cond_2b
    invoke-virtual {v12}, Lcom/jichi/ob/ui/TrackPreviewView;->getShow3dBand()Z

    move-result v12

    if-eqz v12, :cond_2c

    const-string/jumbo v12, "\u6d77\u62d4:\u5f00"

    goto :goto_a

    :cond_2c
    const-string/jumbo v12, "\u6d77\u62d4:\u5173"

    :goto_a
    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTransparent:Landroid/widget/TextView;

    const-string v12, "btnStickerTransparent"

    if-nez v1, :cond_2d

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2d
    iget-object v13, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v13, :cond_2e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_2e
    invoke-virtual {v13}, Lcom/jichi/ob/ui/TrackPreviewView;->getTransparentBg()Z

    move-result v13

    if-eqz v13, :cond_2f

    const-string/jumbo v13, "\u900f\u660e:\u5f00"

    goto :goto_b

    :cond_2f
    const-string/jumbo v13, "\u900f\u660e:\u5173"

    :goto_b
    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerDataLayer:Landroid/widget/TextView;

    const-string v13, "btnStickerDataLayer"

    if-nez v1, :cond_30

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_30
    iget-object v14, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v14, :cond_31

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v14, 0x0

    :cond_31
    invoke-virtual {v14}, Lcom/jichi/ob/ui/TrackPreviewView;->getDataLayerOn()Z

    move-result v14

    if-eqz v14, :cond_32

    const-string/jumbo v14, "\u6570\u636e\u5c42:\u5f00"

    goto :goto_c

    :cond_32
    const-string/jumbo v14, "\u6570\u636e\u5c42:\u5173"

    :goto_c
    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerWatermark:Landroid/widget/TextView;

    const-string v14, "btnStickerWatermark"

    if-nez v1, :cond_33

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_33
    iget-object v15, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v15, :cond_34

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v15, 0x0

    :cond_34
    invoke-virtual {v15}, Lcom/jichi/ob/ui/TrackPreviewView;->getWatermarkOn()Z

    move-result v15

    if-eqz v15, :cond_35

    const-string/jumbo v15, "\u6c34\u5370:\u5f00"

    goto :goto_d

    :cond_35
    const-string/jumbo v15, "\u6c34\u5370:\u5173"

    :goto_d
    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerSummary:Landroid/widget/TextView;

    const-string v15, "btnStickerSummary"

    if-nez v1, :cond_36

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_36
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_37

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_37
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getSummaryStats()Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    move-result-object v3

    move-object/from16 v16, v2

    if-eqz v3, :cond_38

    .line 1387
    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getCount()I

    move-result v2

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->fmtKm()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    const-string/jumbo v5, "\u5f80\u671f\u6570\u636e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\u6b21 \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "km"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1386
    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_38
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 1388
    :cond_39
    const-string/jumbo v2, "\u5f80\u671f\u6570\u636e:\u672a\u586b\uff08\u70b9\u51fb\u5f55\u5165\uff09"

    check-cast v2, Ljava/lang/CharSequence;

    .line 1386
    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerPhoto:Landroid/widget/TextView;

    if-nez v1, :cond_3a

    const-string v1, "btnStickerPhoto"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3a
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v2, :cond_3b

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3b
    invoke-virtual {v2}, Lcom/jichi/ob/ui/TrackPreviewView;->getOverlayBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 1390
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->photoBgs:Ljava/util/Set;

    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_3c

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_3c
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getBgType()Lcom/jichi/ob/merge/StickerCore$StickerBg;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1391
    const-string/jumbo v2, "\u5f53\u524d\u80cc\u666f\u751f\u6548\u4e2d"

    goto :goto_f

    :cond_3d
    const-string/jumbo v2, "\u70b9\u6b64\u5207\u6362\u7167\u7247\u80cc\u666f"

    :goto_f
    const-string/jumbo v3, "\ud83d\uddbc\ufe0f \u7167\u7247:\u5df2\u9009\u62e9 \u00b7 "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_10

    .line 1393
    :cond_3e
    const-string/jumbo v2, "\ud83d\uddbc\ufe0f \u9009\u7167\u7247:\u672a\u9009\u62e9\uff08\u900f\u660e\u53e0\u52a0/\u78e8\u7802\u73bb\u7483/\u53cc\u56fe\u62fc\u63a5\u7528\uff09"

    check-cast v2, Ljava/lang/CharSequence;

    .line 1389
    :goto_10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    sget v1, Lcom/jichi/ob/R$color;->primary:I

    invoke-direct {v0, v1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v1

    .line 1396
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerStyle:Landroid/widget/TextView;

    if-nez v2, :cond_3f

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3f
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_40

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_40
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getBgType()Lcom/jichi/ob/merge/StickerCore$StickerBg;

    move-result-object v3

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerBg;->DEEP_SPACE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-eq v3, v4, :cond_41

    move v3, v1

    goto :goto_11

    :cond_41
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_11
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1397
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnSticker3d:Landroid/widget/TextView;

    if-nez v2, :cond_42

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_42
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_43

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_43
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackType()Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    move-result-object v3

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    if-eq v3, v4, :cond_44

    move v3, v1

    goto :goto_12

    :cond_44
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_12
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1398
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerColor:Landroid/widget/TextView;

    if-nez v2, :cond_45

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_45
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_46

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_46
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getLayoutType()Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    move-result-object v3

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    if-eq v3, v4, :cond_47

    move v3, v1

    goto :goto_13

    :cond_47
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_13
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1399
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTextColor:Landroid/widget/TextView;

    if-nez v2, :cond_48

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_48
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_49

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_49
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getTextType()Lcom/jichi/ob/merge/StickerCore$StickerText;

    move-result-object v3

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    if-eq v3, v4, :cond_4a

    move v3, v1

    goto :goto_14

    :cond_4a
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_14
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1400
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerItems:Landroid/widget/TextView;

    if-nez v2, :cond_4b

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_4b
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerItems:Ljava/util/List;

    sget-object v4, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v4}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFAULT()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    move v3, v1

    goto :goto_15

    :cond_4c
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_15
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1401
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerPos:Landroid/widget/TextView;

    if-nez v2, :cond_4d

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_4d
    iget v3, v0, Lcom/jichi/ob/ui/MergeFragment;->stickerPos:I

    if-eqz v3, :cond_4e

    move v3, v1

    goto :goto_16

    :cond_4e
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_16
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerGlow:Landroid/widget/TextView;

    if-nez v2, :cond_4f

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_4f
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_50

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_50
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrack3d()Z

    move-result v3

    if-eqz v3, :cond_52

    :cond_51
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    goto :goto_17

    :cond_52
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_53

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_53
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getGlowOn()Z

    move-result v3

    if-eqz v3, :cond_51

    move v3, v1

    :goto_17
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1403
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnSticker3dBand:Landroid/widget/TextView;

    if-nez v2, :cond_54

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_54
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_55

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_55
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getShow3dBand()Z

    move-result v3

    if-eqz v3, :cond_56

    move v3, v1

    goto :goto_18

    :cond_56
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_18
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1404
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTransparent:Landroid/widget/TextView;

    if-nez v2, :cond_57

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_57
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_58

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_58
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getTransparentBg()Z

    move-result v3

    if-eqz v3, :cond_59

    move v3, v1

    goto :goto_19

    :cond_59
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_19
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1405
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerDataLayer:Landroid/widget/TextView;

    if-nez v2, :cond_5a

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_5a
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_5b

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_5b
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getDataLayerOn()Z

    move-result v3

    if-eqz v3, :cond_5c

    move v3, v1

    goto :goto_1a

    :cond_5c
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_1a
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1406
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerWatermark:Landroid/widget/TextView;

    if-nez v2, :cond_5d

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_5d
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_5e

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_5e
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getWatermarkOn()Z

    move-result v3

    if-eqz v3, :cond_5f

    move v3, v1

    goto :goto_1b

    :cond_5f
    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    :goto_1b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1407
    iget-object v2, v0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerSummary:Landroid/widget/TextView;

    if-nez v2, :cond_60

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_60
    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v3, :cond_61

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_61
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->getSummaryStats()Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    move-result-object v3

    if-eqz v3, :cond_62

    goto :goto_1c

    :cond_62
    sget v1, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v1

    :goto_1c
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1409
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v1, :cond_63

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1d

    :cond_63
    move-object v3, v1

    :goto_1d
    invoke-virtual {v3}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method private final saveMerge()V
    .locals 23

    move-object/from16 v1, p0

    const-string/jumbo v0, "\u5df2\u4fdd\u5b58\uff1a"

    .line 1476
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment;->mergedResult:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    if-nez v2, :cond_0

    return-void

    .line 1477
    :cond_0
    invoke-direct {v1}, Lcom/jichi/ob/ui/MergeFragment;->mergeFileName()Ljava/lang/String;

    move-result-object v3

    .line 1478
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/jichi/ob/MainActivity;->Companion:Lcom/jichi/ob/MainActivity$Companion;

    invoke-virtual {v5}, Lcom/jichi/ob/MainActivity$Companion;->getSAVE_DIR()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "\u5408\u5e76"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1480
    :cond_1
    :try_start_0
    sget-object v6, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v2}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getPoints()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getSport()I

    move-result v8

    invoke-virtual {v2}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDistanceKm()D

    move-result-wide v9

    const/16 v5, 0x3e8

    int-to-double v11, v5

    mul-double v15, v9, v11

    invoke-virtual {v2}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAscentM()D

    move-result-wide v17

    invoke-virtual {v2}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getDescentM()D

    move-result-wide v19

    const/16 v21, 0x3c

    const/16 v22, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v22}, Lcom/jichi/ob/GpxToFitConverter;->convertPoints$default(Lcom/jichi/ob/GpxToFitConverter;Ljava/util/List;IDJIIDDDILjava/lang/Object;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1481
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".fit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1483
    :try_start_1
    invoke-static {v5, v2}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 1484
    iput-object v5, v1, Lcom/jichi/ob/ui/MergeFragment;->savedFile:Ljava/io/File;

    .line 1485
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment;->tvMergeResultTitle:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-string/jumbo v2, "tvMergeResultTitle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    const-string/jumbo v6, "\u2705 \u5408\u5e76\u6210\u529f"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment;->tvMergeResultFile:Landroid/widget/TextView;

    if-nez v2, :cond_3

    const-string/jumbo v2, "tvMergeResultFile"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1487
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment;->tvMergeResultPath:Landroid/widget/TextView;

    if-nez v2, :cond_4

    const-string/jumbo v2, "tvMergeResultPath"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v4, v2

    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    invoke-direct {v1}, Lcom/jichi/ob/ui/MergeFragment;->setupUploadGrid()V

    const/4 v2, 0x4

    .line 1489
    invoke-direct {v1, v2}, Lcom/jichi/ob/ui/MergeFragment;->showStep(I)V

    .line 1490
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1492
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 1480
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FIT \u751f\u6210\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private final selectTemplate(I)V
    .locals 3

    .line 1298
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    if-nez v0, :cond_0

    return-void

    .line 1299
    :cond_0
    iput p1, p0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    const/4 p1, 0x0

    .line 1300
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 1301
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboPanelOpen:Z

    .line 1302
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->comboPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "comboPanel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1303
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_2

    const-string p1, "previewTrack"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->applyTemplate(Lcom/jichi/ob/merge/StickerCore$StickerTemplate;)V

    .line 1304
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    .line 1305
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->updateCategoryTabs()V

    return-void
.end method

.method private final selectToday()V
    .locals 9

    .line 1103
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1104
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->getRecords()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1107
    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->getRecords()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/model/ActivityRecord;

    .line 1108
    invoke-virtual {v6}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, v1, v3, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedIndexes:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 1110
    const-string/jumbo v0, "\u4eca\u5929\u6ca1\u6709\u8bb0\u5f55\uff0c\u5df2\u9009\u5176\u4ed6\u8bb0\u5f55\u8bd5\u8bd5"

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    .line 1111
    :cond_3
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshSelectionHint()V

    return-void
.end method

.method private final setupSourceGrid()V
    .locals 14

    .line 591
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeSource:Landroid/widget/GridLayout;

    const-string v1, "gridMergeSource"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 592
    sget-object v0, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource$Companion;->sourcePlatforms()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 594
    invoke-static {}, Lcom/jichi/ob/model/DataSource;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1825
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 1826
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    .line 594
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    if-eq v6, v7, :cond_1

    .line 1826
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1827
    :cond_2
    check-cast v4, Ljava/util/List;

    .line 595
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 596
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 597
    const-string/jumbo v4, "\u6682\u65e0\u53ef\u7528\u6765\u6e90\u5e73\u53f0"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41500000    # 13.0f

    .line 598
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 599
    sget v4, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {p0, v4}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeSource:Landroid/widget/GridLayout;

    if-nez v4, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/4 v4, 0x4

    .line 602
    invoke-static {v3, v4}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 603
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 601
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 607
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "prefs"

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x80000000

    const-string v9, "requireContext(...)"

    const/4 v10, 0x2

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    .line 608
    iget-object v11, p0, Lcom/jichi/ob/ui/MergeFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v11, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v2

    :cond_5
    invoke-virtual {v11, v5}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result v6

    .line 609
    new-instance v11, Lcom/jichi/ob/ui/PlatformButton;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v12, v2, v10, v2}, Lcom/jichi/ob/ui/PlatformButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 610
    invoke-virtual {v5}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/jichi/ob/ui/PlatformButton;->setTag(Ljava/lang/Object;)V

    .line 611
    invoke-virtual {v5}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/jichi/ob/ui/MergeFragment;->platformColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11, v9}, Lcom/jichi/ob/ui/PlatformButton;->bind(I)V

    .line 612
    invoke-virtual {v5}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "\n\u672a\u767b\u5f55"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v11, v9}, Lcom/jichi/ob/ui/PlatformButton;->setButtonText(Ljava/lang/CharSequence;)V

    .line 613
    new-instance v9, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v9}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 614
    iput v3, v9, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/16 v12, 0x32

    int-to-float v12, v12

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, v9, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 615
    invoke-static {v8, v7}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    iput-object v7, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    int-to-float v7, v10

    .line 616
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v12

    mul-float/2addr v12, v7

    float-to-int v12, v12

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v13

    mul-float/2addr v7, v13

    float-to-int v7, v7

    invoke-virtual {v9, v8, v10, v12, v7}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 613
    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v9}, Lcom/jichi/ob/ui/PlatformButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    new-instance v7, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda64;

    invoke-direct {v7, p0, v5}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda64;-><init>(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;)V

    invoke-virtual {v11, v7}, Lcom/jichi/ob/ui/PlatformButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v6, :cond_7

    .line 629
    invoke-virtual {v11, v3, v3}, Lcom/jichi/ob/ui/PlatformButton;->setPlatformState(ZZ)V

    .line 630
    :cond_7
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeSource:Landroid/widget/GridLayout;

    if-nez v5, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_8
    check-cast v11, Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 633
    :cond_9
    new-instance v0, Lcom/jichi/ob/ui/PlatformButton;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5, v2, v10, v2}, Lcom/jichi/ob/ui/PlatformButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 634
    const-string v5, "local"

    invoke-virtual {v0, v5}, Lcom/jichi/ob/ui/PlatformButton;->setTag(Ljava/lang/Object;)V

    .line 635
    sget v5, Lcom/jichi/ob/R$color;->primary:I

    invoke-direct {p0, v5}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/jichi/ob/ui/PlatformButton;->bind(I)V

    .line 636
    const-string/jumbo v5, "\ud83d\udcc1 \u672c\u5730\u6587\u4ef6"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lcom/jichi/ob/ui/PlatformButton;->setButtonText(Ljava/lang/CharSequence;)V

    .line 637
    new-instance v5, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v5}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 638
    iput v3, v5, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/16 v9, 0x2c

    int-to-float v9, v9

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v11

    mul-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, v5, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 639
    invoke-static {v8, v7}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    int-to-float v7, v10

    .line 640
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v11

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 637
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v5}, Lcom/jichi/ob/ui/PlatformButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    new-instance v5, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda65;

    invoke-direct {v5, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda65;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {v0, v5}, Lcom/jichi/ob/ui/PlatformButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeSource:Landroid/widget/GridLayout;

    if-nez v5, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_a
    check-cast v0, Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 646
    check-cast v4, Ljava/lang/Iterable;

    .line 1828
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    .line 646
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v5, :cond_c

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_c
    invoke-virtual {v5, v4}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v2, v1

    .line 1829
    :cond_d
    check-cast v2, Lcom/jichi/ob/model/DataSource;

    .line 646
    iput-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->source:Lcom/jichi/ob/model/DataSource;

    .line 647
    iput-boolean v3, p0, Lcom/jichi/ob/ui/MergeFragment;->localMode:Z

    .line 648
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshSourceSelection()V

    return-void
.end method

.method private static final setupSourceGrid$lambda$78$lambda$77(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 1

    .line 619
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez p2, :cond_0

    const-string p2, "prefs"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 620
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u8bf7\u5148\u5230\u767b\u5f55\u9875\u767b\u5f55 "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "\uff0c\u767b\u5f55\u540e\u5373\u53ef\u4f5c\u4e3a\u5408\u5e76/\u8d34\u7eb8\u6570\u636e\u6e90"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 623
    :cond_1
    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->source:Lcom/jichi/ob/model/DataSource;

    const/4 p1, 0x0

    .line 624
    iput-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment;->localMode:Z

    .line 625
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshSourceSelection()V

    return-void
.end method

.method private static final setupSourceGrid$lambda$81$lambda$80(Lcom/jichi/ob/ui/MergeFragment;Landroid/view/View;)V
    .locals 0

    .line 642
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->showLocalSourceChoices()V

    return-void
.end method

.method private final setupUploadGrid()V
    .locals 13

    .line 1635
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeUpload:Landroid/widget/GridLayout;

    const-string v1, "gridMergeUpload"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 1636
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedUploadTags:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 1637
    invoke-static {}, Lcom/jichi/ob/model/DataSource;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1868
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    .line 1637
    sget-object v6, Lcom/jichi/ob/model/UploadSupport;->Companion:Lcom/jichi/ob/model/UploadSupport$Companion;

    invoke-virtual {v6, v5}, Lcom/jichi/ob/model/UploadSupport$Companion;->fromDataSource(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/model/UploadSupport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jichi/ob/model/UploadSupport;->getAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1869
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1870
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 1638
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 1639
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1640
    const-string/jumbo v3, "\u6682\u65e0\u53ef\u7528\u4e0a\u4f20\u5e73\u53f0"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 1641
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    sget v3, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1643
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeUpload:Landroid/widget/GridLayout;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/4 v3, 0x4

    invoke-static {v4, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1646
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jichi/ob/model/DataSource;

    .line 1647
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v5, :cond_5

    const-string v5, "prefs"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_5
    invoke-virtual {v5, v3}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result v5

    .line 1648
    new-instance v6, Lcom/jichi/ob/ui/PlatformButton;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "requireContext(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-direct {v6, v7, v2, v8, v2}, Lcom/jichi/ob/ui/PlatformButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1649
    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jichi/ob/ui/PlatformButton;->setTag(Ljava/lang/Object;)V

    .line 1650
    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/jichi/ob/ui/MergeFragment;->platformColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jichi/ob/ui/PlatformButton;->bind(I)V

    .line 1651
    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n\u672a\u767b\u5f55"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/jichi/ob/ui/PlatformButton;->setButtonText(Ljava/lang/CharSequence;)V

    .line 1652
    new-instance v7, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v7}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 1653
    iput v4, v7, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/16 v9, 0x30

    int-to-float v9, v9

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/high16 v9, -0x80000000

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1654
    invoke-static {v9, v10}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v9

    iput-object v9, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    int-to-float v8, v8

    .line 1655
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v11

    mul-float/2addr v11, v8

    float-to-int v11, v11

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v12

    mul-float/2addr v8, v12

    float-to-int v8, v8

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1652
    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v7}, Lcom/jichi/ob/ui/PlatformButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1658
    new-instance v7, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda57;

    invoke-direct {v7, p0, v3, v6}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda57;-><init>(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/PlatformButton;)V

    invoke-virtual {v6, v7}, Lcom/jichi/ob/ui/PlatformButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v5, :cond_7

    .line 1665
    invoke-virtual {v6, v4, v4}, Lcom/jichi/ob/ui/PlatformButton;->setPlatformState(ZZ)V

    .line 1666
    :cond_7
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeUpload:Landroid/widget/GridLayout;

    if-nez v3, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    check-cast v6, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method private static final setupUploadGrid$lambda$152$lambda$151(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/PlatformButton;Landroid/view/View;)V
    .locals 1

    .line 1659
    iget-object p3, p0, Lcom/jichi/ob/ui/MergeFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez p3, :cond_0

    const-string p3, "prefs"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p3, p1}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u8bf7\u5148\u767b\u5f55 "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 1660
    :cond_1
    iget-object p3, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedUploadTags:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedUploadTags:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 1661
    :cond_2
    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedUploadTags:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Lcom/jichi/ob/ui/PlatformButton;->setPlatformState(ZZ)V

    return-void
.end method

.method private final showBrandDialog()V
    .locals 6

    .line 786
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "previewTrack"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getBrandIdx()I

    move-result v0

    const/4 v2, 0x2

    .line 788
    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB\uff08\u6587\u5b57\u6807\uff09"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 789
    const-string/jumbo v3, "\u81ea\u5b9a\u4e49\u900f\u660eLogo\uff08\u9009\u56fe\uff09"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 791
    sget v3, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_CUSTOM:I

    if-ne v0, v3, :cond_1

    move v4, v5

    .line 792
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    const-string/jumbo v3, "\u89d2\u6807\u6837\u5f0f"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 794
    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda54;

    invoke-direct {v3, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda54;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 809
    const-string/jumbo v2, "\u53d6\u6d88"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final showBrandDialog$lambda$101(Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 795
    const-string v0, "previewTrack"

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 797
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->setBrandIdx(I)V

    .line 798
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    invoke-virtual {p2, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->setBadgeUrl(Ljava/lang/String;)V

    .line 799
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "custom_badge.png"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_2

    .line 802
    :cond_2
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    sget p2, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_CUSTOM:I

    invoke-virtual {v1, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->setBrandIdx(I)V

    .line 803
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->pickStickerLogo()V

    :goto_2
    const/4 p2, 0x1

    .line 805
    iput-boolean p2, p0, Lcom/jichi/ob/ui/MergeFragment;->comboOverride:Z

    .line 806
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->refreshStickerChips()V

    .line 807
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final showDataEditDialog()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0xb

    .line 1547
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "distance"

    const-string/jumbo v3, "\u8ddd\u79bb (km)"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "duration"

    const-string/jumbo v4, "\u65f6\u957f (\u5982 1:00:33)"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "avgSpeed"

    const-string/jumbo v5, "\u5747\u901f (km/h)"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 1548
    const-string v2, "maxSpeed"

    const-string/jumbo v5, "\u6700\u5927\u901f\u5ea6"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "climb"

    const-string/jumbo v5, "\u7d2f\u8ba1\u722c\u5347 (m)"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "hr"

    const-string/jumbo v5, "\u5e73\u5747\u5fc3\u7387"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 1549
    const-string v2, "power"

    const-string/jumbo v5, "\u5e73\u5747\u529f\u7387"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    const-string v2, "kcal"

    const-string/jumbo v6, "\u5361\u8def\u91cc"

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v1, v6

    const-string v2, "cad"

    const-string/jumbo v6, "\u5e73\u5747\u8e0f\u9891"

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v1, v6

    .line 1550
    const-string v2, "altMax"

    const-string/jumbo v7, "\u6700\u9ad8\u6d77\u62d4 (m)"

    invoke-static {v2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v7, 0x9

    aput-object v2, v1, v7

    const-string v2, "altMin"

    const-string/jumbo v7, "\u6700\u4f4e\u6d77\u62d4 (m)"

    invoke-static {v2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v7, 0xa

    aput-object v2, v1, v7

    .line 1546
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1552
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1553
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0xe

    int-to-float v7, v7

    .line 1554
    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 1555
    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1557
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 1558
    check-cast v1, Ljava/lang/Iterable;

    .line 1866
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/Pair;

    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1559
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1560
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x10

    .line 1561
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1563
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1564
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextSize(F)V

    sget v13, Lcom/jichi/ob/R$color;->text_primary:I

    invoke-direct {v0, v13}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1565
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3ee66666    # 0.45f

    const/4 v15, -0x2

    invoke-direct {v13, v3, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1567
    new-instance v13, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1568
    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1569
    sget v8, Lcom/jichi/ob/R$color;->text_primary:I

    invoke-direct {v0, v8}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v8

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1570
    const-string/jumbo v8, "\u7559\u7a7a=\u7528\u5b9e\u9645\u503c"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1571
    sget v8, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-direct {v0, v8}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v8

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1572
    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1573
    iget-object v8, v0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v8, :cond_0

    const-string v8, "previewTrack"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v9, v8

    :goto_1
    invoke-virtual {v9, v10}, Lcom/jichi/ob/ui/TrackPreviewView;->currentDataOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1574
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    :cond_1
    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/jichi/ob/R$drawable;->input_box_bg:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    int-to-float v8, v6

    .line 1576
    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    int-to-float v14, v5

    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v16

    move/from16 v17, v4

    mul-float v4, v14, v16

    float-to-int v4, v4

    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v16

    mul-float v5, v8, v16

    float-to-int v5, v5

    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v16

    mul-float v14, v14, v16

    float-to-int v14, v14

    invoke-virtual {v13, v9, v4, v5, v14}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1577
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3f0ccccd    # 0.55f

    invoke-direct {v4, v3, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1579
    check-cast v12, Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v4, v13

    check-cast v4, Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1580
    check-cast v11, Landroid/view/View;

    const/4 v4, -0x1

    invoke-virtual {v2, v11, v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1581
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1582
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v5

    mul-float/2addr v8, v5

    float-to-int v5, v8

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1584
    invoke-static {v10, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v17

    const/4 v5, 0x6

    goto/16 :goto_0

    .line 1586
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1587
    const-string/jumbo v3, "\u624b\u8f93\u6570\u636e\uff08\u53ef\u7559\u7a7a\uff09"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1588
    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1589
    const-string/jumbo v2, "\u4fdd\u5b58"

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda60;

    invoke-direct {v3, v7, v0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda60;-><init>(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1595
    const-string/jumbo v2, "\u6e05\u7a7a\u624b\u8f93"

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda61;

    invoke-direct {v3, v0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda61;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1599
    const-string/jumbo v2, "\u53d6\u6d88"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1600
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final showDataEditDialog$lambda$142(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1590
    check-cast p0, Ljava/lang/Iterable;

    .line 1906
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 1591
    iget-object v0, p1, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "previewTrack"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, p3, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->setDataOverride(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :cond_2
    const-string/jumbo p0, "\u6570\u636e\u5df2\u66f4\u65b0\uff0c\u9884\u89c8\u5b9e\u65f6\u5237\u65b0"

    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private static final showDataEditDialog$lambda$143(Lcom/jichi/ob/ui/MergeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1596
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p1, :cond_0

    const-string p1, "previewTrack"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->clearDataOverrides()V

    .line 1597
    const-string/jumbo p1, "\u5df2\u6e05\u7a7a\u624b\u8f93\u6570\u636e"

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private final showDownloadedFilesDialog()V
    .locals 10

    .line 686
    sget-object v0, Lcom/jichi/ob/MainActivity;->Companion:Lcom/jichi/ob/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/MainActivity$Companion;->getSAVE_DIR()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    .line 1830
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1831
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 687
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, ".fit"

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, ".gpx"

    invoke-static {v6, v7, v9}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1831
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1832
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 1830
    check-cast v2, Ljava/lang/Iterable;

    .line 1833
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$showDownloadedFilesDialog$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/jichi/ob/ui/MergeFragment$showDownloadedFilesDialog$$inlined$sortedByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 689
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 690
    const-string/jumbo v0, "\u5df2\u4e0b\u8f7d\u76ee\u5f55\u6ca1\u6709 FIT/GPX \u6587\u4ef6\uff08\u53ef\u5148\u53bb\u540c\u6b65\u9875\u4e0b\u8f7d\uff0c\u6216\u7528\u6d4f\u89c8\u624b\u673a\u6587\u4ef6\u9009\u62e9\uff09"

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 693
    :cond_4
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 1834
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1835
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1836
    check-cast v4, Ljava/io/File;

    .line 693
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1836
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1837
    :cond_5
    check-cast v3, Ljava/util/List;

    .line 1834
    check-cast v3, Ljava/util/Collection;

    .line 1841
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 693
    check-cast v1, [Ljava/lang/String;

    .line 694
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Z

    .line 695
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 696
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5df2\u4e0b\u8f7d\u76ee\u5f55\uff08"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u4e2a FIT/GPX\uff0c\u5355\u9009=\u8d34\u7eb8 \u591a\u9009=\u5408\u5e76\uff09"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 697
    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda70;

    invoke-direct {v4, v2}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda70;-><init>([Z)V

    invoke-virtual {v3, v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 698
    const-string/jumbo v3, "\u786e\u5b9a"

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v4, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda71;

    invoke-direct {v4, v0, p0, v2}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda71;-><init>(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;[Z)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 707
    const-string/jumbo v1, "\u53d6\u6d88"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final showDownloadedFilesDialog$lambda$92([ZLandroid/content/DialogInterface;IZ)V
    .locals 0

    .line 697
    aput-boolean p3, p0, p2

    return-void
.end method

.method private static final showDownloadedFilesDialog$lambda$97(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;[ZLandroid/content/DialogInterface;I)V
    .locals 3

    .line 699
    check-cast p0, Ljava/lang/Iterable;

    .line 1871
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 1874
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    if-gez p4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1875
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/io/File;

    .line 699
    aget-boolean p4, p2, p4

    if-eqz p4, :cond_1

    .line 1875
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    move p4, v1

    goto :goto_0

    .line 1878
    :cond_2
    check-cast p3, Ljava/util/List;

    .line 700
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 701
    const-string/jumbo p0, "\u672a\u9009\u62e9\u6587\u4ef6"

    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 703
    :cond_3
    check-cast p3, Ljava/lang/Iterable;

    .line 1879
    new-instance p0, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 1880
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1881
    check-cast v0, Ljava/io/File;

    .line 703
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    check-cast v0, [B

    .line 1881
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1882
    :cond_5
    check-cast p0, Ljava/util/List;

    .line 1883
    new-instance p4, Ljava/util/ArrayList;

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p4, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p4, Ljava/util/Collection;

    .line 1884
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1885
    check-cast p3, Ljava/io/File;

    .line 704
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    .line 1885
    invoke-interface {p4, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1886
    :cond_6
    check-cast p4, Ljava/util/List;

    .line 704
    invoke-direct {p1, p4, p0}, Lcom/jichi/ob/ui/MergeFragment;->processLocalFiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final showLocalSourceChoices()V
    .locals 6

    .line 653
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 654
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x12

    int-to-float v1, v1

    .line 655
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/16 v3, 0x8

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    const/4 v4, 0x2

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 658
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    const-string/jumbo v2, "\ud83d\udcc1 \u672c\u5730\u6587\u4ef6\u6570\u636e\u6e90\n\uff08FIT/GPX \u00b7 \u5355\u9009=\u8d34\u7eb8 \u591a\u9009=\u5408\u5e76\uff09"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 660
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 661
    const-string/jumbo v2, "\u53d6\u6d88"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 662
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 679
    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda68;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda68;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    const-string/jumbo v3, "\ud83d\udcc1 \u4ece\u5df2\u4e0b\u8f7d\u76ee\u5f55\u9009\u62e9"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/jichi/ob/ui/MergeFragment;->showLocalSourceChoices$addBtn(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 680
    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda69;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda69;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    const-string/jumbo v3, "\ud83d\uddc2 \u6d4f\u89c8\u624b\u673a\u6587\u4ef6"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/jichi/ob/ui/MergeFragment;->showLocalSourceChoices$addBtn(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 681
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final showLocalSourceChoices$addBtn(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/MergeFragment;",
            "Landroid/widget/LinearLayout;",
            "Landroid/app/AlertDialog;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 664
    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;)V

    .line 665
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v0, p3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    .line 666
    invoke-virtual {v0, p3}, Lcom/google/android/material/button/MaterialButton;->setAllCaps(Z)V

    const/16 v1, 0xc

    int-to-float v1, v1

    .line 667
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 668
    invoke-virtual {v0, p3}, Lcom/google/android/material/button/MaterialButton;->setInsetTop(I)V

    invoke-virtual {v0, p3}, Lcom/google/android/material/button/MaterialButton;->setInsetBottom(I)V

    .line 669
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x34

    int-to-float v1, v1

    .line 670
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, -0x1

    .line 669
    invoke-direct {p3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    int-to-float v1, v1

    .line 671
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->getDp()F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    .line 669
    invoke-virtual {v0, p3}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    new-instance p0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda76;

    invoke-direct {p0, p2, p4}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda76;-><init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static final showLocalSourceChoices$addBtn$lambda$86(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 674
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 675
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showLocalSourceChoices$lambda$87(Lcom/jichi/ob/ui/MergeFragment;)Lkotlin/Unit;
    .locals 0

    .line 679
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->showDownloadedFilesDialog()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showLocalSourceChoices$lambda$88(Lcom/jichi/ob/ui/MergeFragment;)Lkotlin/Unit;
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->launchFilePicker()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showPreview(Lcom/jichi/ob/merge/TrackMerger$MergedResult;I)V
    .locals 7

    .line 1208
    const-string v0, " \u00b7 "

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const-string v2, "previewTrack"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->setPoints(Ljava/util/List;)V

    .line 1211
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getStartTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1212
    sget-object v4, Lcom/jichi/ob/merge/TrackMerger;->INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getSport()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jichi/ob/merge/TrackMerger;->sportName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "running"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v4, "\u8dd1\u6b65"

    goto :goto_0

    :cond_1
    const-string v5, "hiking"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "\u5f92\u6b65"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "\u9a91\u884c"

    .line 1213
    :goto_0
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jichi/ob/ui/TrackPreviewView;->setTitleOverride(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    sget v6, Lcom/jichi/ob/R$id;->editStickerTitle:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1216
    :catch_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    const-string v1, "RIDING"

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->setTitleOverride(Ljava/lang/String;)V

    .line 1218
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->setStickerPreview(Z)V

    .line 1219
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->syncPreviewParams()V

    .line 1220
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment;->buildStats(Lcom/jichi/ob/merge/TrackMerger$MergedResult;I)V

    .line 1221
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeStepHint:Landroid/widget/TextView;

    if-nez p1, :cond_7

    const-string p1, "mergeStepHint"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v3, p1

    :goto_2
    const/4 p1, 0x2

    if-lt p2, p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "3/4 \u00b7 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u6761\u5df2\u5408\u5e76 \u2192 1 \u6761\uff08\u53ef\u5bfc\u51fa\u8d34\u7eb8/GPX/FIT\uff09"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    const-string p1, "3/4 \u00b7 \u5355\u6761\u9884\u89c8\uff08\u53ef\u5bfc\u51fa\u8d34\u7eb8/GPX/FIT\uff09"

    :goto_3
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 1222
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->showStep(I)V

    return-void
.end method

.method private final showStep(I)V
    .locals 8

    .line 558
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stepSource:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "stepSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne p1, v2, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stepSelect:Landroid/view/View;

    if-nez v0, :cond_3

    const-string/jumbo v0, "stepSelect"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stepPreview:Landroid/view/View;

    if-nez v0, :cond_5

    const-string/jumbo v0, "stepPreview"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    const/4 v6, 0x3

    if-ne p1, v6, :cond_6

    move v7, v3

    goto :goto_2

    :cond_6
    move v7, v4

    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stepResult:Landroid/view/View;

    if-nez v0, :cond_7

    const-string/jumbo v0, "stepResult"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    const/4 v7, 0x4

    if-ne p1, v7, :cond_8

    goto :goto_3

    :cond_8
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-ne p1, v6, :cond_a

    .line 566
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_9

    const-string v0, "previewTrack"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getAspect()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->sizeCardForAspect(Ljava/lang/String;)V

    .line 568
    :cond_a
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeTitle:Landroid/widget/TextView;

    if-nez v0, :cond_b

    const-string v0, "mergeTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    if-eq p1, v2, :cond_e

    if-eq p1, v5, :cond_d

    if-eq p1, v6, :cond_c

    .line 572
    const-string/jumbo v2, "\u5408\u5e76\u5b8c\u6210"

    goto :goto_4

    .line 571
    :cond_c
    const-string/jumbo v2, "\u5408\u5e76\u9884\u89c8"

    goto :goto_4

    .line 570
    :cond_d
    const-string/jumbo v2, "\u9009\u62e9\u8bb0\u5f55"

    goto :goto_4

    .line 569
    :cond_e
    const-string/jumbo v2, "\u8f68\u8ff9\u5408\u5e76"

    .line 572
    :goto_4
    check-cast v2, Ljava/lang/CharSequence;

    .line 568
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeStepHint:Landroid/widget/TextView;

    if-nez v0, :cond_f

    const-string v0, "mergeStepHint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object v1, v0

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final sizeCardForAspect(Ljava/lang/String;)V
    .locals 2

    .line 518
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/jichi/ob/R$id;->previewCardWrap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 554
    invoke-static {v0, p1, p0, v1}, Lcom/jichi/ob/ui/MergeFragment;->sizeCardForAspect$trySize(Landroid/view/View;Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final sizeCardForAspect$trySize(Landroid/view/View;Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;I)V
    .locals 1

    .line 520
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda50;-><init>(Landroid/view/View;ILjava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final sizeCardForAspect$trySize$lambda$72(Landroid/view/View;ILjava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 7

    .line 521
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_0
    const/4 v6, 0x4

    if-ge v4, v6, :cond_2

    .line 524
    instance-of v6, v1, Landroid/widget/ScrollView;

    if-eqz v6, :cond_0

    move-object v5, v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 525
    :cond_2
    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    move-object v2, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_4
    if-lez v0, :cond_5

    if-gtz v3, :cond_6

    :cond_5
    const/16 v1, 0xc

    if-ge p1, v1, :cond_6

    .line 527
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda78;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda78;-><init>(ILandroid/view/View;Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V

    const-wide/16 p1, 0x3c

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 531
    :cond_6
    const-string p1, "3:4"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x3faaaaab

    goto :goto_2

    .line 532
    :cond_7
    const-string p1, "9:16"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x3fe38e39

    goto :goto_2

    :cond_8
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    int-to-float p2, v0

    mul-float/2addr p2, p1

    float-to-int p2, p2

    if-lez v3, :cond_9

    if-le p2, v3, :cond_9

    int-to-float p2, v3

    div-float/2addr p2, p1

    float-to-int v0, p2

    goto :goto_3

    :cond_9
    move v3, p2

    :goto_3
    if-lez v0, :cond_a

    if-lez v3, :cond_a

    .line 542
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 543
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 544
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 545
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    invoke-virtual {p3}, Lcom/jichi/ob/ui/MergeFragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    sget p1, Lcom/jichi/ob/R$id;->previewTrack:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/jichi/ob/ui/TrackPreviewView;

    if-eqz p0, :cond_a

    new-instance p1, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda79;

    invoke-direct {p1, p3}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda79;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    const-wide/16 p2, 0xfa

    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/ui/TrackPreviewView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method

.method private static final sizeCardForAspect$trySize$lambda$72$lambda$70(ILandroid/view/View;Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    add-int/lit8 p0, p0, 0x1

    .line 527
    invoke-static {p1, p2, p3, p0}, Lcom/jichi/ob/ui/MergeFragment;->sizeCardForAspect$trySize(Landroid/view/View;Ljava/lang/String;Lcom/jichi/ob/ui/MergeFragment;I)V

    return-void
.end method

.method private static final sizeCardForAspect$trySize$lambda$72$lambda$71(Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v1, 0x0

    const-string v2, "previewTrack"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->webReadyPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/jichi/ob/ui/TrackPreviewView;->refreshWebRenderPublic()V

    :cond_2
    return-void
.end method

.method private final syncPreviewParams()V
    .locals 4

    .line 1259
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v1, 0x0

    const-string v2, "previewTrack"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget v3, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerStyle:I

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setDataStyle(I)V

    .line 1260
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-boolean v3, p0, Lcom/jichi/ob/ui/MergeFragment;->sticker3d:Z

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setInclude3d(Z)V

    .line 1261
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget v3, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerLineMode:I

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setLineColorMode(I)V

    .line 1262
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget v3, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerTextMode:I

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setTextColorMode(I)V

    .line 1263
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerItems:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setItems(Ljava/util/List;)V

    .line 1264
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    iget v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerPos:I

    invoke-virtual {v1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setPosMode(I)V

    return-void
.end method

.method private final toast(Ljava/lang/String;)V
    .locals 2

    .line 1722
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final toggleRangeMode()V
    .locals 2

    .line 1115
    iget-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    const/4 v1, -0x1

    .line 1116
    iput v1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeAnchor:I

    if-nez v0, :cond_0

    .line 1117
    const-string/jumbo v0, "\u8fde\u7eed\u591a\u9009\u6a21\u5f0f\uff1a\u5148\u70b9\u8d77\u70b9\u8bb0\u5f55\uff0c\u518d\u70b9\u7ec8\u70b9\u8bb0\u5f55"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u5df2\u9000\u51fa\u8fde\u7eed\u591a\u9009"

    :goto_0
    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    .line 1118
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->updateRangeBtn()V

    .line 1119
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeAdapter:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private final trackLabel(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)Ljava/lang/CharSequence;
    .locals 4

    .line 1317
    sget-object v0, Lcom/jichi/ob/ui/MergeFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const/16 v0, -0x3800

    goto :goto_0

    :pswitch_1
    const v0, -0xff4001

    goto :goto_0

    :pswitch_2
    const v0, -0xc300

    goto :goto_0

    :pswitch_3
    const v0, -0xd13c

    goto :goto_0

    :pswitch_4
    const v0, -0x655f5a

    goto :goto_0

    :pswitch_5
    const v0, -0xeee7d9

    goto :goto_0

    :pswitch_6
    const v0, -0x171513

    goto :goto_0

    :pswitch_7
    const v0, -0x9600

    .line 1327
    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8f68\u8ff9:\u25cf"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1328
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v0, 0x4

    const/16 v2, 0x21

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1329
    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

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

.method private final updateBadgeVisibility()V
    .locals 5

    .line 1310
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerCardTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "stickerCardTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-boolean v2, p0, Lcom/jichi/ob/ui/MergeFragment;->badgeOn:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1311
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerCardPage:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string/jumbo v0, "stickerCardPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-boolean v2, p0, Lcom/jichi/ob/ui/MergeFragment;->badgeOn:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez v0, :cond_4

    const-string v0, "previewTrack"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    iget-boolean v0, p0, Lcom/jichi/ob/ui/MergeFragment;->badgeOn:Z

    invoke-virtual {v1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setBadgeOn(Z)V

    return-void
.end method

.method private final updateCategoryTabs()V
    .locals 8

    .line 1342
    iget v0, p0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/jichi/ob/ui/MergeFragment;->templateIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getCategory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1343
    :goto_0
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->categoryTabRow:Landroid/widget/LinearLayout;

    const-string v3, "categoryTabRow"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    .line 1344
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment;->categoryTabRow:Landroid/widget/LinearLayout;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    if-nez v5, :cond_4

    goto :goto_4

    .line 1345
    :cond_4
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 1346
    invoke-direct {p0, v6}, Lcom/jichi/ob/ui/MergeFragment;->chipBg(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_5

    .line 1347
    sget v6, Lcom/jichi/ob/R$color;->white:I

    goto :goto_3

    :cond_5
    sget v6, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_3
    invoke-direct {p0, v6}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private final updateRangeBtn()V
    .locals 3

    .line 1096
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Lcom/jichi/ob/R$id;->btnMergeRange:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1097
    :cond_0
    iget-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/jichi/ob/R$drawable;->merge_chip_white_on:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 1098
    :cond_1
    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/jichi/ob/R$drawable;->merge_chip_white:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1097
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1099
    iget-boolean v1, p0, Lcom/jichi/ob/ui/MergeFragment;->rangeMode:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/jichi/ob/R$color;->text_primary:I

    :goto_1
    invoke-direct {p0, v1}, Lcom/jichi/ob/ui/MergeFragment;->color(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final uploadMerge()V
    .locals 11

    .line 1671
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment;->savedFile:Ljava/io/File;

    if-nez v2, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/jichi/ob/ui/MergeFragment;

    const-string/jumbo v0, "\u5c1a\u672a\u4fdd\u5b58\u5408\u5e76\u6587\u4ef6"

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->selectedUploadTags:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u672a\u9009\u62e9\u4e0a\u4f20\u5e73\u53f0\uff0c\u6587\u4ef6\u5df2\u5b58\u672c\u5730"

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/MergeFragment;->toast(Ljava/lang/String;)V

    return-void

    .line 1673
    :cond_1
    new-instance v4, Lcom/jichi/ob/api/UploadEngine;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/jichi/ob/api/UploadEngine;-><init>(Landroid/content/Context;)V

    .line 1674
    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment;->mergedResult:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    if-nez v3, :cond_2

    return-void

    .line 1675
    :cond_2
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnUploadMerge:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    const-string v5, "btnUploadMerge"

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1676
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment;->btnUploadMerge:Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    const-string/jumbo v0, "\u4e0a\u4f20\u4e2d..."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 1677
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/io/File;Lcom/jichi/ob/merge/TrackMerger$MergedResult;Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    sget p3, Lcom/jichi/ob/R$layout;->fragment_merge:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 229
    new-instance p2, Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    .line 231
    sget p2, Lcom/jichi/ob/R$id;->stepSource:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->stepSource:Landroid/view/View;

    .line 232
    sget p2, Lcom/jichi/ob/R$id;->stepSelect:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->stepSelect:Landroid/view/View;

    .line 233
    sget p2, Lcom/jichi/ob/R$id;->stepPreview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->stepPreview:Landroid/view/View;

    .line 234
    sget p2, Lcom/jichi/ob/R$id;->stepResult:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->stepResult:Landroid/view/View;

    .line 235
    sget p2, Lcom/jichi/ob/R$id;->mergeTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeTitle:Landroid/widget/TextView;

    .line 236
    sget p2, Lcom/jichi/ob/R$id;->mergeStepHint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->mergeStepHint:Landroid/widget/TextView;

    .line 238
    sget p2, Lcom/jichi/ob/R$id;->gridMergeSource:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/GridLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeSource:Landroid/widget/GridLayout;

    .line 239
    sget p2, Lcom/jichi/ob/R$id;->btnMergeNext:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnMergeNext:Lcom/google/android/material/button/MaterialButton;

    .line 241
    sget p2, Lcom/jichi/ob/R$id;->rvMergeList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->rvMergeList:Landroidx/recyclerview/widget/RecyclerView;

    .line 242
    sget p2, Lcom/jichi/ob/R$id;->tvMergeHint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeHint:Landroid/widget/TextView;

    .line 243
    sget p2, Lcom/jichi/ob/R$id;->tvMergeSelected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeSelected:Landroid/widget/TextView;

    .line 244
    sget p2, Lcom/jichi/ob/R$id;->btnDoMerge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnDoMerge:Lcom/google/android/material/button/MaterialButton;

    .line 245
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->rvMergeList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p2, "rvMergeList"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/MergeFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 248
    sget p2, Lcom/jichi/ob/R$id;->btnLoadMore:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 249
    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    sget p2, Lcom/jichi/ob/R$id;->previewTrack:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/jichi/ob/ui/TrackPreviewView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    .line 255
    sget p2, Lcom/jichi/ob/R$id;->categoryTabRow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->categoryTabRow:Landroid/widget/LinearLayout;

    .line 256
    sget p2, Lcom/jichi/ob/R$id;->bgPickerRow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/HorizontalScrollView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->bgPickerRow:Landroid/widget/HorizontalScrollView;

    .line 257
    sget p2, Lcom/jichi/ob/R$id;->bgChipRow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->bgChipRow:Landroid/widget/LinearLayout;

    .line 258
    sget p2, Lcom/jichi/ob/R$id;->comboPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->comboPanel:Landroid/widget/LinearLayout;

    .line 259
    sget p2, Lcom/jichi/ob/R$id;->gridMergeStats:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/GridLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeStats:Landroid/widget/GridLayout;

    .line 260
    sget p2, Lcom/jichi/ob/R$id;->btnSaveMerge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSaveMerge:Lcom/google/android/material/button/MaterialButton;

    .line 261
    sget p2, Lcom/jichi/ob/R$id;->btnExportGpx:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnExportGpx:Landroid/widget/TextView;

    .line 262
    sget p2, Lcom/jichi/ob/R$id;->btnExportFit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnExportFit:Landroid/widget/TextView;

    .line 263
    sget p2, Lcom/jichi/ob/R$id;->btnExportSticker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnExportSticker:Landroid/widget/TextView;

    .line 264
    sget p2, Lcom/jichi/ob/R$id;->btnStickerStyle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerStyle:Landroid/widget/TextView;

    .line 265
    sget p2, Lcom/jichi/ob/R$id;->btnSticker3d:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSticker3d:Landroid/widget/TextView;

    .line 266
    sget p2, Lcom/jichi/ob/R$id;->btnStickerColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerColor:Landroid/widget/TextView;

    .line 267
    sget p2, Lcom/jichi/ob/R$id;->btnStickerTextColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTextColor:Landroid/widget/TextView;

    .line 268
    sget p2, Lcom/jichi/ob/R$id;->btnStickerItems:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerItems:Landroid/widget/TextView;

    .line 269
    sget p2, Lcom/jichi/ob/R$id;->btnStickerPos:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerPos:Landroid/widget/TextView;

    .line 270
    sget p2, Lcom/jichi/ob/R$id;->btnStickerGlow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerGlow:Landroid/widget/TextView;

    .line 271
    sget p2, Lcom/jichi/ob/R$id;->btnSticker3dBand:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSticker3dBand:Landroid/widget/TextView;

    .line 272
    sget p2, Lcom/jichi/ob/R$id;->btnStickerTransparent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTransparent:Landroid/widget/TextView;

    .line 273
    sget p2, Lcom/jichi/ob/R$id;->btnStickerWidth:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerWidth:Landroid/widget/TextView;

    .line 274
    sget p2, Lcom/jichi/ob/R$id;->btnStickerDataLayer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerDataLayer:Landroid/widget/TextView;

    .line 275
    sget p2, Lcom/jichi/ob/R$id;->btnStickerWatermark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerWatermark:Landroid/widget/TextView;

    .line 276
    sget p2, Lcom/jichi/ob/R$id;->btnStickerBadge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerBadge:Landroid/widget/TextView;

    .line 277
    sget p2, Lcom/jichi/ob/R$id;->btnStickerTrack:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTrack:Landroid/widget/TextView;

    .line 278
    sget p2, Lcom/jichi/ob/R$id;->btnStickerBrand:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerBrand:Landroid/widget/TextView;

    .line 279
    sget p2, Lcom/jichi/ob/R$id;->btnStickerSummary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerSummary:Landroid/widget/TextView;

    .line 280
    sget p2, Lcom/jichi/ob/R$id;->stickerTemplateName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerTemplateName:Landroid/widget/TextView;

    .line 282
    sget p2, Lcom/jichi/ob/R$id;->stickerCardTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerCardTitle:Landroid/widget/TextView;

    .line 283
    sget p2, Lcom/jichi/ob/R$id;->stickerCardPage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->stickerCardPage:Landroid/widget/TextView;

    .line 285
    sget p2, Lcom/jichi/ob/R$id;->previewCardWrap:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 286
    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 295
    sget p2, Lcom/jichi/ob/R$id;->btnStickerPhoto:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerPhoto:Landroid/widget/TextView;

    if-nez p2, :cond_1

    .line 296
    const-string p2, "btnStickerPhoto"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda14;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    sget p2, Lcom/jichi/ob/R$id;->btnStickerPrev:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda26;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    sget p2, Lcom/jichi/ob/R$id;->btnStickerNext:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda38;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    sget p2, Lcom/jichi/ob/R$id;->btnStickerEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda45;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    sget p2, Lcom/jichi/ob/R$id;->btnTrackZoomOut:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda46;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    sget p2, Lcom/jichi/ob/R$id;->btnTrackZoomIn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda47;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda47;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    sget p2, Lcom/jichi/ob/R$id;->btnTrackRotateLeft:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda48;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda48;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    sget p2, Lcom/jichi/ob/R$id;->btnTrackRotateRight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda49;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda49;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    sget p2, Lcom/jichi/ob/R$id;->btnTrackTiltBack:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda11;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    sget p2, Lcom/jichi/ob/R$id;->btnTrackTiltForward:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda22;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    sget p2, Lcom/jichi/ob/R$id;->btnTrackReset:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda33;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    sget p2, Lcom/jichi/ob/R$id;->btnTrackUp:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda44;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    sget p2, Lcom/jichi/ob/R$id;->btnTrackDown:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda55;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda55;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    sget p2, Lcom/jichi/ob/R$id;->btnTrackLeft:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda66;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda66;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    sget p2, Lcom/jichi/ob/R$id;->btnTrackRight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda77;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda77;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    sget p2, Lcom/jichi/ob/R$id;->editStickerTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 329
    sget v2, Lcom/jichi/ob/R$id;->btnApplyTitle:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda80;

    invoke-direct {v3, p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda80;-><init>(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda81;

    invoke-direct {v2, p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda81;-><init>(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 342
    sget p2, Lcom/jichi/ob/R$id;->btnEditData:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    sget p2, Lcom/jichi/ob/R$id;->btnClearData:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    sget p2, Lcom/jichi/ob/R$id;->chipAspect11:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 350
    sget v2, Lcom/jichi/ob/R$id;->chipAspect34:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 351
    sget v3, Lcom/jichi/ob/R$id;->chipAspect916:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 361
    new-instance v4, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p2, v2, v3}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v4, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p2, v2, v3}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v4, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p2, v2, v3}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const-string v4, "1:1"

    invoke-static {p0, p2, v2, v3, v4}, Lcom/jichi/ob/ui/MergeFragment;->onViewCreated$applyAspect(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 367
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->previewTrack:Lcom/jichi/ob/ui/TrackPreviewView;

    if-nez p2, :cond_2

    const-string p2, "previewTrack"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_2
    new-instance v2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda7;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->setOnTemplateSwipe(Lkotlin/jvm/functions/Function1;)V

    .line 372
    sget p2, Lcom/jichi/ob/R$id;->tvMergeResultTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeResultTitle:Landroid/widget/TextView;

    .line 373
    sget p2, Lcom/jichi/ob/R$id;->tvMergeResultFile:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeResultFile:Landroid/widget/TextView;

    .line 374
    sget p2, Lcom/jichi/ob/R$id;->tvMergeResultPath:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->tvMergeResultPath:Landroid/widget/TextView;

    .line 375
    sget p2, Lcom/jichi/ob/R$id;->gridMergeUpload:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/GridLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->gridMergeUpload:Landroid/widget/GridLayout;

    .line 376
    sget p2, Lcom/jichi/ob/R$id;->btnUploadMerge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnUploadMerge:Lcom/google/android/material/button/MaterialButton;

    .line 377
    sget p2, Lcom/jichi/ob/R$id;->btnMergeDone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnMergeDone:Landroid/widget/TextView;

    .line 379
    sget p2, Lcom/jichi/ob/R$id;->btnMergeBack:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda8;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnMergeNext:Lcom/google/android/material/button/MaterialButton;

    if-nez p2, :cond_3

    const-string p2, "btnMergeNext"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_3
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda9;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    sget p2, Lcom/jichi/ob/R$id;->btnPickDate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda10;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    sget p2, Lcom/jichi/ob/R$id;->btnClearDate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda12;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    sget p2, Lcom/jichi/ob/R$id;->btnMergeAllToday:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda13;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    sget p2, Lcom/jichi/ob/R$id;->btnMergeRange:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda15;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    sget p2, Lcom/jichi/ob/R$id;->btnMergeClear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda16;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnDoMerge:Lcom/google/android/material/button/MaterialButton;

    if-nez p2, :cond_4

    const-string p2, "btnDoMerge"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_4
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda17;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSaveMerge:Lcom/google/android/material/button/MaterialButton;

    if-nez p2, :cond_5

    const-string p2, "btnSaveMerge"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_5
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda18;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnExportGpx:Landroid/widget/TextView;

    if-nez p2, :cond_6

    const-string p2, "btnExportGpx"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_6
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda19;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnExportFit:Landroid/widget/TextView;

    if-nez p2, :cond_7

    const-string p2, "btnExportFit"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_7
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda20;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnExportSticker:Landroid/widget/TextView;

    if-nez p2, :cond_8

    const-string p2, "btnExportSticker"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_8
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda21;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerStyle:Landroid/widget/TextView;

    if-nez p2, :cond_9

    const-string p2, "btnStickerStyle"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_9
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda23;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSticker3d:Landroid/widget/TextView;

    if-nez p2, :cond_a

    const-string p2, "btnSticker3d"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_a
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda24;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerColor:Landroid/widget/TextView;

    if-nez p2, :cond_b

    const-string p2, "btnStickerColor"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_b
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda25;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTextColor:Landroid/widget/TextView;

    if-nez p2, :cond_c

    const-string p2, "btnStickerTextColor"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_c
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda27;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerGlow:Landroid/widget/TextView;

    if-nez p2, :cond_d

    const-string p2, "btnStickerGlow"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_d
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda28;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnSticker3dBand:Landroid/widget/TextView;

    if-nez p2, :cond_e

    const-string p2, "btnSticker3dBand"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_e
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda29;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerWidth:Landroid/widget/TextView;

    if-nez p2, :cond_f

    const-string p2, "btnStickerWidth"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_f
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda30;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTransparent:Landroid/widget/TextView;

    if-nez p2, :cond_10

    const-string p2, "btnStickerTransparent"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_10
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda31;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerDataLayer:Landroid/widget/TextView;

    if-nez p2, :cond_11

    const-string p2, "btnStickerDataLayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_11
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda32;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerWatermark:Landroid/widget/TextView;

    if-nez p2, :cond_12

    const-string p2, "btnStickerWatermark"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_12
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda34;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    sget p2, Lcom/jichi/ob/R$id;->btnStickerBadge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda35;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda35;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerTrack:Landroid/widget/TextView;

    if-nez p1, :cond_13

    const-string p1, "btnStickerTrack"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_13
    new-instance p2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda36;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda36;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerBrand:Landroid/widget/TextView;

    if-nez p1, :cond_14

    const-string p1, "btnStickerBrand"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_14
    new-instance p2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda37;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda37;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/jichi/ob/ui/MergeFragment$onViewCreated$51;

    invoke-direct {p1, p0, v1}, Lcom/jichi/ob/ui/MergeFragment$onViewCreated$51;-><init>(Lcom/jichi/ob/ui/MergeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 495
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerSummary:Landroid/widget/TextView;

    if-nez p1, :cond_15

    const-string p1, "btnStickerSummary"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_15
    new-instance p2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda39;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda39;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerPos:Landroid/widget/TextView;

    if-nez p1, :cond_16

    const-string p1, "btnStickerPos"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_16
    new-instance p2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda40;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnStickerItems:Landroid/widget/TextView;

    if-nez p1, :cond_17

    const-string p1, "btnStickerItems"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_17
    new-instance p2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda41;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda41;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnUploadMerge:Lcom/google/android/material/button/MaterialButton;

    if-nez p1, :cond_18

    const-string p1, "btnUploadMerge"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_18
    new-instance p2, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda42;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda42;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment;->btnMergeDone:Landroid/widget/TextView;

    if-nez p1, :cond_19

    const-string p1, "btnMergeDone"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_19
    move-object v1, p1

    :goto_0
    new-instance p1, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda43;

    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda43;-><init>(Lcom/jichi/ob/ui/MergeFragment;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->setupSourceGrid()V

    .line 506
    invoke-direct {p0}, Lcom/jichi/ob/ui/MergeFragment;->buildCategoryTabs()V

    const/4 p1, 0x0

    .line 507
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->selectTemplate(I)V

    const/4 p1, 0x1

    .line 508
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->showStep(I)V

    return-void
.end method

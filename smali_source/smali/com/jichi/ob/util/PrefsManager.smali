.class public final Lcom/jichi/ob/util/PrefsManager;
.super Ljava/lang/Object;
.source "PrefsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/util/PrefsManager$Companion;,
        Lcom/jichi/ob/util/PrefsManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrefsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrefsManager.kt\ncom/jichi/ob/util/PrefsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,707:1\n1#2:708\n1#2:742\n1634#3,3:709\n1563#3:712\n1634#3,3:713\n774#3:716\n865#3,2:717\n774#3:719\n865#3,2:720\n1563#3:722\n1634#3,3:723\n774#3:726\n865#3,2:727\n774#3:729\n865#3,2:730\n1617#3,9:732\n1869#3:741\n1870#3:743\n1626#3:744\n1869#3,2:745\n360#3,7:747\n774#3:754\n865#3,2:755\n*S KotlinDebug\n*F\n+ 1 PrefsManager.kt\ncom/jichi/ob/util/PrefsManager\n*L\n672#1:742\n518#1:709,3\n586#1:712\n586#1:713,3\n586#1:716\n586#1:717,2\n589#1:719\n589#1:720,2\n601#1:722\n601#1:723,3\n601#1:726\n601#1:727,2\n661#1:729\n661#1:730,2\n672#1:732,9\n672#1:741\n672#1:743\n672#1:744\n680#1:745,2\n686#1:747,7\n691#1:754\n691#1:755,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000g\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008;\n\u0002\u0018\u0002\n\u0003\u0008\u0098\u0001\n\u0002\u0010#\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u00082\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u00c8\u00022\u00020\u0001:\u0002\u00c8\u0002B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000bJ\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u000bJ\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u0018\u001a\u00020\u000eJ\u000e\u0010\u0019\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u001d\u001a\u00020\u000eJ\u000e\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u000bJ\u0008\u0010 \u001a\u0004\u0018\u00010\u000bJ\u0006\u0010!\u001a\u00020\u000eJ\u000e\u0010\"\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u000bJ\u0008\u0010#\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010$\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010%\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010&\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\u000bJ\u0008\u0010(\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010)\u001a\u00020\u000eJ\u000e\u0010*\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010+\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010,\u001a\u00020\u000eJ\u000e\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u000bJ\u0008\u0010/\u001a\u0004\u0018\u00010\u000bJ\u000e\u00100\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\u0008\u00102\u001a\u0004\u0018\u00010\u000bJ\u000e\u00103\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u00104\u001a\u0004\u0018\u00010\u000bJ\u0006\u00105\u001a\u00020\u000eJ\u000e\u00106\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u000bJ\u0008\u00107\u001a\u0004\u0018\u00010\u000bJ\u000e\u00108\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\u0008\u00109\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010:\u001a\u00020\t2\u0006\u0010;\u001a\u00020\u000bJ\u0008\u0010<\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010=\u001a\u00020\u000eJ\u000e\u0010>\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000bJ\u0008\u0010?\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010@\u001a\u00020\t2\u0006\u0010A\u001a\u00020\u000bJ\u0008\u0010B\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010C\u001a\u00020\u000eJ\u000e\u0010D\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u000bJ\u0008\u0010E\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010F\u001a\u00020\u000eJ\u0006\u0010G\u001a\u00020\tJ\u000e\u0010H\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020JJ\u000e\u0010K\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020JJ\u000e\u0010L\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020JJ\u000e\u0010M\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020JJ \u0010N\u001a\u00020\t2\u0006\u0010I\u001a\u00020J2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010O\u001a\u00020\u000bJ\u0010\u0010P\u001a\u0004\u0018\u00010\u000b2\u0006\u0010I\u001a\u00020JJ\u0010\u0010Q\u001a\u0004\u0018\u00010\u000b2\u0006\u0010I\u001a\u00020JJ\u0016\u0010R\u001a\u00020\t2\u0006\u0010I\u001a\u00020J2\u0006\u0010S\u001a\u00020\u000bJ\u0016\u0010T\u001a\u00020\t2\u0006\u0010I\u001a\u00020J2\u0006\u0010S\u001a\u00020\u000bJ\u0010\u0010U\u001a\u0004\u0018\u00010\u000b2\u0006\u0010I\u001a\u00020JJ\u0010\u0010V\u001a\u0004\u0018\u00010\u000b2\u0006\u0010I\u001a\u00020JJ\u000e\u0010W\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020JJ\u000e\u0010X\u001a\u00020\t2\u0006\u0010I\u001a\u00020JJ\u000e\u0010Y\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\u0008\u0010[\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\\\u001a\u00020\t2\u0006\u0010]\u001a\u00020\u000bJ\u0008\u0010^\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010_\u001a\u00020\u000eJ\u000e\u0010`\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\u0008\u0010a\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010b\u001a\u00020\t2\u0006\u0010]\u001a\u00020\u000bJ\u0008\u0010c\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010d\u001a\u00020\u000eJ\u0016\u0010e\u001a\u00020\t2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000bJ\u0008\u0010h\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010i\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010j\u001a\u00020\tJ\u0016\u0010k\u001a\u00020\t2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000bJ\u0008\u0010l\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010m\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010n\u001a\u00020\tJ\u000e\u0010o\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\u0008\u0010p\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010q\u001a\u00020\t2\u0006\u0010r\u001a\u00020\u000bJ\u0006\u0010s\u001a\u00020\u000bJ\u000e\u0010t\u001a\u00020\t2\u0006\u0010]\u001a\u00020\u000bJ\u0008\u0010u\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010v\u001a\u00020\u000eJ\u000e\u0010w\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\u0008\u0010x\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010y\u001a\u00020\t2\u0006\u0010r\u001a\u00020\u000bJ\u0006\u0010z\u001a\u00020\u000bJ\u000e\u0010{\u001a\u00020\t2\u0006\u0010]\u001a\u00020\u000bJ\u0008\u0010|\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010}\u001a\u00020\u000eJ\u000e\u0010~\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\u0008\u0010\u007f\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u0080\u0001\u001a\u00020\t2\u0006\u0010r\u001a\u00020\u000bJ\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u0082\u0001\u001a\u00020\t2\u0006\u0010]\u001a\u00020\u000bJ\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u0084\u0001\u001a\u00020\t2\u0006\u0010]\u001a\u00020\u000bJ\t\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0086\u0001\u001a\u00020\t2\u0007\u0010\u0087\u0001\u001a\u00020\u000bJ\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u0089\u0001\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\t\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u000bJ\u0007\u0010\u008b\u0001\u001a\u00020\u000eJ\u000f\u0010\u008c\u0001\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\t\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u008e\u0001\u001a\u00020\t2\u0007\u0010\u008f\u0001\u001a\u00020\u000bJ\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u0091\u0001\u001a\u00020\t2\u0006\u0010r\u001a\u00020\u000bJ\t\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0093\u0001\u001a\u00020\t2\u0007\u0010\u0094\u0001\u001a\u00020\u000bJ\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u0096\u0001\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000bJ\u0007\u0010\u0098\u0001\u001a\u00020\u000eJ\u000f\u0010\u0099\u0001\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\t\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u009b\u0001\u001a\u00020\t2\u0006\u0010r\u001a\u00020\u000bJ\t\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u009d\u0001\u001a\u00020\t2\u0007\u0010\u008f\u0001\u001a\u00020\u000bJ\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u009f\u0001\u001a\u00020\t2\u0007\u0010\u0094\u0001\u001a\u00020\u000bJ\t\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u00a1\u0001\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\t\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u000bJ\u0007\u0010\u00a3\u0001\u001a\u00020\u000eJ\u000f\u0010\u00a4\u0001\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\t\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00a6\u0001\u001a\u00020\t2\u0007\u0010\u0094\u0001\u001a\u00020\u000bJ\t\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u00a8\u0001\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u000bJ\u0007\u0010\u00aa\u0001\u001a\u00020\u000eJ\u000f\u0010\u00ab\u0001\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\t\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00ad\u0001\u001a\u00020\t2\u0007\u0010\u0094\u0001\u001a\u00020\u000bJ\t\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00af\u0001\u001a\u00020\t2\u0007\u0010\u00b0\u0001\u001a\u00020\u000bJ\t\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u00b2\u0001\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\t\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u000bJ\u0007\u0010\u00b4\u0001\u001a\u00020\u000eJ\u0007\u0010\u00b5\u0001\u001a\u00020\u000eJ\u0010\u0010\u00b6\u0001\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u000f\u0010\u00b8\u0001\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\t\u0010\u00b9\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00ba\u0001\u001a\u00020\t2\u0007\u0010\u0094\u0001\u001a\u00020\u000bJ\t\u0010\u00bb\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00bc\u0001\u001a\u00020\t2\u0007\u0010\u00b0\u0001\u001a\u00020\u000bJ\t\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u00be\u0001\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\t\u0010\u00bf\u0001\u001a\u0004\u0018\u00010\u000bJ\u0007\u0010\u00c0\u0001\u001a\u00020\u000eJ\u0007\u0010\u00c1\u0001\u001a\u00020\u000eJ\u0010\u0010\u00c2\u0001\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u000f\u0010\u00c3\u0001\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\t\u0010\u00c4\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00c5\u0001\u001a\u00020\t2\u0007\u0010\u0094\u0001\u001a\u00020\u000bJ\t\u0010\u00c6\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u00c7\u0001\u001a\u00020\t2\u0006\u00101\u001a\u00020\u000bJ\t\u0010\u00c8\u0001\u001a\u0004\u0018\u00010\u000bJ\u0007\u0010\u00c9\u0001\u001a\u00020\u000eJ\u000f\u0010\u00ca\u0001\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\u000bJ\t\u0010\u00cb\u0001\u001a\u0004\u0018\u00010\u000bJ\u000f\u0010\u00cc\u0001\u001a\u00020\t2\u0006\u0010r\u001a\u00020\u000bJ\t\u0010\u00cd\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00ce\u0001\u001a\u00020\t2\u0007\u0010\u00cf\u0001\u001a\u00020\u000bJ\t\u0010\u00d0\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00d1\u0001\u001a\u00020\t2\u0007\u0010\u008f\u0001\u001a\u00020\u000bJ\t\u0010\u00d2\u0001\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u00d3\u0001\u001a\u00020\t2\u0007\u0010\u00d4\u0001\u001a\u00020\u000bJ\t\u0010\u00d5\u0001\u001a\u0004\u0018\u00010\u000bJ\u0007\u0010\u00d6\u0001\u001a\u00020\u000eJ\u0011\u0010\u00d7\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u0010I\u001a\u00020JJ\u0018\u0010\u00d8\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020J2\u0007\u0010\u00d9\u0001\u001a\u00020\u000bJ\u000f\u0010\u00da\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020JJ\u000f\u0010\u00db\u0001\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020JJ\u0010\u0010\u00dc\u0001\u001a\u00020\t2\u0007\u0010\u00dd\u0001\u001a\u00020\u000bJ\t\u0010\u00de\u0001\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010\u00df\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020J2\u0007\u0010\u00e0\u0001\u001a\u00020\u000bJ\u0011\u0010\u00e1\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u0010I\u001a\u00020JJ\u0010\u0010\u00e4\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0\u00e3\u0001H\u0002J\u000e\u0010\u00e5\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0\u00e3\u0001J\u0010\u0010\u00e6\u0001\u001a\u00020\t2\u0007\u0010\u008f\u0001\u001a\u00020\u000bJ\u0010\u0010\u00e7\u0001\u001a\u00020\u000e2\u0007\u0010\u008f\u0001\u001a\u00020\u000bJ\u0008\u0010\u00e8\u0001\u001a\u00030\u00e9\u0001J\u000e\u0010\u00ea\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0\u00e3\u0001J\u0010\u0010\u00eb\u0001\u001a\u00020\u000e2\u0007\u0010\u00ec\u0001\u001a\u00020\u000bJ\u0010\u0010\u00ed\u0001\u001a\u00020\t2\u0007\u0010\u00ec\u0001\u001a\u00020\u000bJ\u0007\u0010\u00ee\u0001\u001a\u00020\tJ\u0014\u0010\u00ef\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00f0\u0001J\u0019\u0010\u00f1\u0001\u001a\u00020\t2\u0007\u0010\u00f2\u0001\u001a\u00020\u000b2\u0007\u0010\u00f3\u0001\u001a\u00020\u000bJ\u0007\u0010\u00f4\u0001\u001a\u00020\tJ\u0011\u0010\u00f5\u0001\u001a\u00030\u00f6\u00012\u0007\u0010\u00f7\u0001\u001a\u00020\u000bJ\u001a\u0010\u00f8\u0001\u001a\u00020\t2\u0007\u0010\u00f7\u0001\u001a\u00020\u000b2\u0008\u0010\u00f9\u0001\u001a\u00030\u00f6\u0001J\u0012\u0010\u00fa\u0001\u001a\u00020\u000b2\u0007\u0010\u00fb\u0001\u001a\u00020\u000bH\u0002J\u001c\u0010\u00fc\u0001\u001a\u00020\t2\u0007\u0010\u00fb\u0001\u001a\u00020\u000b2\n\u0008\u0002\u0010\u00fd\u0001\u001a\u00030\u00e9\u0001J\u0008\u0010\u00fe\u0001\u001a\u00030\u00e9\u0001J\u0008\u0010\u00ff\u0001\u001a\u00030\u00e9\u0001J\u0008\u0010\u0080\u0002\u001a\u00030\u00e9\u0001J\u0007\u0010\u0081\u0002\u001a\u00020\tJ\u0007\u0010\u0082\u0002\u001a\u00020\u000bJ\u0010\u0010\u0083\u0002\u001a\u00020\t2\u0007\u0010\u00d4\u0001\u001a\u00020\u000bJ\u0007\u0010\u0084\u0002\u001a\u00020\u000bJ\u0007\u0010\u0085\u0002\u001a\u00020\u000bJ\u0010\u0010\u0086\u0002\u001a\u00020\t2\u0007\u0010\u00d4\u0001\u001a\u00020\u000bJ\u000e\u0010\u0087\u0002\u001a\t\u0012\u0004\u0012\u00020\u000b0\u0088\u0002J\u0017\u0010\u0089\u0002\u001a\u00020\t2\u000e\u0010\u008a\u0002\u001a\t\u0012\u0004\u0012\u00020\u000b0\u0088\u0002J\u000e\u0010\u008b\u0002\u001a\t\u0012\u0004\u0012\u00020\u000b0\u0088\u0002J\u0017\u0010\u008c\u0002\u001a\u00020\t2\u000e\u0010\u008d\u0002\u001a\t\u0012\u0004\u0012\u00020\u000b0\u0088\u0002J\u0007\u0010\u008e\u0002\u001a\u00020\u000eJ\u0010\u0010\u008f\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0007\u0010\u0090\u0002\u001a\u00020\u000eJ\u0010\u0010\u0091\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0008\u0010\u0092\u0002\u001a\u00030\u00e9\u0001J\u0011\u0010\u0093\u0002\u001a\u00020\t2\u0008\u0010\u0094\u0002\u001a\u00030\u00e9\u0001J\u0008\u0010\u0095\u0002\u001a\u00030\u00f6\u0001J\u0010\u0010\u0096\u0002\u001a\u00020\t2\u0007\u0010Z\u001a\u00030\u00f6\u0001J\u0007\u0010\u0097\u0002\u001a\u00020\u000bJ\u0010\u0010\u0098\u0002\u001a\u00020\t2\u0007\u0010\u00d4\u0001\u001a\u00020\u000bJ\u0007\u0010\u0099\u0002\u001a\u00020\u000bJ\u0010\u0010\u009a\u0002\u001a\u00020\t2\u0007\u0010\u00d4\u0001\u001a\u00020\u000bJ\u0007\u0010\u009b\u0002\u001a\u00020\u000eJ\u0010\u0010\u009c\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0007\u0010\u009d\u0002\u001a\u00020\u000eJ\u0010\u0010\u009e\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0007\u0010\u009f\u0002\u001a\u00020\u000eJ\u0010\u0010\u00a0\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0007\u0010\u00a1\u0002\u001a\u00020\u000eJ\u0010\u0010\u00a2\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0008\u0010\u00a3\u0002\u001a\u00030\u00e9\u0001J\u0011\u0010\u00a4\u0002\u001a\u00020\t2\u0008\u0010\u00a5\u0002\u001a\u00030\u00e9\u0001J\u0008\u0010\u00a6\u0002\u001a\u00030\u00f6\u0001J\u0011\u0010\u00a7\u0002\u001a\u00020\t2\u0008\u0010\u00a8\u0002\u001a\u00030\u00f6\u0001J\u0007\u0010\u00a9\u0002\u001a\u00020\u000eJ\u0010\u0010\u00aa\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0008\u0010\u00ab\u0002\u001a\u00030\u00e9\u0001J\u0010\u0010\u00ac\u0002\u001a\u00020\t2\u0007\u0010S\u001a\u00030\u00e9\u0001J\u0007\u0010\u00ad\u0002\u001a\u00020\u000bJ\u0010\u0010\u00ae\u0002\u001a\u00020\t2\u0007\u0010\u00a5\u0002\u001a\u00020\u000bJ\u0007\u0010\u00af\u0002\u001a\u00020\u000eJ\u0010\u0010\u00b0\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0008\u0010\u00b1\u0002\u001a\u00030\u00e9\u0001J\u0011\u0010\u00b2\u0002\u001a\u00020\t2\u0008\u0010\u00b3\u0002\u001a\u00030\u00e9\u0001J\u0008\u0010\u00b4\u0002\u001a\u00030\u00e9\u0001J\u0011\u0010\u00b5\u0002\u001a\u00020\t2\u0008\u0010\u00b3\u0002\u001a\u00030\u00e9\u0001J\u0010\u0010\u00b6\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0002\u001a\u00020\u000bJ\u000e\u0010\u00b8\u0002\u001a\t\u0012\u0004\u0012\u00020\u000b0\u0088\u0002J\u0007\u0010\u00b9\u0002\u001a\u00020\tJ\u000f\u0010\u00ba\u0002\u001a\n\u0012\u0005\u0012\u00030\u00bb\u00020\u0088\u0002J\u0018\u0010\u00bc\u0002\u001a\u00020\t2\u000f\u0010\u00bd\u0002\u001a\n\u0012\u0005\u0012\u00030\u00bb\u00020\u0088\u0002J\u0011\u0010\u00be\u0002\u001a\u00020\t2\u0008\u0010\u00bf\u0002\u001a\u00030\u00bb\u0002J\u0010\u0010\u00c0\u0002\u001a\u00020\t2\u0007\u0010\u008f\u0001\u001a\u00020\u000bJ\u0008\u0010\u00c1\u0002\u001a\u00030\u00e9\u0001J\u0011\u0010\u00c2\u0002\u001a\u00020\t2\u0008\u0010\u00b3\u0002\u001a\u00030\u00e9\u0001J\u0008\u0010\u00c3\u0002\u001a\u00030\u00e9\u0001J\u0011\u0010\u00c4\u0002\u001a\u00020\t2\u0008\u0010\u00b3\u0002\u001a\u00030\u00e9\u0001J\u0007\u0010\u00c5\u0002\u001a\u00020\u000eJ\u0010\u0010\u00c6\u0002\u001a\u00020\t2\u0007\u0010\u00b7\u0001\u001a\u00020\u000eJ\u0007\u0010\u00c7\u0002\u001a\u00020\tR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u00e2\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00e3\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00c9\u0002"
    }
    d2 = {
        "Lcom/jichi/ob/util/PrefsManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "saveIgpsportToken",
        "",
        "token",
        "",
        "getIgpsportToken",
        "isIgpsportLoggedIn",
        "",
        "saveIgpsportIntToken",
        "getIgpsportIntToken",
        "isIgpsportIntLoggedIn",
        "saveXingzheSessionId",
        "sid",
        "getXingzheSessionId",
        "saveXingzheCsrf",
        "csrf",
        "getXingzheCsrf",
        "isXingzheLoggedIn",
        "saveMageneToken",
        "getMageneToken",
        "saveMageneRefreshToken",
        "getMageneRefreshToken",
        "isMageneLoggedIn",
        "saveBlackbirdCookie",
        "cookie",
        "getBlackbirdCookie",
        "isBlackbirdLoggedIn",
        "saveBrytonCookie",
        "getBrytonCookie",
        "saveBrytonToken",
        "getBrytonToken",
        "saveBrytonUserId",
        "userId",
        "getBrytonUserId",
        "isBrytonLoggedIn",
        "saveGiantToken",
        "getGiantToken",
        "isGiantLoggedIn",
        "saveGiantAccount",
        "account",
        "getGiantAccount",
        "saveGiantPassword",
        "p",
        "getGiantPassword",
        "saveCyCityToken",
        "getCyCityToken",
        "isCyCityLoggedIn",
        "saveCyCityAccount",
        "getCyCityAccount",
        "saveCyCityPassword",
        "getCyCityPassword",
        "saveIntervalsIcuKey",
        "key",
        "getIntervalsIcuKey",
        "isIntervalsIcuLoggedIn",
        "saveOutbaseSessionId",
        "getOutbaseSessionId",
        "saveGatewayCookies",
        "cookies",
        "getGatewayCookies",
        "isOutbaseLoggedIn",
        "saveTwoBuluCookie",
        "getTwoBuluCookie",
        "isTwoBuluLoggedIn",
        "logoutTwoBulu",
        "labTokenKey",
        "ds",
        "Lcom/jichi/ob/model/DataSource;",
        "labRefreshKey",
        "labClientIdKey",
        "labClientSecretKey",
        "saveLabToken",
        "refresh",
        "getLabToken",
        "getLabRefresh",
        "saveLabClientId",
        "v",
        "saveLabClientSecret",
        "getLabClientId",
        "getLabClientSecret",
        "isLabOAuthLoggedIn",
        "clearLabOAuth",
        "saveGarminComToken",
        "t",
        "getGarminComToken",
        "saveGarminComCookie",
        "c",
        "getGarminComCookie",
        "isGarminComLoggedIn",
        "saveGarminCnToken",
        "getGarminCnToken",
        "saveGarminCnCookie",
        "getGarminCnCookie",
        "isGarminCnLoggedIn",
        "saveGarminCnCredentials",
        "email",
        "password",
        "getGarminCnEmail",
        "getGarminCnPassword",
        "clearGarminCnCredentials",
        "saveGarminComCredentials",
        "getGarminComEmail",
        "getGarminComPassword",
        "clearGarminComCredentials",
        "saveCorosCnToken",
        "getCorosCnToken",
        "saveCorosCnRegion",
        "r",
        "getCorosCnRegion",
        "saveCorosCnCookie",
        "getCorosCnCookie",
        "isCorosCnLoggedIn",
        "saveCorosIntToken",
        "getCorosIntToken",
        "saveCorosIntRegion",
        "getCorosIntRegion",
        "saveCorosIntCookie",
        "getCorosIntCookie",
        "isCorosIntLoggedIn",
        "saveWahooToken",
        "getWahooToken",
        "saveWahooRefresh",
        "getWahooRefresh",
        "saveWahooClientId",
        "getWahooClientId",
        "saveWahooClientSecret",
        "getWahooClientSecret",
        "saveWahooEmail",
        "e",
        "getWahooEmail",
        "saveWahooPassword",
        "getWahooPassword",
        "isWahooLoggedIn",
        "saveMywhooshToken",
        "getMywhooshToken",
        "saveMywhooshWhooshId",
        "id",
        "getMywhooshWhooshId",
        "saveMywhooshRefreshToken",
        "getMywhooshRefreshToken",
        "saveMywhooshAccount",
        "a",
        "getMywhooshAccount",
        "saveMywhooshPassword",
        "getMywhooshPassword",
        "isMywhooshLoggedIn",
        "saveZwiftToken",
        "getZwiftToken",
        "saveZwiftRefreshToken",
        "getZwiftRefreshToken",
        "saveZwiftPlayerId",
        "getZwiftPlayerId",
        "saveZwiftAccount",
        "getZwiftAccount",
        "saveZwiftPassword",
        "getZwiftPassword",
        "isZwiftLoggedIn",
        "saveKeepToken",
        "getKeepToken",
        "saveKeepAccount",
        "getKeepAccount",
        "saveKeepPassword",
        "getKeepPassword",
        "isKeepLoggedIn",
        "saveCodoonToken",
        "getCodoonToken",
        "saveCodoonAccount",
        "getCodoonAccount",
        "saveCodoonUserId",
        "uid",
        "getCodoonUserId",
        "saveCodoonPassword",
        "getCodoonPassword",
        "isCodoonLoggedIn",
        "isCodoonGcjConvertEnabled",
        "setCodoonGcjConvertEnabled",
        "b",
        "saveZeppToken",
        "getZeppToken",
        "saveZeppAccount",
        "getZeppAccount",
        "saveZeppUserId",
        "getZeppUserId",
        "saveZeppPassword",
        "getZeppPassword",
        "isZeppLoggedIn",
        "isZeppGcjConvertEnabled",
        "setZeppGcjConvertEnabled",
        "saveKomootToken",
        "getKomootToken",
        "saveKomootAccount",
        "getKomootAccount",
        "saveKomootPassword",
        "getKomootPassword",
        "isKomootLoggedIn",
        "saveSuuntoToken",
        "getSuuntoToken",
        "saveSuuntoRefresh",
        "getSuuntoRefresh",
        "saveSuuntoSubscriptionKey",
        "k",
        "getSuuntoSubscriptionKey",
        "saveSuuntoClientId",
        "getSuuntoClientId",
        "saveSuuntoClientSecret",
        "s",
        "getSuuntoClientSecret",
        "isSuuntoLoggedIn",
        "getCredential",
        "saveCredential",
        "cred",
        "clearCredential",
        "isLoggedIn",
        "setLocalFolderUri",
        "uri",
        "getLocalFolderUri",
        "saveUsername",
        "name",
        "getUsername",
        "syncedCache",
        "",
        "getSyncedIdsInternal",
        "getSyncedIds",
        "addSyncedId",
        "isSynced",
        "getSyncedCount",
        "",
        "getWorkoutSyncedIds",
        "isWorkoutSynced",
        "eventId",
        "addWorkoutSyncedId",
        "clearWorkoutSyncedIds",
        "getWorkoutHashes",
        "",
        "putWorkoutHash",
        "eventKey",
        "hash",
        "clearSyncedIds",
        "getSyncCursor",
        "",
        "sourceShort",
        "setSyncCursor",
        "startTimeMs",
        "statKey",
        "type",
        "addStat",
        "delta",
        "getStatOk",
        "getStatSkip",
        "getStatFail",
        "resetStats",
        "getLastSource",
        "setLastSource",
        "getLastTarget",
        "getLastTargetRaw",
        "setLastTarget",
        "getLastTargets",
        "",
        "setLastTargets",
        "targets",
        "getLastSourceTags",
        "setLastSourceTags",
        "tags",
        "getTaskModeMulti",
        "setTaskModeMulti",
        "isAutoSync",
        "setAutoSync",
        "getAutoInterval",
        "setAutoInterval",
        "sec",
        "getLastAutoSyncTime",
        "setLastAutoSyncTime",
        "getLastAutoSyncResult",
        "setLastAutoSyncResult",
        "getLastDetectedDate",
        "setLastDetectedDate",
        "isGcj02Convert",
        "setGcj02Convert",
        "isGcj02Qiniu",
        "setGcj02Qiniu",
        "isGcj02FitContent",
        "setGcj02FitContent",
        "isGarminWellnessSync",
        "setGarminWellnessSync",
        "getWellnessDays",
        "setWellnessDays",
        "d",
        "getWellnessLastSync",
        "setWellnessLastSync",
        "ts",
        "isGarminMasquerade",
        "setGarminMasquerade",
        "getGarminFakeProduct",
        "setGarminFakeProduct",
        "getSaveDir",
        "setSaveDir",
        "isForceRetransmit",
        "setForceRetransmit",
        "getSyncCount",
        "setSyncCount",
        "n",
        "getSkipCount",
        "setSkipCount",
        "appendPersistLog",
        "msg",
        "getPersistLogs",
        "clearPersistLogs",
        "getTasks",
        "Lcom/jichi/ob/model/SyncTask;",
        "saveTasks",
        "tasks",
        "upsertTask",
        "task",
        "deleteTask",
        "getDownloadConcurrency",
        "setDownloadConcurrency",
        "getUploadConcurrency",
        "setUploadConcurrency",
        "isAutoCheckLogin",
        "setAutoCheckLogin",
        "clearAll",
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
.field public static final Companion:Lcom/jichi/ob/util/PrefsManager$Companion;

.field private static final KEY_AUTO_CHECK:Ljava/lang/String; = "auto_check_login"

.field private static final KEY_AUTO_INTERVAL:Ljava/lang/String; = "auto_interval"

.field private static final KEY_AUTO_SYNC:Ljava/lang/String; = "auto_sync"

.field private static final KEY_DL_CONCURRENCY:Ljava/lang/String; = "dl_concurrency"

.field private static final KEY_FORCE_RETRANSMIT:Ljava/lang/String; = "force_retransmit"

.field private static final KEY_GARMIN_FAKE_PRODUCT:Ljava/lang/String; = "garmin_fake_product"

.field private static final KEY_GARMIN_MASQUERADE:Ljava/lang/String; = "garmin_masquerade"

.field private static final KEY_GARMIN_WELLNESS:Ljava/lang/String; = "garmin_wellness_sync"

.field private static final KEY_GCJ02_CONVERT:Ljava/lang/String; = "gcj02_convert"

.field private static final KEY_GCJ02_FITCONTENT:Ljava/lang/String; = "gcj02_fit_content"

.field private static final KEY_GCJ02_QINIU:Ljava/lang/String; = "gcj02_qiniu_durl"

.field private static final KEY_LAST_AUTO_SYNC_RESULT:Ljava/lang/String; = "last_auto_sync_result"

.field private static final KEY_LAST_AUTO_SYNC_TIME:Ljava/lang/String; = "last_auto_sync_time"

.field private static final KEY_LAST_DETECTED_DATE:Ljava/lang/String; = "last_detected_date"

.field private static final KEY_LAST_SOURCE:Ljava/lang/String; = "last_source"

.field private static final KEY_LAST_SOURCE_TAGS:Ljava/lang/String; = "last_source_tags"

.field private static final KEY_LAST_TARGET:Ljava/lang/String; = "last_target"

.field private static final KEY_LAST_TARGETS:Ljava/lang/String; = "last_targets"

.field private static final KEY_PERSIST_LOG:Ljava/lang/String; = "persist_log"

.field private static final KEY_SAVE_DIR:Ljava/lang/String; = "save_dir"

.field private static final KEY_SKIP_COUNT:Ljava/lang/String; = "skip_count"

.field private static final KEY_STAT_FAIL:Ljava/lang/String; = "stat_fail"

.field private static final KEY_STAT_OK:Ljava/lang/String; = "stat_ok"

.field private static final KEY_STAT_SKIP:Ljava/lang/String; = "stat_skip"

.field private static final KEY_SYNCED_IDS:Ljava/lang/String; = "synced_ids"

.field private static final KEY_SYNC_COUNT:Ljava/lang/String; = "sync_count"

.field private static final KEY_TASKS:Ljava/lang/String; = "sync_tasks_v1"

.field private static final KEY_TASK_MODE_MULTI:Ljava/lang/String; = "task_mode_multi"

.field private static final KEY_UL_CONCURRENCY:Ljava/lang/String; = "ul_concurrency"

.field private static final KEY_DARK_MODE:Ljava/lang/String; = "dark_mode"

.field private static final MAX_LOG_LINES:I = 0x190

.field private static final PREFS_NAME:Ljava/lang/String; = "jichi_ob"

.field private static final TAG:Ljava/lang/String; = "PrefsManager"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;

.field private syncedCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/util/PrefsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/util/PrefsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/util/PrefsManager;->Companion:Lcom/jichi/ob/util/PrefsManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "jichi_ob"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic addStat$default(Lcom/jichi/ob/util/PrefsManager;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 565
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/PrefsManager;->addStat(Ljava/lang/String;I)V

    return-void
.end method

.method private final getSyncedIdsInternal()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->syncedCache:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "synced_ids"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/jichi/ob/util/PrefsManager;

    .line 488
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->syncedCache:Ljava/util/Set;

    .line 489
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 492
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 494
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    :catch_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 491
    :cond_2
    iput-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->syncedCache:Ljava/util/Set;

    .line 497
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic saveLabToken$default(Lcom/jichi/ob/util/PrefsManager;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 177
    const-string p3, ""

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/util/PrefsManager;->saveLabToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final statKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 561
    const-string v0, "ok"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "stat_ok"

    return-object p1

    .line 562
    :cond_0
    const-string/jumbo v0, "skip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "stat_skip"

    return-object p1

    .line 563
    :cond_1
    const-string/jumbo p1, "stat_fail"

    return-object p1
.end method


# virtual methods
.method public final addStat(Ljava/lang/String;I)V
    .locals 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->statKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 567
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final addSyncedId(Ljava/lang/String;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/jichi/ob/util/PrefsManager;->getSyncedIdsInternal()Ljava/util/Set;

    move-result-object v0

    .line 502
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 503
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 506
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance p1, Lorg/json/JSONArray;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 508
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "synced_ids"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final addWorkoutSyncedId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutSyncedIds()Ljava/util/Set;

    move-result-object v0

    .line 524
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    const/16 v1, 0x1f4

    if-le p1, v1, :cond_0

    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "workout_synced_ids"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final appendPersistLog(Ljava/lang/String;)V
    .locals 12

    const-string v0, "\n"

    const-string v1, ""

    const-string v2, "persist_log"

    const-string v3, "msg"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 654
    iget-object v4, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 655
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v0, v4, p1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x190

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 656
    iget-object v1, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

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

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final clearAll()V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearCredential(Lcom/jichi/ob/model/DataSource;)V
    .locals 3

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    sget-object v1, Lcom/jichi/ob/util/PrefsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 439
    :pswitch_0
    const-string v1, "local_folder_uri"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 438
    :pswitch_1
    const-string v1, "cycity_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 437
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->clearLabOAuth(Lcom/jichi/ob/model/DataSource;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_0

    .line 436
    :pswitch_3
    const-string/jumbo v1, "twobulu_cookie"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 435
    :pswitch_4
    const-string/jumbo v1, "suunto_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "suunto_refresh"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "suunto_subscription_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "suunto_client_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "suunto_client_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 434
    :pswitch_5
    const-string v1, "komoot_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "komoot_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "komoot_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 433
    :pswitch_6
    const-string/jumbo v1, "zepp_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "zepp_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "zepp_user_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "zepp_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 432
    :pswitch_7
    const-string v1, "codoon_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "codoon_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "codoon_user_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 431
    :pswitch_8
    const-string v1, "keep_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "keep_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 430
    :pswitch_9
    const-string v1, "intervals_icu_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 429
    :pswitch_a
    const-string/jumbo v1, "zwift_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "zwift_refresh"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "zwift_player_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "zwift_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 428
    :pswitch_b
    const-string v1, "mywhoosh_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mywhoosh_whoosh_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mywhoosh_refresh"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mywhoosh_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 427
    :pswitch_c
    const-string/jumbo v1, "wahoo_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "wahoo_refresh"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "wahoo_email"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 426
    :pswitch_d
    const-string v1, "coros_int_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "coros_int_cookie"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "coros_int_region"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 425
    :pswitch_e
    const-string v1, "coros_cn_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "coros_cn_cookie"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "coros_cn_region"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 424
    :pswitch_f
    const-string v1, "garmin_cn_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "garmin_cn_cookie"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "garmin_cn_email"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "garmin_cn_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 423
    :pswitch_10
    const-string v1, "garmin_com_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "garmin_com_cookie"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 422
    :pswitch_11
    const-string v1, "outbase_session_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gateway_cookies"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 421
    :pswitch_12
    const-string v1, "giant_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 420
    :pswitch_13
    const-string v1, "bryton_cookie"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "bryton_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "bryton_user_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 419
    :pswitch_14
    const-string v1, "blackbird_cookie"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 418
    :pswitch_15
    const-string v1, "magene_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "magene_refresh_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 417
    :pswitch_16
    const-string/jumbo v1, "xingzhe_session_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 416
    :pswitch_17
    const-string v1, "igpsport_int_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 415
    :pswitch_18
    const-string v1, "igpsport_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    :goto_0
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "username_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clearGarminCnCredentials()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_cn_email"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_cn_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearGarminComCredentials()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_com_email"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_com_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearLabOAuth(Lcom/jichi/ob/model/DataSource;)V
    .locals 3

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labTokenKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labRefreshKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "username_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearPersistLogs()V
    .locals 2

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "persist_log"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final clearSyncedIds()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->syncedCache:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 549
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->syncedCache:Ljava/util/Set;

    .line 550
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "synced_ids"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearWorkoutSyncedIds()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "workout_synced_ids"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "workout_hashes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final deleteTask(Ljava/lang/String;)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getTasks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 754
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 755
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/jichi/ob/model/SyncTask;

    .line 691
    invoke-virtual {v3}, Lcom/jichi/ob/model/SyncTask;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 755
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 756
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 691
    invoke-virtual {p0, v1}, Lcom/jichi/ob/util/PrefsManager;->saveTasks(Ljava/util/List;)V

    return-void
.end method

.method public final getAutoInterval()I
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_interval"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getBlackbirdCookie()Ljava/lang/String;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "blackbird_cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBrytonCookie()Ljava/lang/String;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "bryton_cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBrytonToken()Ljava/lang/String;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "bryton_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBrytonUserId()Ljava/lang/String;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "bryton_user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCodoonAccount()Ljava/lang/String;
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codoon_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCodoonPassword()Ljava/lang/String;
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codoon_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCodoonToken()Ljava/lang/String;
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codoon_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCodoonUserId()Ljava/lang/String;
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codoon_user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCorosCnCookie()Ljava/lang/String;
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "coros_cn_cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCorosCnRegion()Ljava/lang/String;
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "coros_cn_region"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final getCorosCnToken()Ljava/lang/String;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "coros_cn_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCorosIntCookie()Ljava/lang/String;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "coros_int_cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCorosIntRegion()Ljava/lang/String;
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "coros_int_region"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final getCorosIntToken()Ljava/lang/String;
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "coros_int_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lcom/jichi/ob/util/PrefsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 379
    :pswitch_0
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getLocalFolderUri()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 378
    :pswitch_1
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getCyCityToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 377
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->getLabToken(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 376
    :pswitch_3
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getTwoBuluCookie()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 375
    :pswitch_4
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getSuuntoToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :pswitch_5
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getKomootToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 373
    :pswitch_6
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getZeppToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 372
    :pswitch_7
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getCodoonToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 371
    :pswitch_8
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getKeepToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 370
    :pswitch_9
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getIntervalsIcuKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 369
    :pswitch_a
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getZwiftToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 368
    :pswitch_b
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getMywhooshToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 367
    :pswitch_c
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getWahooToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 366
    :pswitch_d
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getCorosIntToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 365
    :pswitch_e
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getCorosCnToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 364
    :pswitch_f
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getGarminCnToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 363
    :pswitch_10
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getGarminComToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 362
    :pswitch_11
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getOutbaseSessionId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 361
    :pswitch_12
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getGiantToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 360
    :pswitch_13
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getBrytonCookie()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 359
    :pswitch_14
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getBlackbirdCookie()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 358
    :pswitch_15
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getMageneToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 357
    :pswitch_16
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getXingzheSessionId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 356
    :pswitch_17
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getIgpsportIntToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 355
    :pswitch_18
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getIgpsportToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCyCityAccount()Ljava/lang/String;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "cycity_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCyCityPassword()Ljava/lang/String;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "cycity_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCyCityToken()Ljava/lang/String;
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "cycity_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDownloadConcurrency()I
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "dl_concurrency"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getGarminCnCookie()Ljava/lang/String;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_cn_cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGarminCnEmail()Ljava/lang/String;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_cn_email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGarminCnPassword()Ljava/lang/String;
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_cn_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGarminCnToken()Ljava/lang/String;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_cn_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGarminComCookie()Ljava/lang/String;
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_com_cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGarminComEmail()Ljava/lang/String;
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_com_email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGarminComPassword()Ljava/lang/String;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_com_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGarminComToken()Ljava/lang/String;
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_com_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGarminFakeProduct()I
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_fake_product"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getGatewayCookies()Ljava/lang/String;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "gateway_cookies"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGiantAccount()Ljava/lang/String;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "giant_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGiantPassword()Ljava/lang/String;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "giant_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGiantToken()Ljava/lang/String;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "giant_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIgpsportIntToken()Ljava/lang/String;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "igpsport_int_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIgpsportToken()Ljava/lang/String;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "igpsport_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIntervalsIcuKey()Ljava/lang/String;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "intervals_icu_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeepAccount()Ljava/lang/String;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "keep_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeepPassword()Ljava/lang/String;
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "keep_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeepToken()Ljava/lang/String;
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "keep_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKomootAccount()Ljava/lang/String;
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "komoot_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKomootPassword()Ljava/lang/String;
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "komoot_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKomootToken()Ljava/lang/String;
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "komoot_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLabClientId(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labClientIdKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLabClientSecret(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labClientSecretKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLabRefresh(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labRefreshKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLabToken(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labTokenKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLastAutoSyncResult()Ljava/lang/String;
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_auto_sync_result"

    const-string/jumbo v2, "\u5c1a\u672a\u540c\u6b65"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final getLastAutoSyncTime()J
    .locals 4

    .line 613
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_auto_sync_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastDetectedDate()Ljava/lang/String;
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_detected_date"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final getLastSource()Ljava/lang/String;
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_source"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getLastSourceTags()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_source_tags"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 601
    :goto_0
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ","

    aput-object v1, v4, v0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 722
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 723
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 724
    check-cast v2, Ljava/lang/String;

    .line 601
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 725
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 722
    check-cast v1, Ljava/lang/Iterable;

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 727
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 601
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 727
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 728
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getLastTarget()Ljava/lang/String;
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_target"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getLastTargetRaw()Ljava/lang/String;
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_target"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final getLastTargets()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_targets"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 586
    :goto_0
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ","

    aput-object v1, v4, v0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 712
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 713
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 714
    check-cast v2, Ljava/lang/String;

    .line 586
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 715
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 712
    check-cast v1, Ljava/lang/Iterable;

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 717
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 586
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 717
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 718
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 587
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    .line 588
    :cond_4
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getLastTarget()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 719
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 720
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 589
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 720
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 721
    :cond_6
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getLocalFolderUri()Ljava/lang/String;
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "local_folder_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMageneRefreshToken()Ljava/lang/String;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "magene_refresh_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMageneToken()Ljava/lang/String;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "magene_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMywhooshAccount()Ljava/lang/String;
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mywhoosh_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMywhooshPassword()Ljava/lang/String;
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mywhoosh_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMywhooshRefreshToken()Ljava/lang/String;
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mywhoosh_refresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMywhooshToken()Ljava/lang/String;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mywhoosh_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMywhooshWhooshId()Ljava/lang/String;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mywhoosh_whoosh_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOutbaseSessionId()Ljava/lang/String;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "outbase_session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPersistLogs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "persist_log"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 661
    :goto_0
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\n"

    aput-object v1, v4, v0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 729
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 730
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 661
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 730
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 731
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getSaveDir()Ljava/lang/String;
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "save_dir"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final getSkipCount()I
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "skip_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getStatFail()I
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "stat_fail"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getStatOk()I
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "stat_ok"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getStatSkip()I
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "stat_skip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSuuntoClientId()Ljava/lang/String;
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "suunto_client_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSuuntoClientSecret()Ljava/lang/String;
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "suunto_client_secret"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSuuntoRefresh()Ljava/lang/String;
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "suunto_refresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSuuntoSubscriptionKey()Ljava/lang/String;
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "suunto_subscription_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSuuntoToken()Ljava/lang/String;
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "suunto_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSyncCount()I
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sync_count"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSyncCursor(Ljava/lang/String;)J
    .locals 3

    const-string/jumbo v0, "sourceShort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync_cursor_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSyncedCount()I
    .locals 1

    .line 511
    invoke-direct {p0}, Lcom/jichi/ob/util/PrefsManager;->getSyncedIdsInternal()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final getSyncedIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 499
    invoke-direct {p0}, Lcom/jichi/ob/util/PrefsManager;->getSyncedIdsInternal()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTaskModeMulti()Z
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "task_mode_multi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getTasks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/SyncTask;",
            ">;"
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sync_tasks_v1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 671
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 732
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 741
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 673
    :try_start_1
    sget-object v5, Lcom/jichi/ob/model/SyncTask;->Companion:Lcom/jichi/ob/model/SyncTask$Companion;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "getJSONObject(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/jichi/ob/model/SyncTask$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/jichi/ob/model/SyncTask;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_1

    .line 740
    :try_start_2
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 744
    :cond_2
    check-cast v3, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 675
    :catch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method public final getTwoBuluCookie()Ljava/lang/String;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "twobulu_cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUploadConcurrency()I
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ul_concurrency"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getUsername(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 3

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "username_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getWahooClientId()Ljava/lang/String;
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wahoo_client_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWahooClientSecret()Ljava/lang/String;
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wahoo_client_secret"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWahooEmail()Ljava/lang/String;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wahoo_email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWahooPassword()Ljava/lang/String;
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wahoo_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWahooRefresh()Ljava/lang/String;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wahoo_refresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWahooToken()Ljava/lang/String;
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wahoo_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWellnessDays()I
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wellness_days"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getWellnessLastSync()J
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wellness_last_sync"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWorkoutHashes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "workout_hashes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 534
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 536
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 537
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    .line 539
    :catch_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getWorkoutSyncedIds()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "workout_synced_ids"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 517
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    check-cast v2, Ljava/util/Collection;

    .line 709
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 518
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 710
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    :cond_1
    check-cast v2, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 519
    :catch_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getXingzheCsrf()Ljava/lang/String;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "xingzhe_csrf"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getXingzheSessionId()Ljava/lang/String;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "xingzhe_session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZeppAccount()Ljava/lang/String;
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zepp_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZeppPassword()Ljava/lang/String;
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zepp_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZeppToken()Ljava/lang/String;
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zepp_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZeppUserId()Ljava/lang/String;
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zepp_user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZwiftAccount()Ljava/lang/String;
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zwift_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZwiftPassword()Ljava/lang/String;
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zwift_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZwiftPlayerId()Ljava/lang/String;
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zwift_player_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZwiftRefreshToken()Ljava/lang/String;
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zwift_refresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZwiftToken()Ljava/lang/String;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zwift_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAutoCheckLogin()Z
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_check_login"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isAutoSync()Z
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_sync"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isBlackbirdLoggedIn()Z
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getBlackbirdCookie()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isBrytonLoggedIn()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getBrytonToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getBrytonCookie()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCodoonGcjConvertEnabled()Z
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codoon_gcj_convert"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isCodoonLoggedIn()Z
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getCodoonToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isCorosCnLoggedIn()Z
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getCorosCnToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isCorosIntLoggedIn()Z
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getCorosIntToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isCyCityLoggedIn()Z
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getCyCityToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isForceRetransmit()Z
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "force_retransmit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isGarminCnLoggedIn()Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getGarminCnToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isGarminComLoggedIn()Z
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getGarminComToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isGarminMasquerade()Z
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_masquerade"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isGarminWellnessSync()Z
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "garmin_wellness_sync"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isGcj02Convert()Z
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "gcj02_convert"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isGcj02FitContent()Z
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "gcj02_fit_content"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isGcj02Qiniu()Z
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "gcj02_qiniu_durl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isGcj02LocalFolder()Z
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "gcj02_local_folder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getIgpTzSameDay()I
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "igp_tz_same_day"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getIgpTzHistory()I
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "igp_tz_history"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final isGiantLoggedIn()Z
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getGiantToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isIgpsportIntLoggedIn()Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getIgpsportIntToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isIgpsportLoggedIn()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getIgpsportToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isIntervalsIcuLoggedIn()Z
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getIntervalsIcuKey()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isKeepLoggedIn()Z
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getKeepToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isKomootLoggedIn()Z
    .locals 2

    .line 338
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getKomootToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isLabOAuthLoggedIn(Lcom/jichi/ob/model/DataSource;)Z
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->getLabToken(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    xor-int/2addr p1, v0

    return p1
.end method

.method public final isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/jichi/ob/util/PrefsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 469
    :pswitch_0
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getLocalFolderUri()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 468
    :pswitch_1
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isCyCityLoggedIn()Z

    move-result p1

    return p1

    .line 467
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->isLabOAuthLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result p1

    return p1

    .line 466
    :pswitch_3
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isTwoBuluLoggedIn()Z

    move-result p1

    return p1

    .line 465
    :pswitch_4
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isSuuntoLoggedIn()Z

    move-result p1

    return p1

    .line 464
    :pswitch_5
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isKomootLoggedIn()Z

    move-result p1

    return p1

    .line 463
    :pswitch_6
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isZeppLoggedIn()Z

    move-result p1

    return p1

    .line 462
    :pswitch_7
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isCodoonLoggedIn()Z

    move-result p1

    return p1

    .line 461
    :pswitch_8
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isKeepLoggedIn()Z

    move-result p1

    return p1

    .line 460
    :pswitch_9
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isIntervalsIcuLoggedIn()Z

    move-result p1

    return p1

    .line 459
    :pswitch_a
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isZwiftLoggedIn()Z

    move-result p1

    return p1

    .line 458
    :pswitch_b
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isMywhooshLoggedIn()Z

    move-result p1

    return p1

    .line 457
    :pswitch_c
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isWahooLoggedIn()Z

    move-result p1

    return p1

    .line 456
    :pswitch_d
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isCorosIntLoggedIn()Z

    move-result p1

    return p1

    .line 455
    :pswitch_e
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isCorosCnLoggedIn()Z

    move-result p1

    return p1

    .line 454
    :pswitch_f
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isGarminCnLoggedIn()Z

    move-result p1

    return p1

    .line 453
    :pswitch_10
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isGarminComLoggedIn()Z

    move-result p1

    return p1

    .line 452
    :pswitch_11
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isOutbaseLoggedIn()Z

    move-result p1

    return p1

    .line 451
    :pswitch_12
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isGiantLoggedIn()Z

    move-result p1

    return p1

    .line 450
    :pswitch_13
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isBrytonLoggedIn()Z

    move-result p1

    return p1

    .line 449
    :pswitch_14
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isBlackbirdLoggedIn()Z

    move-result p1

    return p1

    .line 448
    :pswitch_15
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isMageneLoggedIn()Z

    move-result p1

    return p1

    .line 447
    :pswitch_16
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isXingzheLoggedIn()Z

    move-result p1

    return p1

    .line 446
    :pswitch_17
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isIgpsportIntLoggedIn()Z

    move-result p1

    return p1

    .line 445
    :pswitch_18
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->isIgpsportLoggedIn()Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isMageneLoggedIn()Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getMageneToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isMywhooshLoggedIn()Z
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getMywhooshToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isOutbaseLoggedIn()Z
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getOutbaseSessionId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isSuuntoLoggedIn()Z
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getSuuntoToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isSynced(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/jichi/ob/util/PrefsManager;->getSyncedIdsInternal()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isTwoBuluLoggedIn()Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getTwoBuluCookie()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isWahooLoggedIn()Z
    .locals 3

    .line 261
    sget-object v0, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WahooApi$Companion;->isBuiltinConfigured()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getWahooToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    xor-int/lit8 v0, v1, 0x1

    return v0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getWahooToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getWahooClientId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public final isWorkoutSynced(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutSyncedIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isXingzheLoggedIn()Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getXingzheSessionId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isZeppGcjConvertEnabled()Z
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zepp_gcj_convert"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isZeppLoggedIn()Z
    .locals 2

    .line 326
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getZeppToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final isZwiftLoggedIn()Z
    .locals 2

    .line 291
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getZwiftToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final labClientIdKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lab_client_id_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final labClientSecretKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lab_client_secret_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final labRefreshKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lab_refresh_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final labTokenKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lab_token_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final logoutTwoBulu()V
    .locals 1

    .line 170
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/jichi/ob/util/PrefsManager;->saveTwoBuluCookie(Ljava/lang/String;)V

    return-void
.end method

.method public final putWorkoutHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "eventKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutHashes()Ljava/util/Map;

    move-result-object v0

    .line 543
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object p1, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "workout_hashes"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final resetStats()V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "stat_ok"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "stat_skip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "stat_fail"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveBlackbirdCookie(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cookie"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveBlackbirdCookie: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blackbird_cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveBrytonCookie(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cookie"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveBrytonCookie: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bryton_cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveBrytonToken(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveBrytonToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bryton_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveBrytonUserId(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bryton_user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCodoonAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "codoon_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCodoonPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "codoon_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCodoonToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "codoon_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCodoonUserId(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "codoon_user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCorosCnCookie(Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coros_cn_cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCorosCnRegion(Ljava/lang/String;)V
    .locals 2

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coros_cn_region"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCorosCnToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coros_cn_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCorosIntCookie(Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coros_int_cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCorosIntRegion(Ljava/lang/String;)V
    .locals 2

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coros_int_region"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCorosIntToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coros_int_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCredential(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    .locals 7

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cred"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/jichi/ob/util/PrefsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v1, p0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 408
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/jichi/ob/util/PrefsManager;->setLocalFolderUri(Ljava/lang/String;)V

    return-void

    .line 407
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/jichi/ob/util/PrefsManager;->saveCyCityToken(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 406
    invoke-static/range {v1 .. v6}, Lcom/jichi/ob/util/PrefsManager;->saveLabToken$default(Lcom/jichi/ob/util/PrefsManager;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :pswitch_3
    move-object v1, p0

    move-object v3, p2

    .line 405
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveTwoBuluCookie(Ljava/lang/String;)V

    return-void

    :pswitch_4
    move-object v1, p0

    move-object v3, p2

    .line 404
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveSuuntoToken(Ljava/lang/String;)V

    return-void

    :pswitch_5
    move-object v1, p0

    move-object v3, p2

    .line 403
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveKomootToken(Ljava/lang/String;)V

    return-void

    :pswitch_6
    move-object v1, p0

    move-object v3, p2

    .line 402
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveZeppToken(Ljava/lang/String;)V

    return-void

    :pswitch_7
    move-object v1, p0

    move-object v3, p2

    .line 401
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveCodoonToken(Ljava/lang/String;)V

    return-void

    :pswitch_8
    move-object v1, p0

    move-object v3, p2

    .line 400
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveKeepToken(Ljava/lang/String;)V

    return-void

    :pswitch_9
    move-object v1, p0

    move-object v3, p2

    .line 399
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveIntervalsIcuKey(Ljava/lang/String;)V

    return-void

    :pswitch_a
    move-object v1, p0

    move-object v3, p2

    .line 398
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveZwiftToken(Ljava/lang/String;)V

    return-void

    :pswitch_b
    move-object v1, p0

    move-object v3, p2

    .line 397
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveMywhooshToken(Ljava/lang/String;)V

    return-void

    :pswitch_c
    move-object v1, p0

    move-object v3, p2

    .line 396
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveWahooToken(Ljava/lang/String;)V

    return-void

    :pswitch_d
    move-object v1, p0

    move-object v3, p2

    .line 395
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveCorosIntToken(Ljava/lang/String;)V

    return-void

    :pswitch_e
    move-object v1, p0

    move-object v3, p2

    .line 394
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveCorosCnToken(Ljava/lang/String;)V

    return-void

    :pswitch_f
    move-object v1, p0

    move-object v3, p2

    .line 393
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveGarminCnToken(Ljava/lang/String;)V

    return-void

    :pswitch_10
    move-object v1, p0

    move-object v3, p2

    .line 392
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveGarminComToken(Ljava/lang/String;)V

    return-void

    :pswitch_11
    move-object v1, p0

    move-object v3, p2

    .line 391
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveOutbaseSessionId(Ljava/lang/String;)V

    return-void

    :pswitch_12
    move-object v1, p0

    move-object v3, p2

    .line 390
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveGiantToken(Ljava/lang/String;)V

    return-void

    :pswitch_13
    move-object v1, p0

    move-object v3, p2

    .line 389
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveBrytonCookie(Ljava/lang/String;)V

    return-void

    :pswitch_14
    move-object v1, p0

    move-object v3, p2

    .line 388
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveBlackbirdCookie(Ljava/lang/String;)V

    return-void

    :pswitch_15
    move-object v1, p0

    move-object v3, p2

    .line 387
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveMageneToken(Ljava/lang/String;)V

    return-void

    :pswitch_16
    move-object v1, p0

    move-object v3, p2

    .line 386
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveXingzheSessionId(Ljava/lang/String;)V

    return-void

    :pswitch_17
    move-object v1, p0

    move-object v3, p2

    .line 385
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveIgpsportIntToken(Ljava/lang/String;)V

    return-void

    :pswitch_18
    move-object v1, p0

    move-object v3, p2

    .line 384
    invoke-virtual {p0, v3}, Lcom/jichi/ob/util/PrefsManager;->saveIgpsportToken(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final saveCyCityAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cycity_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCyCityPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cycity_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCyCityToken(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveCyCityToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cycity_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGarminCnCookie(Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_cn_cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGarminCnCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_cn_email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "garmin_cn_password"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGarminCnToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_cn_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGarminComCookie(Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_com_cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGarminComCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_com_email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "garmin_com_password"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGarminComToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_com_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGatewayCookies(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cookies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gateway_cookies"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGiantAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "giant_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGiantPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "giant_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveGiantToken(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveGiantToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "giant_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveIgpsportIntToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "igpsport_int_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveIgpsportToken(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveIgpsportToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "igpsport_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveIntervalsIcuKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveIntervalsIcuKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "intervals_icu_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveKeepAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keep_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveKeepPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keep_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveKeepToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keep_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveKomootAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "komoot_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveKomootPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "komoot_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveKomootToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "komoot_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveLabClientId(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labClientIdKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveLabClientSecret(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labClientSecretKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveLabToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refresh"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveLabToken "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labTokenKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->labRefreshKey(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveMageneRefreshToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "magene_refresh_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveMageneToken(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveMageneToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "magene_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveMywhooshAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mywhoosh_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveMywhooshPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mywhoosh_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveMywhooshRefreshToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mywhoosh_refresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveMywhooshToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mywhoosh_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveMywhooshWhooshId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mywhoosh_whoosh_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveOutbaseSessionId(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "sid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveOutbaseSessionId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "outbase_session_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveSuuntoClientId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "suunto_client_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveSuuntoClientSecret(Ljava/lang/String;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "suunto_client_secret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveSuuntoRefresh(Ljava/lang/String;)V
    .locals 2

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "suunto_refresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveSuuntoSubscriptionKey(Ljava/lang/String;)V
    .locals 2

    const-string v0, "k"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "suunto_subscription_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveSuuntoToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "suunto_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveTasks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/SyncTask;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 680
    check-cast p1, Ljava/lang/Iterable;

    .line 745
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/model/SyncTask;

    .line 680
    invoke-virtual {v1}, Lcom/jichi/ob/model/SyncTask;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 681
    :cond_0
    iget-object p1, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v1, "sync_tasks_v1"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final saveTwoBuluCookie(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cookie"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveTwoBuluCookie: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "twobulu_cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveUsername(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "username_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveWahooClientId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wahoo_client_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveWahooClientSecret(Ljava/lang/String;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wahoo_client_secret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveWahooEmail(Ljava/lang/String;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wahoo_email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveWahooPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wahoo_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveWahooRefresh(Ljava/lang/String;)V
    .locals 2

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wahoo_refresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveWahooToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wahoo_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveXingzheCsrf(Ljava/lang/String;)V
    .locals 2

    const-string v0, "csrf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "xingzhe_csrf"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveXingzheSessionId(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "sid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveXingzheSessionId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "xingzhe_session_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZeppAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zepp_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZeppPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zepp_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZeppToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zepp_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZeppUserId(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zepp_user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZwiftAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zwift_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZwiftPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zwift_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZwiftPlayerId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zwift_player_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZwiftRefreshToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zwift_refresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveZwiftToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zwift_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoCheckLogin(Z)V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_check_login"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoInterval(I)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoSync(Z)V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_sync"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setCodoonGcjConvertEnabled(Z)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "codoon_gcj_convert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDownloadConcurrency(I)V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dl_concurrency"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setForceRetransmit(Z)V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "force_retransmit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setGarminFakeProduct(I)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_fake_product"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setGarminMasquerade(Z)V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_masquerade"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setGarminWellnessSync(Z)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "garmin_wellness_sync"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setGcj02Convert(Z)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gcj02_convert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setGcj02FitContent(Z)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gcj02_fit_content"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setGcj02Qiniu(Z)V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gcj02_qiniu_durl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setGcj02LocalFolder(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gcj02_local_folder"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setIgpTzSameDay(I)V
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "igp_tz_same_day"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setIgpTzHistory(I)V
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "igp_tz_history"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastAutoSyncResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_auto_sync_result"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastAutoSyncTime(J)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_auto_sync_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastDetectedDate(Ljava/lang/String;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_detected_date"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastSource(Ljava/lang/String;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_source"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastSourceTags(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string p1, ","

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "last_source_tags"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastTarget(Ljava/lang/String;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_target"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastTargets(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, ","

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

    .line 594
    iget-object v1, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_targets"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 596
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->setLastTarget(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setLocalFolderUri(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "local_folder_uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSaveDir(Ljava/lang/String;)V
    .locals 2

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "save_dir"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSkipCount(I)V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "skip_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSyncCount(I)V
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSyncCursor(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "sourceShort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync_cursor_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setTaskModeMulti(Z)V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "task_mode_multi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setUploadConcurrency(I)V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ul_concurrency"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setWellnessDays(I)V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wellness_days"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setWellnessLastSync(J)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wellness_last_sync"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setZeppGcjConvertEnabled(Z)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zepp_gcj_convert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final upsertTask(Lcom/jichi/ob/model/SyncTask;)V
    .locals 6

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/jichi/ob/util/PrefsManager;->getTasks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 748
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 749
    check-cast v4, Lcom/jichi/ob/model/SyncTask;

    .line 686
    invoke-virtual {v4}, Lcom/jichi/ob/model/SyncTask;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jichi/ob/model/SyncTask;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 687
    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 688
    :goto_2
    invoke-virtual {p0, v0}, Lcom/jichi/ob/util/PrefsManager;->saveTasks(Ljava/util/List;)V

    return-void
.end method

.method public final getDarkMode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "dark_mode"

    const-string v2, "system"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setDarkMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/util/PrefsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dark_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

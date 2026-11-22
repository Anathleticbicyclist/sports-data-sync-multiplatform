package com.jichi.ob.ui;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* compiled from: MergeFragment.kt */
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$filePicker$1$1", f = "MergeFragment.kt", i = {0, 0}, l = {823}, m = "invokeSuspend", n = {"uri", "name"}, s = {"L$1", "L$2"})
/* loaded from: classes.dex */
final class MergeFragment$filePicker$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ArrayList<byte[]> $bytes;
    final /* synthetic */ ArrayList<String> $names;
    final /* synthetic */ List<Uri> $uris;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$filePicker$1$1(List<Uri> list, MergeFragment mergeFragment, ArrayList<String> arrayList, ArrayList<byte[]> arrayList2, Continuation<? super MergeFragment$filePicker$1$1> continuation) {
        super(2, continuation);
        this.$uris = list;
        this.this$0 = mergeFragment;
        this.$names = arrayList;
        this.$bytes = arrayList2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$filePicker$1$1(this.$uris, this.this$0, this.$names, this.$bytes, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MergeFragment$filePicker$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cf  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x006c -> B:19:0x006f). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Iterator<Uri> it;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            it = this.$uris.iterator();
            if (it.hasNext()) {
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            String strQueryDisplayName = (String) this.L$2;
            it = (Iterator) this.L$0;
            ResultKt.throwOnFailure(obj);
            byte[] bArr = (byte[]) obj;
            if (bArr == null) {
                this.$names.add(strQueryDisplayName);
                this.$bytes.add(null);
            } else {
                boolean z = bArr.length >= 12 && bArr[8] == 46 && bArr[9] == 70 && bArr[10] == 73 && bArr[11] == 84;
                boolean zContains = StringsKt.contains((CharSequence) new String(bArr, 0, Math.min(bArr.length, 512), Charsets.UTF_8), (CharSequence) "<gpx", true);
                if (z || zContains) {
                    this.$names.add(strQueryDisplayName);
                    this.$bytes.add(bArr);
                }
            }
            if (it.hasNext()) {
                Uri next = it.next();
                strQueryDisplayName = this.this$0.queryDisplayName(next);
                if (strQueryDisplayName == null && (strQueryDisplayName = next.getLastPathSegment()) == null) {
                    strQueryDisplayName = "file";
                }
                this.L$0 = it;
                this.L$1 = SpillingKt.nullOutSpilledVariable(next);
                this.L$2 = strQueryDisplayName;
                this.label = 1;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MergeFragment$filePicker$1$1$b$1(this.this$0, next, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                byte[] bArr2 = (byte[]) obj;
                if (bArr2 == null) {
                }
                if (it.hasNext()) {
                    if (this.$names.isEmpty()) {
                        this.this$0.toast("未选择到 FIT/GPX 文件");
                        return Unit.INSTANCE;
                    }
                    this.this$0.processLocalFiles(this.$names, this.$bytes);
                    return Unit.INSTANCE;
                }
            }
        }
    }
}

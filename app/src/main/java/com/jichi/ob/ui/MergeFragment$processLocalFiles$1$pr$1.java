package com.jichi.ob.ui;

import com.jichi.ob.ui.MergeFragment;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MergeFragment.kt */
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$processLocalFiles$1$pr$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$processLocalFiles$1$pr$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MergeFragment.ParseResult>, Object> {
    final /* synthetic */ byte[] $bytes;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$processLocalFiles$1$pr$1(MergeFragment mergeFragment, byte[] bArr, Continuation<? super MergeFragment$processLocalFiles$1$pr$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$bytes = bArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$processLocalFiles$1$pr$1(this.this$0, this.$bytes, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MergeFragment.ParseResult> continuation) {
        return ((MergeFragment$processLocalFiles$1$pr$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return this.this$0.parseBytes(this.$bytes);
    }
}

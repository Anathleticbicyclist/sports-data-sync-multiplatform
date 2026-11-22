package com.jichi.ob.ui;

import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MergeFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$filePicker$1$1$b$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$filePicker$1$1$b$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super byte[]>, Object> {
    final /* synthetic */ Uri $uri;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$filePicker$1$1$b$1(MergeFragment mergeFragment, Uri uri, Continuation<? super MergeFragment$filePicker$1$1$b$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$uri = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$filePicker$1$1$b$1(this.this$0, this.$uri, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super byte[]> continuation) {
        return ((MergeFragment$filePicker$1$1$b$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws FileNotFoundException {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            InputStream inputStreamOpenInputStream = this.this$0.requireContext().getContentResolver().openInputStream(this.$uri);
            if (inputStreamOpenInputStream != null) {
                InputStream inputStream = inputStreamOpenInputStream;
                try {
                    byte[] bytes = ByteStreamsKt.readBytes(inputStream);
                    CloseableKt.closeFinally(inputStream, null);
                    return bytes;
                } finally {
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }
}

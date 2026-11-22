package com.jichi.ob.ui;

import android.util.Base64;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MergeFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$onViewCreated$51$url$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$onViewCreated$51$url$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$onViewCreated$51$url$1(MergeFragment mergeFragment, Continuation<? super MergeFragment$onViewCreated$51$url$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MergeFragment$onViewCreated$51$url$1 mergeFragment$onViewCreated$51$url$1 = new MergeFragment$onViewCreated$51$url$1(this.this$0, continuation);
        mergeFragment$onViewCreated$51$url$1.L$0 = obj;
        return mergeFragment$onViewCreated$51$url$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((MergeFragment$onViewCreated$51$url$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        // 原 Kotlin: runCatching { ... }.getOrNull() —— jadx 的 Result.m404constructorimpl /
        // Result.m410isFailureimpl 是 Kotlin 编译器内部名，Java 源码里调不到，改写为普通 try/catch。
        try {
            File file = new File(this.this$0.requireContext().getFilesDir(), "custom_badge.png");
            if (file.exists()) {
                return "data:image/png;base64," + Base64.encodeToString(FilesKt.readBytes(file), 2);
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }
}

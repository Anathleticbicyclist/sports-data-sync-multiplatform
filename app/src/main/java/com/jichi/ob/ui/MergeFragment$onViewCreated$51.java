package com.jichi.ob.ui;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* compiled from: MergeFragment.kt */
// 来源：9.6.8 APK 旧反编译（MergeFragment.java 内 AnonymousClass51），原样抽出为顶层类。
// 构造器按 smali 增加 MergeFragment 首参（与分支调用处一致），MergeFragment.this 改为 this$0。
// 体内逻辑与 smali 核对过：无挂起点以外的改动。
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$onViewCreated$51", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MergeFragment$onViewCreated$51 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ MergeFragment this$0;

    MergeFragment$onViewCreated$51(MergeFragment mergeFragment, Continuation<? super MergeFragment$onViewCreated$51> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$onViewCreated$51(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MergeFragment$onViewCreated$51) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object result = BuildersKt.withContext(Dispatchers.getIO(), new MergeFragment$onViewCreated$51$url$1(this.this$0, null), this);
            if (result == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = result;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        String str = (String) obj;
        if (str != null) {
            TrackPreviewView trackPreviewView = this.this$0.previewTrack;
            if (trackPreviewView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            }
            if (trackPreviewView.getBadgeUrl() == null) {
                trackPreviewView.setBadgeUrl(str);
                this.this$0.refreshStickerChips();
            }
        }
        return Unit.INSTANCE;
    }
}

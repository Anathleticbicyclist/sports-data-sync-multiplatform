package com.jichi.ob.ui;

import android.net.Uri;
import kotlin.Metadata;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$logoPicker$1$1", f = "MergeFragment.kt", i = {}, l = {748}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$logoPicker$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Uri $uri;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$logoPicker$1$1(MergeFragment mergeFragment, Uri uri, Continuation<? super MergeFragment$logoPicker$1$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$uri = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$logoPicker$1$1(this.this$0, this.$uri, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MergeFragment$logoPicker$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        TrackPreviewView trackPreviewView = null;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = BuildersKt.withContext(Dispatchers.getIO(), new MergeFragment$logoPicker$1$1$result$1(this.this$0, this.$uri, null), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        String str = (String) obj;
        if (str == null) {
            this.this$0.toast("logo 读取失败，请选择 PNG 透明图片");
            return Unit.INSTANCE;
        }
        TrackPreviewView trackPreviewView2 = this.this$0.previewTrack;
        if (trackPreviewView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView2 = null;
        }
        trackPreviewView2.setBadgeUrl(str);
        TrackPreviewView trackPreviewView3 = this.this$0.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView = trackPreviewView3;
        }
        trackPreviewView.setBrandIdx(TrackPreviewView.BRAND_CUSTOM);
        this.this$0.comboOverride = true;
        this.this$0.refreshStickerChips();
        this.this$0.toast("自定义 logo 已设置");
        return Unit.INSTANCE;
    }
}

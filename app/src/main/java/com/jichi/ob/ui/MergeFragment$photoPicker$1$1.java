package com.jichi.ob.ui;

import android.graphics.Bitmap;
import android.net.Uri;
import com.jichi.ob.merge.StickerCore;
import java.util.Set;
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
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$photoPicker$1$1", f = "MergeFragment.kt", i = {}, l = {715}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$photoPicker$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Uri $uri;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$photoPicker$1$1(MergeFragment mergeFragment, Uri uri, Continuation<? super MergeFragment$photoPicker$1$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$uri = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$photoPicker$1$1(this.this$0, this.$uri, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MergeFragment$photoPicker$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        TrackPreviewView trackPreviewView = null;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = BuildersKt.withContext(Dispatchers.getIO(), new MergeFragment$photoPicker$1$1$bmp$1(this.this$0, this.$uri, null), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Bitmap bitmap = (Bitmap) obj;
        if (bitmap == null) {
            this.this$0.toast("照片读取失败");
            return Unit.INSTANCE;
        }
        TrackPreviewView trackPreviewView2 = this.this$0.previewTrack;
        if (trackPreviewView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView2 = null;
        }
        trackPreviewView2.setOverlayBitmap(bitmap);
        Set set = this.this$0.photoBgs;
        TrackPreviewView trackPreviewView3 = this.this$0.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView3 = null;
        }
        if (!set.contains(trackPreviewView3.getBgType())) {
            TrackPreviewView trackPreviewView4 = this.this$0.previewTrack;
            if (trackPreviewView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView = trackPreviewView4;
            }
            trackPreviewView.setBgType(StickerCore.StickerBg.PHOTO_OVERLAY);
            this.this$0.comboOverride = true;
        }
        this.this$0.refreshStickerChips();
        this.this$0.toast("照片已添加");
        return Unit.INSTANCE;
    }
}

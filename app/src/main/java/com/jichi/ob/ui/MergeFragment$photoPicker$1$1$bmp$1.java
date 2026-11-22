package com.jichi.ob.ui;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MergeFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$photoPicker$1$1$bmp$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$photoPicker$1$1$bmp$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
    final /* synthetic */ Uri $uri;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$photoPicker$1$1$bmp$1(MergeFragment mergeFragment, Uri uri, Continuation<? super MergeFragment$photoPicker$1$1$bmp$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$uri = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MergeFragment$photoPicker$1$1$bmp$1 mergeFragment$photoPicker$1$1$bmp$1 = new MergeFragment$photoPicker$1$1$bmp$1(this.this$0, this.$uri, continuation);
        mergeFragment$photoPicker$1$1$bmp$1.L$0 = obj;
        return mergeFragment$photoPicker$1$1$bmp$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
        return ((MergeFragment$photoPicker$1$1$bmp$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        // 原 Kotlin: runCatching { ... }.getOrNull() —— 同上，改写为普通 try/catch。
        // 注意：jadx 的 GarminProduct.FR910XT_JAPAN 是误读，smali 里是字面量 1600（0x640）。
        try {
            InputStream inputStream = this.this$0.requireContext().getContentResolver().openInputStream(this.$uri);
            if (inputStream == null) {
                return null;
            }
            Bitmap bitmap = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            float fMax = Math.max(width, height) / 1600.0f;
            if (fMax > 1.0f) {
                bitmap = Bitmap.createScaledBitmap(bitmap, (int) (width / fMax), (int) (height / fMax), true);
            }
            return bitmap;
        } catch (Throwable th) {
            return null;
        }
    }
}

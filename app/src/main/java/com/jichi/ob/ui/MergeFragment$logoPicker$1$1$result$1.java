package com.jichi.ob.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MergeFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$logoPicker$1$1$result$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$logoPicker$1$1$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    final /* synthetic */ Uri $uri;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$logoPicker$1$1$result$1(MergeFragment mergeFragment, Uri uri, Continuation<? super MergeFragment$logoPicker$1$1$result$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$uri = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MergeFragment$logoPicker$1$1$result$1 mergeFragment$logoPicker$1$1$result$1 = new MergeFragment$logoPicker$1$1$result$1(this.this$0, this.$uri, continuation);
        mergeFragment$logoPicker$1$1$result$1.L$0 = obj;
        return mergeFragment$logoPicker$1$1$result$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((MergeFragment$logoPicker$1$1$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        // 原 Kotlin: runCatching { ... }.getOrNull() —— 同上，改写为普通 try/catch。
        // 注意：jadx 的 Manufacturer.LSEC 是误读，smali 里是字面量 320（0x140）；成功时返回 data URL，
        // 失败/空流/解码失败/压缩失败都返回 null（jadx 原文的 fall-through 到 null 是错的，以 smali 为准）。
        try {
            Context contextRequireContext = this.this$0.requireContext();
            InputStream inputStream = contextRequireContext.getContentResolver().openInputStream(this.$uri);
            if (inputStream == null) {
                return null;
            }
            Bitmap bitmap = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            if (bitmap == null) {
                return null;
            }
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (Math.max(width, height) > 320) {
                float fMax = 320.0f / Math.max(width, height);
                bitmap = Bitmap.createScaledBitmap(bitmap, RangesKt.coerceAtLeast((int) (width * fMax), 1), RangesKt.coerceAtLeast((int) (height * fMax), 1), true);
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (!bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream)) {
                return null;
            }
            FilesKt.writeBytes(new File(contextRequireContext.getFilesDir(), "custom_badge.png"), byteArrayOutputStream.toByteArray());
            return "data:image/png;base64," + Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        } catch (Throwable th) {
            return null;
        }
    }
}

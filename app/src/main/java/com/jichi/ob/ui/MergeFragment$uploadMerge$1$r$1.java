package com.jichi.ob.ui;

import com.jichi.ob.api.UploadEngine;
import com.jichi.ob.model.ActivityRecord;
import com.jichi.ob.model.DataSource;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/jichi/ob/api/UploadEngine$UploadResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$uploadMerge$1$r$1", f = "MergeFragment.kt", i = {}, l = {1691}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$uploadMerge$1$r$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super UploadEngine.UploadResult>, Object> {
    final /* synthetic */ String $cred;
    final /* synthetic */ UploadEngine $engine;
    final /* synthetic */ File $file;
    final /* synthetic */ ActivityRecord $record;
    final /* synthetic */ DataSource $target;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$uploadMerge$1$r$1(UploadEngine uploadEngine, DataSource dataSource, String str, File file, ActivityRecord activityRecord, Continuation<? super MergeFragment$uploadMerge$1$r$1> continuation) {
        super(2, continuation);
        this.$engine = uploadEngine;
        this.$target = dataSource;
        this.$cred = str;
        this.$file = file;
        this.$record = activityRecord;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$uploadMerge$1$r$1(this.$engine, this.$target, this.$cred, this.$file, this.$record, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super UploadEngine.UploadResult> continuation) {
        return ((MergeFragment$uploadMerge$1$r$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        this.label = 1;
        Object objUpload$default = UploadEngine.upload$default(this.$engine, this.$target, this.$cred, FilesKt.readBytes(this.$file), this.$record, null, this, 16, null);
        return objUpload$default == coroutine_suspended ? coroutine_suspended : objUpload$default;
    }
}

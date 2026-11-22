package com.jichi.ob.ui;

import com.jichi.ob.MainActivity;
import com.jichi.ob.model.ActivityRecord;
import com.jichi.ob.model.DataSource;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MergeFragment.kt */
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$doMerge$1$bytes$1", f = "MergeFragment.kt", i = {}, l = {1156}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$doMerge$1$bytes$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super byte[]>, Object> {
    final /* synthetic */ MainActivity $main;
    final /* synthetic */ ActivityRecord $rec;
    final /* synthetic */ DataSource $src;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$doMerge$1$bytes$1(MainActivity mainActivity, DataSource dataSource, ActivityRecord activityRecord, Continuation<? super MergeFragment$doMerge$1$bytes$1> continuation) {
        super(2, continuation);
        this.$main = mainActivity;
        this.$src = dataSource;
        this.$rec = activityRecord;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$doMerge$1$bytes$1(this.$main, this.$src, this.$rec, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super byte[]> continuation) {
        return ((MergeFragment$doMerge$1$bytes$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objDownloadForMerge = this.$main.downloadForMerge(this.$src, this.$rec, this);
        return objDownloadForMerge == coroutine_suspended ? coroutine_suspended : objDownloadForMerge;
    }
}

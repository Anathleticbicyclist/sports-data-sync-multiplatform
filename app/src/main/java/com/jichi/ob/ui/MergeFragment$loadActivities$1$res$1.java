package com.jichi.ob.ui;

import androidx.fragment.app.FragmentActivity;
import com.jichi.ob.MainActivity;
import com.jichi.ob.model.DataSource;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* compiled from: MergeFragment.kt */
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$loadActivities$1$res$1", f = "MergeFragment.kt", i = {}, l = {981}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$loadActivities$1$res$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MainActivity.MergeFetchPage>, Object> {
    final /* synthetic */ DataSource $src;
    int label;
    final /* synthetic */ MergeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$loadActivities$1$res$1(MergeFragment mergeFragment, DataSource dataSource, Continuation<? super MergeFragment$loadActivities$1$res$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$src = dataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$loadActivities$1$res$1(this.this$0, this.$src, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MainActivity.MergeFetchPage> continuation) {
        return ((MergeFragment$loadActivities$1$res$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* compiled from: MergeFragment.kt */
        @DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$loadActivities$1$res$1$1", f = "MergeFragment.kt", i = {}, l = {982}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.jichi.ob.ui.MergeFragment$loadActivities$1$res$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MainActivity.MergeFetchPage>, Object> {
        final /* synthetic */ DataSource $src;
        int label;
        final /* synthetic */ MergeFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MergeFragment mergeFragment, DataSource dataSource, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = mergeFragment;
            this.$src = dataSource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$src, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MainActivity.MergeFetchPage> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FragmentActivity activity = this.this$0.getActivity();
                MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
                if (mainActivity == null) {
                    return null;
                }
                this.label = 1;
                obj = mainActivity.fetchMergeActivities(this.$src, this.this$0.fromDate, this.this$0.toDate, this.this$0.pageSkip, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return (MainActivity.MergeFetchPage) obj;
        }
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
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.this$0, this.$src, null), this);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }
}

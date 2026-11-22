package com.jichi.ob.ui;

import com.jichi.ob.GpxToFitConverter;
import com.jichi.ob.merge.TrackMerger;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MergeFragment.kt */
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$doMerge$1$result$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MergeFragment$doMerge$1$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TrackMerger.MergedResult>, Object> {
    final /* synthetic */ ArrayList<Integer> $ascents;
    final /* synthetic */ ArrayList<Integer> $descents;
    final /* synthetic */ ArrayList<TrackMerger.FileMeta> $fileMetas;
    final /* synthetic */ ArrayList<List<GpxToFitConverter.TrackPoint>> $groups;
    final /* synthetic */ boolean $isMerge;
    final /* synthetic */ Ref.IntRef $parsedSport;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MergeFragment$doMerge$1$result$1(ArrayList<List<GpxToFitConverter.TrackPoint>> arrayList, boolean z, Ref.IntRef intRef, ArrayList<Integer> arrayList2, ArrayList<Integer> arrayList3, ArrayList<TrackMerger.FileMeta> arrayList4, Continuation<? super MergeFragment$doMerge$1$result$1> continuation) {
        super(2, continuation);
        this.$groups = arrayList;
        this.$isMerge = z;
        this.$parsedSport = intRef;
        this.$ascents = arrayList2;
        this.$descents = arrayList3;
        this.$fileMetas = arrayList4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$doMerge$1$result$1(this.$groups, this.$isMerge, this.$parsedSport, this.$ascents, this.$descents, this.$fileMetas, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TrackMerger.MergedResult> continuation) {
        return ((MergeFragment$doMerge$1$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return TrackMerger.INSTANCE.mergePointGroups(this.$groups, !this.$isMerge ? this.$parsedSport.element : -1, this.$ascents, this.$descents, this.$fileMetas);
    }
}

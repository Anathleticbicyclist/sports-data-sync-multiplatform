package com.jichi.ob.ui;

import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.jichi.ob.MainActivity;
import com.jichi.ob.model.ActivityRecord;
import com.jichi.ob.model.DataSource;
import java.util.Collection;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* compiled from: MergeFragment.kt */
// 来源：9.6.8 APK 旧反编译（MergeFragment.java 内 C01841），原样抽出为顶层类。
// 构造器按 smali 增加 MergeFragment 首参（与分支调用处一致），MergeFragment.this 改为 this$0。
// 体内逻辑与 smali 核对过：25 秒超时、空列表、追加/覆盖、翻页状态，均与 jadx 原文一致。
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$loadActivities$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MergeFragment$loadActivities$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $append;
    final /* synthetic */ TextView $btnMore;
    final /* synthetic */ DataSource $src;
    int label;
    final /* synthetic */ MergeFragment this$0;

    MergeFragment$loadActivities$1(MergeFragment mergeFragment, TextView textView, DataSource dataSource, boolean z, Continuation<? super MergeFragment$loadActivities$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$btnMore = textView;
        this.$src = dataSource;
        this.$append = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$loadActivities$1(this.this$0, this.$btnMore, this.$src, this.$append, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MergeFragment$loadActivities$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object result = TimeoutKt.withTimeoutOrNull(25000L, new MergeFragment$loadActivities$1$res$1(this.this$0, this.$src, null), this);
            if (result == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = result;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        MainActivity.MergeFetchPage mergeFetchPage = (MainActivity.MergeFetchPage) obj;
        this.this$0.pageLoading = false;
        MaterialButton materialButton = this.this$0.btnMergeNext;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnMergeNext");
        }
        materialButton.setEnabled(true);
        MaterialButton materialButton2 = this.this$0.btnMergeNext;
        if (materialButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnMergeNext");
        }
        materialButton2.setText("下一步：选择记录");
        TextView textView2 = this.$btnMore;
        if (textView2 != null) {
            textView2.setEnabled(true);
        }
        if (mergeFetchPage == null) {
            TextView textView3 = this.this$0.tvMergeHint;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            }
            textView3.setText("加载超时：网络不佳或平台响应慢");
            this.this$0.toast("加载超时（网络慢或平台响应慢），可重试；也可改用本地文件合并/生成贴纸");
            return Unit.INSTANCE;
        }
        List<ActivityRecord> records = mergeFetchPage.getRecords();
        if (records.isEmpty()) {
            this.this$0.listHasMore = false;
            TextView textView4 = this.$btnMore;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            TextView textView5 = this.this$0.tvMergeHint;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            }
            textView5.setText(this.this$0.fromDate != null ? "所选日期范围内没有记录" : "未获取到 " + this.$src.getDisplayName() + " 活动记录");
            if (!this.$append) {
                this.this$0.toast("未获取到活动记录：登录态可能失效或该平台接口异常；也可改用本地文件合并/生成贴纸");
            }
            this.this$0.applyDateFilter();
            return Unit.INSTANCE;
        }
        this.this$0.allRecords = this.$append ? CollectionsKt.plus((Collection) this.this$0.allRecords, (Iterable) records) : records;
        this.this$0.pageSkip += records.size();
        this.this$0.listHasMore = mergeFetchPage.getHasMore();
        TextView textView6 = this.$btnMore;
        if (textView6 != null) {
            textView6.setVisibility(this.this$0.listHasMore ? 0 : 8);
        }
        this.this$0.selectedIndexes.clear();
        this.this$0.rangeMode = false;
        this.this$0.rangeAnchor = -1;
        this.this$0.applyDateFilter();
        this.this$0.refreshDateFilterViews();
        if (!this.$append) {
            this.this$0.showStep(2);
        }
        return Unit.INSTANCE;
    }
}

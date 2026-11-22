package com.jichi.ob.ui;

import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.jichi.ob.GpxToFitConverter;
import com.jichi.ob.merge.TrackMerger;
import java.util.ArrayList;
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
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* compiled from: MergeFragment.kt */
// 来源：9.6.8 APK 旧反编译（MergeFragment.java 内 C01851），按 smali 重建为顶层类。
// jadx 原文有三处结构错误，已按 smali 改回：
//  ① 解析结果判断写反（jadx 是 parseResult != null || 为空才算失败，还会对 null 调 getPoints() 空指针；
//     smali 是 parseResult == null || 为空才算失败，否则成功）；
//  ② 同步完成那路是空 if + 无条件记失败（jadx 的“Removed duplicated region”产物），
//     smali 证明两路共用同一段 :goto_1 处理；
//  ③ 构造器本来就带 MergeFragment 第 3 参（与分支调用处一致），直接沿用，MergeFragment.this 改为 this$0。
// 另外按分支现状补 fileMetas：每段记一份 TrackMerger.FileMeta，随 groups 一起传给
// mergePointGroups（5 参数版）；parseBytes 返回的 ParseResult 本身就带计时/热量/厂商/产品/序列号，
// GPX 那路 parseBytes 给的就是默认值（0L、0、255、1、0L），所以 FIT/GPX 统一取这 5 个值。
// 注意：jadx 把“部分文件解析失败（X/Y.size）”写成了 this.$names + ".size"，
// smali 证明原文就是这么写的（把列表对象拼进字符串再加“.size”），这里照原样保留，不“修”它。
// toast“处理失败”只包合并那一段（与 smali 的异常表一致），循环段没有 try。
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$processLocalFiles$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MergeFragment$processLocalFiles$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<byte[]> $bytesList;
    final /* synthetic */ List<String> $names;
    // 循环状态（挂起后靠实例字段存活，不用编译器式的 L$/I$ 槽位）
    ArrayList<List<GpxToFitConverter.TrackPoint>> groups;
    ArrayList<Integer> ascents;
    ArrayList<Integer> descents;
    ArrayList<TrackMerger.FileMeta> fileMetas;
    Ref.IntRef parsedSport;
    Ref.IntRef failCount;
    Ref.ObjectRef lastErr;
    int index;
    int total;
    int label;
    final /* synthetic */ MergeFragment this$0;

    MergeFragment$processLocalFiles$1(List<String> list, List<byte[]> list2, MergeFragment mergeFragment, Continuation<? super MergeFragment$processLocalFiles$1> continuation) {
        super(2, continuation);
        this.$names = list;
        this.$bytesList = list2;
        this.this$0 = mergeFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$processLocalFiles$1(this.$names, this.$bytesList, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MergeFragment$processLocalFiles$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    // 处理一次解析结果：null 或无轨迹点算失败（失败信息前拼上文件名）；成功则累计轨迹点与 fileMetas。
    private void handleParsed(MergeFragment.ParseResult parseResult, int i) {
        if (parseResult == null || parseResult.getPoints().isEmpty()) {
            this.failCount.element++;
            this.lastErr.element = "「" + this.$names.get(i) + "」" + this.lastErr.element;
            return;
        }
        this.groups.add(parseResult.getPoints());
        this.ascents.add(parseResult.getAscentM());
        this.descents.add(parseResult.getDescentM());
        this.fileMetas.add(new TrackMerger.FileMeta(parseResult.getTimerSec(), parseResult.getTotalCalories(), parseResult.getManufacturer(), parseResult.getProduct(), parseResult.getSerialNumber()));
        if (this.parsedSport.element < 0) {
            this.parsedSport.element = TrackMerger.INSTANCE.detectSportFromName(this.$names.get(i));
        }
    }

    // 合并结果的统一处理：label 2 恢复与 withContext 同步完成两路共用。
    private Object handleMergeResult(Object result) {
        try {
            ResultKt.throwOnFailure(result);
            TrackMerger.MergedResult mergedResult = (TrackMerger.MergedResult) result;
            this.this$0.localMode = true;
            this.this$0.mergedResult = mergedResult;
            this.this$0.showPreview(mergedResult, this.groups.size());
            return Unit.INSTANCE;
        } catch (Exception e) {
            this.this$0.toast("处理失败：" + e.getMessage());
            return Unit.INSTANCE;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.groups = new ArrayList<>();
            this.ascents = new ArrayList<>();
            this.descents = new ArrayList<>();
            this.fileMetas = new ArrayList<>();
            this.parsedSport = new Ref.IntRef();
            this.parsedSport.element = -1;
            this.failCount = new Ref.IntRef();
            this.lastErr = new Ref.ObjectRef();
            this.lastErr.element = "";
            this.index = 0;
            this.total = this.$names.size();
        } else if (i == 1) {
            ResultKt.throwOnFailure(obj);
            handleParsed((MergeFragment.ParseResult) obj, this.index);
            this.index++;
        } else if (i == 2) {
            return handleMergeResult(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (this.index < this.total) {
            byte[] bytes = CollectionsKt.getOrNull(this.$bytesList, this.index);
            if (bytes == null) {
                this.failCount.element++;
                this.lastErr.element = "文件读取失败";
                this.index++;
                continue;
            }
            int current = this.index;
            this.label = 1;
            Object parsed = BuildersKt.withContext(Dispatchers.getDefault(), new MergeFragment$processLocalFiles$1$pr$1(this.this$0, bytes, null), this);
            if (parsed == coroutine_suspended) {
                return coroutine_suspended;
            }
            ResultKt.throwOnFailure(parsed);
            handleParsed((MergeFragment.ParseResult) parsed, current);
            this.index++;
        }
        // 循环结束：收尾（与 smali :cond_8 起一致）
        MaterialButton materialButton = this.this$0.btnSaveMerge;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnSaveMerge");
        }
        materialButton.setEnabled(true);
        if (this.groups.isEmpty()) {
            this.this$0.toast("所选文件均无法解析（" + this.failCount.element + " 个失败）" + this.lastErr.element);
            TextView textView = this.this$0.tvMergeHint;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            }
            textView.setText("处理失败：" + this.failCount.element + " 个文件均无法解析\n" + this.lastErr.element);
            return Unit.INSTANCE;
        }
        boolean isMerge = this.groups.size() >= 2;
        if (this.failCount.element > 0) {
            TextView textView2 = this.this$0.tvMergeHint;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            }
            textView2.setText("部分文件解析失败（" + this.groups.size() + "/" + this.$names + ".size），继续处理剩余...");
        }
        this.label = 2;
        Object merged;
        try {
            merged = BuildersKt.withContext(Dispatchers.getDefault(), new MergeFragment$processLocalFiles$1$result$1(this.groups, isMerge, this.parsedSport, this.ascents, this.descents, this.fileMetas, null), this);
        } catch (Exception e) {
            this.this$0.toast("处理失败：" + e.getMessage());
            return Unit.INSTANCE;
        }
        if (merged == coroutine_suspended) {
            return coroutine_suspended;
        }
        return handleMergeResult(merged);
    }
}

package com.jichi.ob.ui;

import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.button.MaterialButton;
import com.jichi.ob.GpxToFitConverter;
import com.jichi.ob.MainActivity;
import com.jichi.ob.merge.FitParser;
import com.jichi.ob.merge.TrackMerger;
import com.jichi.ob.model.ActivityRecord;
import com.jichi.ob.model.DataSource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
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
// 来源：9.6.8 APK 旧反编译（MergeFragment.java 内 AnonymousClass1），按 smali 重建为顶层类。
// jadx 原文有三处结构错误，已按 smali 改回：
//  ① 循环条件写反（jadx 是 if (hasNext) {收尾} else {下载}，smali 是 while (hasNext) {下载} 再收尾）；
//  ② GPX 的 try 块是空的（jadx 把 parseGpxBytes 写在了 try 外面），smali 证明解析本身在 try 里；
//  ③ 构造器按 smali 增加 MergeFragment 首参（与分支调用处一致），MergeFragment.this 改为 this$0。
// 另外按分支现状补 fileMetas：每段记一份 TrackMerger.FileMeta，随 groups 一起传给
// mergePointGroups（5 参数版）；FIT 用解析结果里的计时/热量/厂商/产品/序列号，GPX 用默认值。
// 还有一点与 jadx 不同：jadx 把整个方法包进一个 try/catch（toast“处理失败”），但 smali 的
// 异常表证明 toast 只包合并那一段（withContext Default + 结果处理），下载/解析段没有 try，
// 异常会直接抛给协程——这里按 smali 写，循环段不包 try。
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$doMerge$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MergeFragment$doMerge$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<ActivityRecord> $chosen;
    final /* synthetic */ boolean $isMerge;
    final /* synthetic */ DataSource $src;
    // 循环状态（挂起后靠实例字段存活，不用编译器式的 L$/I$ 槽位）
    ArrayList<List<GpxToFitConverter.TrackPoint>> groups;
    ArrayList<Integer> ascents;
    ArrayList<Integer> descents;
    ArrayList<TrackMerger.FileMeta> fileMetas;
    Ref.IntRef parsedSport;
    Iterator<ActivityRecord> iterator;
    MainActivity mainActivity;
    int parseFail;
    int downloadFail;
    String lastErr;
    int label;
    final /* synthetic */ MergeFragment this$0;

    MergeFragment$doMerge$1(MergeFragment mergeFragment, List<ActivityRecord> list, boolean z, DataSource dataSource, Continuation<? super MergeFragment$doMerge$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$chosen = list;
        this.$isMerge = z;
        this.$src = dataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$doMerge$1(this.this$0, this.$chosen, this.$isMerge, this.$src, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MergeFragment$doMerge$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    // 处理一次下载结果：空字节算下载失败；FIT/GPX 解析失败算解析失败；成功则累计轨迹点与 fileMetas。
    private void handleDownloaded(byte[] bytes) {
        if (bytes == null || bytes.length == 0) {
            this.downloadFail++;
            this.lastErr = "下载返回为空（登录态可能失效）";
            return;
        }
        if (GpxToFitConverter.INSTANCE.isFit(bytes)) {
            FitParser.FitResult fitResult = FitParser.INSTANCE.parse(bytes);
            if (fitResult == null || fitResult.getPoints().isEmpty()) {
                this.parseFail++;
                this.lastErr = "FIT 解析失败（" + bytes.length + " 字节，文件可能不完整或格式特殊）";
                return;
            }
            this.groups.add(fitResult.getPoints());
            this.ascents.add(fitResult.getAscentM());
            this.descents.add(fitResult.getDescentM());
            this.fileMetas.add(new TrackMerger.FileMeta(fitResult.getTimerSec(), fitResult.getTotalCalories(), fitResult.getManufacturer(), fitResult.getProduct(), fitResult.getSerialNumber()));
            if (this.parsedSport.element < 0 && fitResult.getSport() > 0) {
                this.parsedSport.element = fitResult.getSport();
            }
            return;
        }
        try {
            List<GpxToFitConverter.TrackPoint> gpxPoints = GpxToFitConverter.INSTANCE.parseGpxBytes(bytes);
            if (gpxPoints.isEmpty()) {
                this.parseFail++;
                this.lastErr = "GPX 无有效轨迹点（" + bytes.length + " 字节，室内运动如跑步机无GPS轨迹，请选室外记录）";
                return;
            }
            this.groups.add(gpxPoints);
            this.ascents.add(0);
            this.descents.add(0);
            this.fileMetas.add(new TrackMerger.FileMeta(0L, 0, 255, 1, 0L));
        } catch (Exception e) {
            this.parseFail++;
            this.lastErr = "GPX 解析异常：" + e.getMessage();
        }
    }

    // 合并结果的统一处理：label 2 恢复与 withContext 同步完成两路共用（与 smali 的 :goto_9 一致）。
    private Object handleMergeResult(Object result) {
        try {
            ResultKt.throwOnFailure(result);
            TrackMerger.MergedResult mergedResult = (TrackMerger.MergedResult) result;
            this.this$0.mergedResult = mergedResult;
            this.this$0.showPreview(mergedResult, this.$chosen.size());
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
            this.parseFail = 0;
            this.downloadFail = 0;
            this.lastErr = "";
            FragmentActivity activity = this.this$0.getActivity();
            MainActivity main = activity instanceof MainActivity ? (MainActivity) activity : null;
            if (main == null) {
                return Unit.INSTANCE;
            }
            this.mainActivity = main;
            this.iterator = this.$chosen.iterator();
        } else if (i == 1) {
            ResultKt.throwOnFailure(obj);
            handleDownloaded((byte[]) obj);
        } else if (i == 2) {
            return handleMergeResult(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (this.iterator.hasNext()) {
            ActivityRecord next = this.iterator.next();
            this.label = 1;
            Object downloaded = BuildersKt.withContext(Dispatchers.getIO(), new MergeFragment$doMerge$1$bytes$1(this.mainActivity, this.$src, next, null), this);
            if (downloaded == coroutine_suspended) {
                return coroutine_suspended;
            }
            ResultKt.throwOnFailure(downloaded);
            handleDownloaded((byte[]) downloaded);
        }
        // 循环结束：收尾（与 smali :cond_c 一致）
        MaterialButton materialButton = this.this$0.btnSaveMerge;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnSaveMerge");
        }
        materialButton.setEnabled(true);
        if (this.groups.isEmpty()) {
            String reason = this.lastErr.length() > 0 ? "\n原因：" + this.lastErr : "";
            TextView textView = this.this$0.tvMergeHint;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            }
            textView.setText("处理失败：下载失败 " + this.downloadFail + " / 解析失败 " + this.parseFail + " 条" + reason);
            this.this$0.toast("处理失败：无可解析的轨迹（下载失败 " + this.downloadFail + " / 解析失败 " + this.parseFail + " 条）" + reason);
            return Unit.INSTANCE;
        }
        if (this.groups.size() < this.$chosen.size() && this.$isMerge) {
            TextView textView2 = this.this$0.tvMergeHint;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            }
            textView2.setText("部分记录无法解析（" + this.groups.size() + "/" + this.$chosen.size() + "），继续处理剩余...");
        }
        this.label = 2;
        Object merged;
        try {
            merged = BuildersKt.withContext(Dispatchers.getDefault(), new MergeFragment$doMerge$1$result$1(this.groups, this.$isMerge, this.parsedSport, this.ascents, this.descents, this.fileMetas, null), this);
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

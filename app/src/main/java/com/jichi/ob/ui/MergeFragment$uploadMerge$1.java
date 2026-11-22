package com.jichi.ob.ui;

import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.button.MaterialButton;
import com.jichi.ob.MainActivity;
import com.jichi.ob.api.UploadEngine;
import com.jichi.ob.merge.TrackMerger;
import com.jichi.ob.model.ActivityRecord;
import com.jichi.ob.model.DataSource;
import com.jichi.ob.util.ActivityCache;
import com.jichi.ob.util.PrefsManager;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* compiled from: MergeFragment.kt */
// 来源：9.6.8 APK 旧反编译（MergeFragment.java 内 C01861），按 smali 重建为顶层类。
// jadx 原文有四处错误，已按 smali 改回：
//  ① label 0 的循环体是空的、收尾用的变量全未初始化（jadx 的“Removed duplicated region”产物），
//     smali 证明循环与收尾是共用的：逐个平台上传（:goto_3），传完再收尾（:cond_a）；
//  ② 收尾两处条件都写反（jadx 是 失败数 != 0 才算“合并+上传完成”，smali 是 失败数 == 0 才算；
//     toast 的“已上传 X 个平台 / 上传完成：X 成功 / Y 失败”也一样写反了）；
//  ③ jadx 的 DataSource.INSTANCE.fromShortName 是错的，smali 调的是 DataSource$Companion.fromShortName；
//  ④ jadx 的 ActivityCache.INSTANCE.get 是错的，smali 调的是 ActivityCache$Companion.get。
// 构造器按 smali 增加 MergeFragment 首参（与分支调用处一致），MergeFragment.this 改为 this$0。
// 另外两处与 jadx 原文不同：① 原 dex 里的 Lambda0/Lambda1 合成类改用匿名 Runnable 代替，
// 等价（调的是同一个静态方法）；② ActivityRecord 构造改用分支的 8 参主构造器——
// APK 的 ActivityRecord 多一个 sportType 字段，分支模型里没有，上传只用前 6 个值 + 默认值，
// 效果与 jadx 的 9 参合成构造（mask 448，后 3 参取默认）一致。
@DebugMetadata(c = "com.jichi.ob.ui.MergeFragment$uploadMerge$1", f = "MergeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MergeFragment$uploadMerge$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ UploadEngine $engine;
    final /* synthetic */ File $file;
    final /* synthetic */ TrackMerger.MergedResult $result;
    // 循环状态（挂起后靠实例字段存活，不用编译器式的 L$ 槽位）
    Ref.IntRef okCount;
    Ref.IntRef failCount;
    Iterator<String> tags;
    DataSource currentTarget;
    MainActivity mainActivity;
    int label;
    final /* synthetic */ MergeFragment this$0;

    MergeFragment$uploadMerge$1(MergeFragment mergeFragment, File file, TrackMerger.MergedResult mergedResult, UploadEngine uploadEngine, Continuation<? super MergeFragment$uploadMerge$1> continuation) {
        super(2, continuation);
        this.this$0 = mergeFragment;
        this.$file = file;
        this.$result = mergedResult;
        this.$engine = uploadEngine;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MergeFragment$uploadMerge$1(this.this$0, this.$file, this.$result, this.$engine, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MergeFragment$uploadMerge$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    // 单个平台上传完成后的 UI 回调（原 invokeSuspend$lambda$2；体内异常全部吞掉，与 smali 的 try/catch 一致）。
    private static void onUploadResult(UploadEngine.UploadResult uploadResult, Ref.IntRef okCount, final MainActivity mainActivity, DataSource target, File file, TrackMerger.MergedResult mergedResult, Ref.IntRef failCount) {
        if (uploadResult.getSuccess()) {
            okCount.element++;
            try {
                ActivityCache activityCache = ActivityCache.Companion.get(mainActivity);
                activityCache.addPlatformLog(target.getShortName(), "导出", "📤 合并上传: " + file.getName() + " (" + file.length() + " 字节)");
                activityCache.upsert(target.getShortName(), new ActivityCache.Entry("merged_" + System.currentTimeMillis(), target.getShortName(), mergedResult.getStartTime() * 1000, "合并", FilesKt.getNameWithoutExtension(file), mergedResult.getTotalDistanceKm(), (int) mergedResult.getTotalDurationSec(), file.getName(), ""));
                mainActivity.runOnUiThread(new Runnable() {
                    @Override // java.lang.Runnable
                    public void run() {
                        mainActivity.refreshLoginCardsIfAny$app_devRelease();
                    }
                });
            } catch (Exception unused) {
                // 忽略：缓存/刷新失败不影响上传结果统计
            }
            return;
        }
        failCount.element++;
    }

    // 把一次上传结果发到主线程回调（label 1 恢复与 withContext 同步完成两路共用）。
    private void dispatchResult(final UploadEngine.UploadResult uploadResult, final DataSource target) {
        final MainActivity main = this.mainActivity;
        final Ref.IntRef ok = this.okCount;
        final Ref.IntRef fail = this.failCount;
        final File file = this.$file;
        final TrackMerger.MergedResult merged = this.$result;
        main.runOnUiThread(new Runnable() {
            @Override // java.lang.Runnable
            public void run() {
                onUploadResult(uploadResult, ok, main, target, file, merged, fail);
            }
        });
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.okCount = new Ref.IntRef();
            this.failCount = new Ref.IntRef();
            FragmentActivity activity = this.this$0.getActivity();
            MainActivity main = activity instanceof MainActivity ? (MainActivity) activity : null;
            if (main == null) {
                MaterialButton materialButton = this.this$0.btnUploadMerge;
                if (materialButton == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("btnUploadMerge");
                }
                materialButton.setEnabled(true);
                return Unit.INSTANCE;
            }
            this.mainActivity = main;
            this.tags = CollectionsKt.toList(this.this$0.selectedUploadTags).iterator();
        } else if (i == 1) {
            ResultKt.throwOnFailure(obj);
            dispatchResult((UploadEngine.UploadResult) obj, this.currentTarget);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (this.tags.hasNext()) {
            String tag = this.tags.next();
            DataSource target = DataSource.Companion.fromShortName(tag);
            if (target == null) {
                continue;
            }
            PrefsManager prefs = this.this$0.prefs;
            if (prefs == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefs");
            }
            String credential = prefs.getCredential(target);
            if (credential == null) {
                continue;
            }
            String title = FilesKt.getNameWithoutExtension(this.$file);
            String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date(1000 * this.$result.getStartTime()));
            DataSource source = this.this$0.source;
            if (source == null) {
                source = DataSource.IGPSPORT;
            }
            ActivityRecord record = new ActivityRecord("merged", title, time, this.$result.getTotalDistanceKm(), (int) this.$result.getTotalDurationSec(), source, null, 0L);
            this.currentTarget = target;
            this.label = 1;
            Object uploaded = BuildersKt.withContext(Dispatchers.getIO(), new MergeFragment$uploadMerge$1$r$1(this.$engine, target, credential, this.$file, record, null), this);
            if (uploaded == coroutine_suspended) {
                return coroutine_suspended;
            }
            ResultKt.throwOnFailure(uploaded);
            dispatchResult((UploadEngine.UploadResult) uploaded, target);
        }
        // 循环结束：收尾（与 smali :cond_a 一致；条件以 smali 为准，jadx 原文写反了）
        MaterialButton materialButton2 = this.this$0.btnUploadMerge;
        if (materialButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnUploadMerge");
        }
        materialButton2.setEnabled(true);
        materialButton2.setText("开始上传（未选平台则仅存本地）");
        TextView titleView = this.this$0.tvMergeResultTitle;
        if (titleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvMergeResultTitle");
        }
        if (this.failCount.element == 0) {
            titleView.setText("✅ 合并+上传完成");
            this.this$0.toast("已上传 " + this.okCount.element + " 个平台");
        } else {
            titleView.setText("✅ 合并完成（上传 " + this.okCount.element + " 成功 / " + this.failCount.element + " 失败）");
            this.this$0.toast("上传完成：" + this.okCount.element + " 成功 / " + this.failCount.element + " 失败");
        }
        return Unit.INSTANCE;
    }
}

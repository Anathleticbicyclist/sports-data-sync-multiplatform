package com.jichi.ob.ui;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.GridLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.garmin.fit.GarminProduct;
import com.garmin.fit.MonitoringReader;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.jichi.ob.GpxToFitConverter;
import com.jichi.ob.MainActivity;
import com.jichi.ob.R;
import com.jichi.ob.api.UploadEngine;
import com.jichi.ob.merge.FitParser;
import com.jichi.ob.merge.StickerCore;
import com.jichi.ob.merge.TrackMerger;
import com.jichi.ob.model.ActivityRecord;
import com.jichi.ob.model.DataSource;
import com.jichi.ob.model.UploadSupport;
import com.jichi.ob.util.PrefsManager;
import io.jenetics.jpx.Degrees;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.enums.EnumEntries;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: MergeFragment.kt */
/* loaded from: classes.dex */
public final class MergeFragment extends Fragment {
    private LinearLayout bgChipRow;
    private HorizontalScrollView bgPickerRow;
    private final Map<StickerCore.StickerBg, Integer> bgSwatches;
    private MaterialButton btnDoMerge;
    private TextView btnExportFit;
    private TextView btnExportGpx;
    private TextView btnExportSticker;
    private TextView btnMergeDone;
    MaterialButton btnMergeNext;
    MaterialButton btnSaveMerge;
    private TextView btnSticker3d;
    private TextView btnSticker3dBand;
    private TextView btnSticker3dMode;
    private TextView btnSticker3dReset;
    private TextView btnStickerBadge;
    private TextView btnStickerBrand;
    private TextView btnStickerColor;
    private TextView btnStickerDataLayer;
    private TextView btnStickerGlow;
    private TextView btnStickerItems;
    private TextView btnStickerPhoto;
    private TextView btnStickerPos;
    private TextView btnStickerStyle;
    private TextView btnStickerSummary;
    private TextView btnStickerTextColor;
    private TextView btnStickerTrack;
    private TextView btnStickerTransparent;
    private TextView btnStickerWatermark;
    private TextView btnStickerWidth;
    MaterialButton btnUploadMerge;
    private LinearLayout categoryTabRow;
    boolean comboOverride;
    private LinearLayout comboPanel;
    private boolean comboPanelOpen;
    private final ActivityResultLauncher<String[]> filePicker;
    String fromDate;
    private GridLayout gridMergeSource;
    private GridLayout gridMergeStats;
    private GridLayout gridMergeUpload;
    boolean listHasMore;
    boolean localMode;
    private final ActivityResultLauncher<String> logoPicker;
    private MergeAdapter mergeAdapter;
    private TextView mergeStepHint;
    private TextView mergeTitle;
    TrackMerger.MergedResult mergedResult;
    boolean pageLoading;
    int pageSkip;
    private final ActivityResultLauncher<String> photoPicker;
    PrefsManager prefs;
    TrackPreviewView previewTrack;
    boolean rangeMode;
    private RecyclerView rvMergeList;
    private File savedFile;
    DataSource source;
    private View stepPreview;
    private View stepResult;
    private View stepSelect;
    private View stepSource;
    private TextView stickerCardPage;
    private TextView stickerCardTitle;
    private int stickerPos;
    private int stickerStyle;
    private TextView stickerTemplateName;
    private int stickerTextMode;
    private int templateIdx;
    String toDate;
    TextView tvMergeHint;
    private TextView tvMergeResultFile;
    private TextView tvMergeResultPath;
    TextView tvMergeResultTitle;
    private TextView tvMergeSelected;
    final LinkedHashSet<Integer> selectedIndexes = new LinkedHashSet<>();
    int rangeAnchor = -1;
    private boolean badgeOn = true;
    final Set<StickerCore.StickerBg> photoBgs = SetsKt.setOf((Object[]) new StickerCore.StickerBg[]{StickerCore.StickerBg.PHOTO_OVERLAY, StickerCore.StickerBg.FROSTED, StickerCore.StickerBg.PHOTO_SPLIT});
    private boolean sticker3d = true;
    private int stickerLineMode = 2;
    private List<Integer> stickerItems = CollectionsKt.toMutableList((Collection) StickerCore.INSTANCE.getITEM_DEFAULT());
    final LinkedHashSet<String> selectedUploadTags = new LinkedHashSet<>();
    List<ActivityRecord> allRecords = CollectionsKt.emptyList();
    private String lastErr = "";

    /* renamed from: dp$delegate, reason: from kotlin metadata */
    private final Lazy dp = LazyKt.lazy(new Function0() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda72
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            float dp_delegate$lambda$0;
            dp_delegate$lambda$0 = MergeFragment.dp_delegate$lambda$0(MergeFragment.this);
            return Float.valueOf(dp_delegate$lambda$0);
        }
    });

    /* compiled from: MergeFragment.kt */
        public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StickerCore.StickerTrack.values().length];
            try {
                iArr[StickerCore.StickerTrack.ORANGE_GRAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StickerCore.StickerTrack.WHITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StickerCore.StickerTrack.BLACK_FINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StickerCore.StickerTrack.GRAY_FINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[StickerCore.StickerTrack.NEON.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[StickerCore.StickerTrack.HEAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[StickerCore.StickerTrack.ICE_3D.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[StickerCore.StickerTrack.PHANTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MergeFragment() {
        ActivityResultLauncher<String> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.GetContent(), new ActivityResultCallback() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda73
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MergeFragment.photoPicker$lambda$98(MergeFragment.this, (Uri) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        this.photoPicker = registerForActivityResult;
        ActivityResultLauncher<String> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.GetContent(), new ActivityResultCallback() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda74
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MergeFragment.logoPicker$lambda$99(MergeFragment.this, (Uri) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResult(...)");
        this.logoPicker = registerForActivityResult2;
        ActivityResultLauncher<String[]> registerForActivityResult3 = registerForActivityResult(new ActivityResultContracts.OpenMultipleDocuments(), new ActivityResultCallback() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda75
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MergeFragment.filePicker$lambda$102(MergeFragment.this, (List) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult3, "registerForActivityResult(...)");
        this.filePicker = registerForActivityResult3;
        this.bgSwatches = MapsKt.mapOf(TuplesKt.to(StickerCore.StickerBg.DEEP_SPACE, -16052964), TuplesKt.to(StickerCore.StickerBg.CHECKER, -15724524), TuplesKt.to(StickerCore.StickerBg.NEON, -16120044), TuplesKt.to(StickerCore.StickerBg.PURE_BLACK, -16250870), TuplesKt.to(StickerCore.StickerBg.MINIMAL_WHITE, -1), TuplesKt.to(StickerCore.StickerBg.CREAM, -593437), TuplesKt.to(StickerCore.StickerBg.LIGHT_GRAY, -1249294), TuplesKt.to(StickerCore.StickerBg.WARM_POSTER, -7742), TuplesKt.to(StickerCore.StickerBg.MAP_GRID, -15195336), TuplesKt.to(StickerCore.StickerBg.SATELLITE, -15985114), TuplesKt.to(StickerCore.StickerBg.LIGHT_MAP, -2038036), TuplesKt.to(StickerCore.StickerBg.CONTOUR, -465976), TuplesKt.to(StickerCore.StickerBg.HEAT_BG, -14021360), TuplesKt.to(StickerCore.StickerBg.ORANGE_BAND, -14935528), TuplesKt.to(StickerCore.StickerBg.ICE_BAND, -15582123), TuplesKt.to(StickerCore.StickerBg.LIGHT_TRAIL, -16250090), TuplesKt.to(StickerCore.StickerBg.DUAL_DARK, -15921382), TuplesKt.to(StickerCore.StickerBg.POSTER_ORANGE, -242686), TuplesKt.to(StickerCore.StickerBg.RETRO_PURPLE, -14020528), TuplesKt.to(StickerCore.StickerBg.ANNUAL_DARK, -15327172), TuplesKt.to(StickerCore.StickerBg.PHOTO_OVERLAY, -7823176), TuplesKt.to(StickerCore.StickerBg.FROSTED, -3550500), TuplesKt.to(StickerCore.StickerBg.PHOTO_SPLIT, -15921382));
    }

    public static final /* synthetic */ void access$onItemClick(MergeFragment mergeFragment, int i) {
        mergeFragment.onItemClick(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float dp_delegate$lambda$0(MergeFragment mergeFragment) {
        return mergeFragment.getResources().getDisplayMetrics().density;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getDp() {
        return ((Number) this.dp.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0093, code lost:
    
        if (r4 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00c2, code lost:
    
        if (r2 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0104, code lost:
    
        if (r3 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void editSummaryStats() {
        // 方法体按 9.6.8 原版意图重写：旧反编译结果此处是反编译器复制粘贴坏了的
        // （对话框建了两遍、同一批输入框重复加进布局、str/str2 可能未赋值），
        // 按“四个输入框 + 一个对话框 + 保存走 editSummaryStats$lambda$9”的原意写干净。
        Context ctx = requireContext();
        LinearLayout layout = new LinearLayout(ctx);
        layout.setOrientation(1);
        layout.setPadding(56, 24, 56, 8);
        TrackPreviewView preview = this.previewTrack;
        if (preview == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            preview = null;
        }
        StickerCore.SummaryStats stats = preview.getSummaryStats();
        final EditText countEt = new EditText(ctx);
        countEt.setHint("次数（如 12）");
        countEt.setInputType(2);
        countEt.setTextSize(15.0f);
        countEt.setText(stats != null ? Integer.valueOf(stats.getCount()).toString() : "");
        countEt.setPadding(0, 8, 0, 8);
        final EditText kmEt = new EditText(ctx);
        kmEt.setHint("总里程 km（如 126.5）");
        kmEt.setInputType(8194);
        kmEt.setTextSize(15.0f);
        kmEt.setText(stats != null ? String.format(Locale.US, "%.1f", Double.valueOf(stats.getTotalKm())) : "");
        kmEt.setPadding(0, 8, 0, 8);
        final EditText minEt = new EditText(ctx);
        minEt.setHint("总时长 分钟（如 458）");
        minEt.setInputType(2);
        minEt.setTextSize(15.0f);
        minEt.setText(stats != null ? String.valueOf(stats.getTotalSec() / 60) : "");
        minEt.setPadding(0, 8, 0, 8);
        final EditText ascEt = new EditText(ctx);
        ascEt.setHint("总爬升 m（如 1520）");
        ascEt.setInputType(2);
        ascEt.setTextSize(15.0f);
        ascEt.setText(stats != null ? String.format(Locale.US, "%.0f", Double.valueOf(stats.getTotalAscentM())) : "");
        ascEt.setPadding(0, 8, 0, 8);
        layout.addView(countEt);
        layout.addView(kmEt);
        layout.addView(minEt);
        layout.addView(ascEt);
        new AlertDialog.Builder(ctx).setTitle("录入往期数据").setMessage("用于「累计对比 / 双栏 / 年度总结」模板的右侧累计数据，按月/年手输即可").setView(layout).setPositiveButton("保存", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                MergeFragment.editSummaryStats$lambda$9(countEt, kmEt, minEt, ascEt, MergeFragment.this, dialogInterface, i);
            }
        }).setNegativeButton("清除", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void editSummaryStats$lambda$9(EditText editText, EditText editText2, EditText editText3, EditText editText4, MergeFragment mergeFragment, DialogInterface dialogInterface, int i) {
        Integer intOrNull = StringsKt.toIntOrNull(editText.getText().toString());
        int intValue = intOrNull != null ? intOrNull.intValue() : 0;
        Double doubleOrNull = StringsKt.toDoubleOrNull(editText2.getText().toString());
        double doubleValue = doubleOrNull != null ? doubleOrNull.doubleValue() : 0.0d;
        Long longOrNull = StringsKt.toLongOrNull(editText3.getText().toString());
        long longValue = longOrNull != null ? longOrNull.longValue() : 0L;
        Double doubleOrNull2 = StringsKt.toDoubleOrNull(editText4.getText().toString());
        double doubleValue2 = doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 0.0d;
        TrackPreviewView trackPreviewView = null;
        if (intValue <= 0 && doubleValue <= Degrees.MIN_VALUE && longValue <= 0 && doubleValue2 <= Degrees.MIN_VALUE) {
            TrackPreviewView trackPreviewView2 = mergeFragment.previewTrack;
            if (trackPreviewView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView2 = null;
            }
            trackPreviewView2.setSummaryStats(null);
            mergeFragment.toast("已清除往期数据");
        } else {
            TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
            if (trackPreviewView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView = trackPreviewView3;
            }
            trackPreviewView.setSummaryStats(new StickerCore.SummaryStats(intValue, doubleValue, longValue * 60, doubleValue2));
            mergeFragment.toast("往期数据已保存");
        }
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_merge, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        this.prefs = new PrefsManager(requireContext);
        View findViewById = view.findViewById(R.id.stepSource);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.stepSource = findViewById;
        View findViewById2 = view.findViewById(R.id.stepSelect);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.stepSelect = findViewById2;
        View findViewById3 = view.findViewById(R.id.stepPreview);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        this.stepPreview = findViewById3;
        View findViewById4 = view.findViewById(R.id.stepResult);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
        this.stepResult = findViewById4;
        View findViewById5 = view.findViewById(R.id.mergeTitle);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(...)");
        this.mergeTitle = (TextView) findViewById5;
        View findViewById6 = view.findViewById(R.id.mergeStepHint);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(...)");
        this.mergeStepHint = (TextView) findViewById6;
        View findViewById7 = view.findViewById(R.id.gridMergeSource);
        Intrinsics.checkNotNullExpressionValue(findViewById7, "findViewById(...)");
        this.gridMergeSource = (GridLayout) findViewById7;
        View findViewById8 = view.findViewById(R.id.btnMergeNext);
        Intrinsics.checkNotNullExpressionValue(findViewById8, "findViewById(...)");
        this.btnMergeNext = (MaterialButton) findViewById8;
        View findViewById9 = view.findViewById(R.id.rvMergeList);
        Intrinsics.checkNotNullExpressionValue(findViewById9, "findViewById(...)");
        this.rvMergeList = (RecyclerView) findViewById9;
        View findViewById10 = view.findViewById(R.id.tvMergeHint);
        Intrinsics.checkNotNullExpressionValue(findViewById10, "findViewById(...)");
        this.tvMergeHint = (TextView) findViewById10;
        View findViewById11 = view.findViewById(R.id.tvMergeSelected);
        Intrinsics.checkNotNullExpressionValue(findViewById11, "findViewById(...)");
        this.tvMergeSelected = (TextView) findViewById11;
        View findViewById12 = view.findViewById(R.id.btnDoMerge);
        Intrinsics.checkNotNullExpressionValue(findViewById12, "findViewById(...)");
        this.btnDoMerge = (MaterialButton) findViewById12;
        RecyclerView recyclerView = this.rvMergeList;
        TextView textView = null;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvMergeList");
            recyclerView = null;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        ((TextView) view.findViewById(R.id.btnLoadMore)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$11$lambda$10(MergeFragment.this, view2);
            }
        });
        View findViewById13 = view.findViewById(R.id.previewTrack);
        Intrinsics.checkNotNullExpressionValue(findViewById13, "findViewById(...)");
        this.previewTrack = (TrackPreviewView) findViewById13;
        View findViewById14 = view.findViewById(R.id.categoryTabRow);
        Intrinsics.checkNotNullExpressionValue(findViewById14, "findViewById(...)");
        this.categoryTabRow = (LinearLayout) findViewById14;
        View findViewById15 = view.findViewById(R.id.bgPickerRow);
        Intrinsics.checkNotNullExpressionValue(findViewById15, "findViewById(...)");
        this.bgPickerRow = (HorizontalScrollView) findViewById15;
        View findViewById16 = view.findViewById(R.id.bgChipRow);
        Intrinsics.checkNotNullExpressionValue(findViewById16, "findViewById(...)");
        this.bgChipRow = (LinearLayout) findViewById16;
        View findViewById17 = view.findViewById(R.id.comboPanel);
        Intrinsics.checkNotNullExpressionValue(findViewById17, "findViewById(...)");
        this.comboPanel = (LinearLayout) findViewById17;
        View findViewById18 = view.findViewById(R.id.gridMergeStats);
        Intrinsics.checkNotNullExpressionValue(findViewById18, "findViewById(...)");
        this.gridMergeStats = (GridLayout) findViewById18;
        View findViewById19 = view.findViewById(R.id.btnSaveMerge);
        Intrinsics.checkNotNullExpressionValue(findViewById19, "findViewById(...)");
        this.btnSaveMerge = (MaterialButton) findViewById19;
        View findViewById20 = view.findViewById(R.id.btnExportGpx);
        Intrinsics.checkNotNullExpressionValue(findViewById20, "findViewById(...)");
        this.btnExportGpx = (TextView) findViewById20;
        View findViewById21 = view.findViewById(R.id.btnExportFit);
        Intrinsics.checkNotNullExpressionValue(findViewById21, "findViewById(...)");
        this.btnExportFit = (TextView) findViewById21;
        View findViewById22 = view.findViewById(R.id.btnExportSticker);
        Intrinsics.checkNotNullExpressionValue(findViewById22, "findViewById(...)");
        this.btnExportSticker = (TextView) findViewById22;
        View findViewById23 = view.findViewById(R.id.btnStickerStyle);
        Intrinsics.checkNotNullExpressionValue(findViewById23, "findViewById(...)");
        this.btnStickerStyle = (TextView) findViewById23;
        View findViewById24 = view.findViewById(R.id.btnSticker3d);
        Intrinsics.checkNotNullExpressionValue(findViewById24, "findViewById(...)");
        this.btnSticker3d = (TextView) findViewById24;
        View findViewById25 = view.findViewById(R.id.btnStickerColor);
        Intrinsics.checkNotNullExpressionValue(findViewById25, "findViewById(...)");
        this.btnStickerColor = (TextView) findViewById25;
        View findViewById26 = view.findViewById(R.id.btnStickerTextColor);
        Intrinsics.checkNotNullExpressionValue(findViewById26, "findViewById(...)");
        this.btnStickerTextColor = (TextView) findViewById26;
        View findViewById27 = view.findViewById(R.id.btnStickerItems);
        Intrinsics.checkNotNullExpressionValue(findViewById27, "findViewById(...)");
        this.btnStickerItems = (TextView) findViewById27;
        View findViewById28 = view.findViewById(R.id.btnStickerPos);
        Intrinsics.checkNotNullExpressionValue(findViewById28, "findViewById(...)");
        this.btnStickerPos = (TextView) findViewById28;
        View findViewById29 = view.findViewById(R.id.btnStickerGlow);
        Intrinsics.checkNotNullExpressionValue(findViewById29, "findViewById(...)");
        this.btnStickerGlow = (TextView) findViewById29;
        View findViewById30 = view.findViewById(R.id.btnSticker3dBand);
        Intrinsics.checkNotNullExpressionValue(findViewById30, "findViewById(...)");
        this.btnSticker3dBand = (TextView) findViewById30;
        View findViewById31 = view.findViewById(R.id.btnStickerTransparent);
        Intrinsics.checkNotNullExpressionValue(findViewById31, "findViewById(...)");
        this.btnStickerTransparent = (TextView) findViewById31;
        View findViewById32 = view.findViewById(R.id.btnStickerWidth);
        Intrinsics.checkNotNullExpressionValue(findViewById32, "findViewById(...)");
        this.btnStickerWidth = (TextView) findViewById32;
        View findViewById33 = view.findViewById(R.id.btnStickerDataLayer);
        Intrinsics.checkNotNullExpressionValue(findViewById33, "findViewById(...)");
        this.btnStickerDataLayer = (TextView) findViewById33;
        View findViewById34 = view.findViewById(R.id.btnStickerWatermark);
        Intrinsics.checkNotNullExpressionValue(findViewById34, "findViewById(...)");
        this.btnStickerWatermark = (TextView) findViewById34;
        View findViewById35 = view.findViewById(R.id.btnStickerBadge);
        Intrinsics.checkNotNullExpressionValue(findViewById35, "findViewById(...)");
        this.btnStickerBadge = (TextView) findViewById35;
        View findViewById36 = view.findViewById(R.id.btnStickerTrack);
        Intrinsics.checkNotNullExpressionValue(findViewById36, "findViewById(...)");
        this.btnStickerTrack = (TextView) findViewById36;
        View findViewById37 = view.findViewById(R.id.btnStickerBrand);
        Intrinsics.checkNotNullExpressionValue(findViewById37, "findViewById(...)");
        this.btnStickerBrand = (TextView) findViewById37;
        View findViewById38 = view.findViewById(R.id.btnStickerSummary);
        Intrinsics.checkNotNullExpressionValue(findViewById38, "findViewById(...)");
        this.btnStickerSummary = (TextView) findViewById38;
        View findViewById39 = view.findViewById(R.id.stickerTemplateName);
        Intrinsics.checkNotNullExpressionValue(findViewById39, "findViewById(...)");
        this.stickerTemplateName = (TextView) findViewById39;
        View findViewById40 = view.findViewById(R.id.stickerCardTitle);
        Intrinsics.checkNotNullExpressionValue(findViewById40, "findViewById(...)");
        this.stickerCardTitle = (TextView) findViewById40;
        View findViewById41 = view.findViewById(R.id.stickerCardPage);
        Intrinsics.checkNotNullExpressionValue(findViewById41, "findViewById(...)");
        this.stickerCardPage = (TextView) findViewById41;
        final View findViewById42 = view.findViewById(R.id.previewCardWrap);
        findViewById42.post(new Runnable() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MergeFragment.onViewCreated$lambda$12(findViewById42);
            }
        });
        View findViewById43 = view.findViewById(R.id.btnStickerPhoto);
        Intrinsics.checkNotNullExpressionValue(findViewById43, "findViewById(...)");
        TextView textView2 = (TextView) findViewById43;
        this.btnStickerPhoto = textView2;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerPhoto");
            textView2 = null;
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.pickStickerPhoto();
            }
        });
        ((TextView) view.findViewById(R.id.btnStickerPrev)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$14(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnStickerNext)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$15(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnStickerEdit)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.openCombo();
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackZoomOut)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda46
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$17(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackZoomIn)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$18(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackRotateLeft)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$19(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackRotateRight)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda49
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$20(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackTiltBack)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$21(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackTiltForward)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$22(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackReset)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$23(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackUp)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$24(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackDown)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda55
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$25(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackLeft)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda66
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$26(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnTrackRight)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda77
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$27(MergeFragment.this, view2);
            }
        });
        final EditText editText = (EditText) view.findViewById(R.id.editStickerTitle);
        ((TextView) view.findViewById(R.id.btnApplyTitle)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda80
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$29(editText, this, view2);
            }
        });
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda81
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView3, int i, KeyEvent keyEvent) {
                boolean onViewCreated$lambda$31;
                onViewCreated$lambda$31 = MergeFragment.onViewCreated$lambda$31(editText, this, textView3, i, keyEvent);
                return onViewCreated$lambda$31;
            }
        });
        ((TextView) view.findViewById(R.id.btnEditData)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.showDataEditDialog();
            }
        });
        ((TextView) view.findViewById(R.id.btnClearData)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$33(MergeFragment.this, view2);
            }
        });
        final TextView textView3 = (TextView) view.findViewById(R.id.chipAspect11);
        final TextView textView4 = (TextView) view.findViewById(R.id.chipAspect34);
        final TextView textView5 = (TextView) view.findViewById(R.id.chipAspect916);
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$applyAspect(MergeFragment.this, textView3, textView4, textView5, "1:1");
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$applyAspect(MergeFragment.this, textView3, textView4, textView5, "3:4");
            }
        });
        textView5.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$applyAspect(MergeFragment.this, textView3, textView4, textView5, "9:16");
            }
        });
        onViewCreated$applyAspect(this, textView3, textView4, textView5, "1:1");
        TrackPreviewView trackPreviewView = this.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.setOnTemplateSwipe(new Function1() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit onViewCreated$lambda$37;
                onViewCreated$lambda$37 = MergeFragment.onViewCreated$lambda$37(MergeFragment.this, ((Integer) obj).intValue());
                return onViewCreated$lambda$37;
            }
        });
        View findViewById44 = view.findViewById(R.id.tvMergeResultTitle);
        Intrinsics.checkNotNullExpressionValue(findViewById44, "findViewById(...)");
        this.tvMergeResultTitle = (TextView) findViewById44;
        View findViewById45 = view.findViewById(R.id.tvMergeResultFile);
        Intrinsics.checkNotNullExpressionValue(findViewById45, "findViewById(...)");
        this.tvMergeResultFile = (TextView) findViewById45;
        View findViewById46 = view.findViewById(R.id.tvMergeResultPath);
        Intrinsics.checkNotNullExpressionValue(findViewById46, "findViewById(...)");
        this.tvMergeResultPath = (TextView) findViewById46;
        View findViewById47 = view.findViewById(R.id.gridMergeUpload);
        Intrinsics.checkNotNullExpressionValue(findViewById47, "findViewById(...)");
        this.gridMergeUpload = (GridLayout) findViewById47;
        View findViewById48 = view.findViewById(R.id.btnUploadMerge);
        Intrinsics.checkNotNullExpressionValue(findViewById48, "findViewById(...)");
        this.btnUploadMerge = (MaterialButton) findViewById48;
        View findViewById49 = view.findViewById(R.id.btnMergeDone);
        Intrinsics.checkNotNullExpressionValue(findViewById49, "findViewById(...)");
        this.btnMergeDone = (TextView) findViewById49;
        ((TextView) view.findViewById(R.id.btnMergeBack)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.onBack();
            }
        });
        MaterialButton materialButton = this.btnMergeNext;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnMergeNext");
            materialButton = null;
        }
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.loadActivities$default(MergeFragment.this, false, 1, null);
            }
        });
        ((TextView) view.findViewById(R.id.btnPickDate)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.pickDateFilter();
            }
        });
        ((TextView) view.findViewById(R.id.btnClearDate)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$41(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnMergeAllToday)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.selectToday();
            }
        });
        ((TextView) view.findViewById(R.id.btnMergeRange)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.toggleRangeMode();
            }
        });
        ((TextView) view.findViewById(R.id.btnMergeClear)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.clearSelection();
            }
        });
        MaterialButton materialButton2 = this.btnDoMerge;
        if (materialButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnDoMerge");
            materialButton2 = null;
        }
        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.doMerge();
            }
        });
        MaterialButton materialButton3 = this.btnSaveMerge;
        if (materialButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnSaveMerge");
            materialButton3 = null;
        }
        materialButton3.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.saveMerge();
            }
        });
        TextView textView6 = this.btnExportGpx;
        if (textView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnExportGpx");
            textView6 = null;
        }
        textView6.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.exportMerge(false);
            }
        });
        TextView textView7 = this.btnExportFit;
        if (textView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnExportFit");
            textView7 = null;
        }
        textView7.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.exportMerge(true);
            }
        });
        TextView textView8 = this.btnExportSticker;
        if (textView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnExportSticker");
            textView8 = null;
        }
        textView8.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.exportSticker();
            }
        });
        TextView textView9 = this.btnStickerStyle;
        if (textView9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerStyle");
            textView9 = null;
        }
        textView9.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$50(MergeFragment.this, view2);
            }
        });
        TextView textView10 = this.btnSticker3d;
        if (textView10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnSticker3d");
            textView10 = null;
        }
        textView10.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$51(MergeFragment.this, view2);
            }
        });
        TextView textView11 = this.btnStickerColor;
        if (textView11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerColor");
            textView11 = null;
        }
        textView11.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$52(MergeFragment.this, view2);
            }
        });
        TextView textView12 = this.btnStickerTextColor;
        if (textView12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerTextColor");
            textView12 = null;
        }
        textView12.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$53(MergeFragment.this, view2);
            }
        });
        TextView textView13 = this.btnStickerGlow;
        if (textView13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerGlow");
            textView13 = null;
        }
        textView13.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$54(MergeFragment.this, view2);
            }
        });
        TextView textView14 = this.btnSticker3dBand;
        if (textView14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnSticker3dBand");
            textView14 = null;
        }
        textView14.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$55(MergeFragment.this, view2);
            }
        });
        TextView textView15 = this.btnStickerWidth;
        if (textView15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerWidth");
            textView15 = null;
        }
        textView15.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$56(MergeFragment.this, view2);
            }
        });
        TextView textView16 = this.btnStickerTransparent;
        if (textView16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerTransparent");
            textView16 = null;
        }
        textView16.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$57(MergeFragment.this, view2);
            }
        });
        TextView textView17 = this.btnStickerDataLayer;
        if (textView17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerDataLayer");
            textView17 = null;
        }
        textView17.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$58(MergeFragment.this, view2);
            }
        });
        TextView textView18 = this.btnStickerWatermark;
        if (textView18 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerWatermark");
            textView18 = null;
        }
        textView18.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda34
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$59(MergeFragment.this, view2);
            }
        });
        ((TextView) view.findViewById(R.id.btnStickerBadge)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$60(MergeFragment.this, view2);
            }
        });
        TextView textView19 = this.btnStickerTrack;
        if (textView19 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerTrack");
            textView19 = null;
        }
        textView19.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$61(MergeFragment.this, view2);
            }
        });
        TextView textView20 = this.btnStickerBrand;
        if (textView20 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerBrand");
            textView20 = null;
        }
        textView20.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.showBrandDialog();
            }
        });
        kotlinx.coroutines.BuildersKt.launch(LifecycleOwnerKt.getLifecycleScope(this), kotlin.coroutines.EmptyCoroutineContext.INSTANCE, kotlinx.coroutines.CoroutineStart.DEFAULT, new MergeFragment$onViewCreated$51(this, null));
        TextView textView21 = this.btnStickerSummary;
        if (textView21 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerSummary");
            textView21 = null;
        }
        textView21.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.editSummaryStats();
            }
        });
        TextView textView22 = this.btnStickerPos;
        if (textView22 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerPos");
            textView22 = null;
        }
        textView22.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$64(MergeFragment.this, view2);
            }
        });
        TextView textView23 = this.btnStickerItems;
        if (textView23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnStickerItems");
            textView23 = null;
        }
        textView23.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda41
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.pickStickerItems();
            }
        });
        MaterialButton materialButton4 = this.btnUploadMerge;
        if (materialButton4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnUploadMerge");
            materialButton4 = null;
        }
        materialButton4.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.this.uploadMerge();
            }
        });
        TextView textView24 = this.btnMergeDone;
        if (textView24 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnMergeDone");
        } else {
            textView = textView24;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MergeFragment.onViewCreated$lambda$67(MergeFragment.this, view2);
            }
        });
        setupSourceGrid();
        buildCategoryTabs();
        selectTemplate(0);
        showStep(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$11$lambda$10(MergeFragment mergeFragment, View view) {
        if (mergeFragment.pageLoading || !mergeFragment.listHasMore) {
            return;
        }
        mergeFragment.loadActivities(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12(View view) {
        int width = view.getWidth();
        if (width > 0) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = width;
            view.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$14(MergeFragment mergeFragment, View view) {
        int size = StickerCore.StickerTemplates.INSTANCE.getALL().size();
        mergeFragment.selectTemplate(((mergeFragment.templateIdx - 1) + size) % size);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$15(MergeFragment mergeFragment, View view) {
        mergeFragment.selectTemplate((mergeFragment.templateIdx + 1) % StickerCore.StickerTemplates.INSTANCE.getALL().size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$17(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.zoomTrackBy(0.87f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$18(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.zoomTrackBy(1.15f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$19(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.rotateTrackBy(-15.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$20(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.rotateTrackBy(15.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$21(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.tiltTrackBy(-10.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$22(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.tiltTrackBy(10.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$23(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.resetTrackTransform();
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView2.resetTrack3d();
        mergeFragment.toast("已复位");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$24(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.moveTrackBy(0.0f, -10.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$25(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.moveTrackBy(0.0f, 10.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$26(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.moveTrackBy(-10.0f, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$27(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.moveTrackBy(10.0f, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$29(EditText editText, MergeFragment mergeFragment, View view) {
        String obj;
        Editable text = editText.getText();
        String obj2 = (text == null || (obj = text.toString()) == null) ? null : StringsKt.trim((CharSequence) obj).toString();
        if (obj2 == null) {
            obj2 = "";
        }
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        String str = obj2;
        trackPreviewView.setTitleOverride(str.length() != 0 ? str : null);
        mergeFragment.toast(str.length() == 0 ? "已恢复默认标题" : "标题已更新");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onViewCreated$lambda$31(EditText editText, MergeFragment mergeFragment, TextView textView, int i, KeyEvent keyEvent) {
        String obj;
        Editable text = editText.getText();
        String obj2 = (text == null || (obj = text.toString()) == null) ? null : StringsKt.trim((CharSequence) obj).toString();
        if (obj2 == null) {
            obj2 = "";
        }
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        String str = obj2;
        trackPreviewView.setTitleOverride(str.length() != 0 ? str : null);
        mergeFragment.toast(str.length() == 0 ? "已恢复默认标题" : "标题已更新");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$33(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.clearDataOverrides();
        mergeFragment.toast("已清空手输数据");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$applyAspect(MergeFragment mergeFragment, TextView textView, TextView textView2, TextView textView3, String str) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.setAspect(str);
        Intrinsics.checkNotNull(textView);
        onViewCreated$applyAspect$style(mergeFragment, textView, Intrinsics.areEqual(str, "1:1"));
        Intrinsics.checkNotNull(textView2);
        onViewCreated$applyAspect$style(mergeFragment, textView2, Intrinsics.areEqual(str, "3:4"));
        Intrinsics.checkNotNull(textView3);
        onViewCreated$applyAspect$style(mergeFragment, textView3, Intrinsics.areEqual(str, "9:16"));
        mergeFragment.sizeCardForAspect(str);
    }

    private static final void onViewCreated$applyAspect$style(MergeFragment mergeFragment, TextView textView, boolean z) {
        textView.setBackground(mergeFragment.requireContext().getDrawable(z ? R.drawable.merge_chip_white_on : R.drawable.merge_chip_white));
        textView.setTextColor(mergeFragment.requireContext().getColor(z ? R.color.primary : R.color.text_primary));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$37(MergeFragment mergeFragment, int i) {
        int size = StickerCore.StickerTemplates.INSTANCE.getALL().size();
        mergeFragment.selectTemplate((((mergeFragment.templateIdx + i) % size) + size) % size);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$41(MergeFragment mergeFragment, View view) {
        mergeFragment.fromDate = null;
        mergeFragment.toDate = null;
        mergeFragment.pageSkip = 0;
        mergeFragment.listHasMore = false;
        mergeFragment.refreshDateFilterViews();
        loadActivities$default(mergeFragment, false, 1, null);
        mergeFragment.toast("已恢复显示最近记录");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$50(MergeFragment mergeFragment, View view) {
        HorizontalScrollView horizontalScrollView = mergeFragment.bgPickerRow;
        HorizontalScrollView horizontalScrollView2 = null;
        if (horizontalScrollView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bgPickerRow");
            horizontalScrollView = null;
        }
        boolean z = horizontalScrollView.getVisibility() == 0;
        HorizontalScrollView horizontalScrollView3 = mergeFragment.bgPickerRow;
        if (horizontalScrollView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bgPickerRow");
        } else {
            horizontalScrollView2 = horizontalScrollView3;
        }
        horizontalScrollView2.setVisibility(z ? 8 : 0);
        if (z) {
            return;
        }
        mergeFragment.buildBgChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onViewCreated$lambda$51(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        StickerCore.StickerTrack trackType = trackPreviewView.getTrackType();
        java.util.List<StickerCore.StickerTrack> entries = StickerCore.StickerTrack.getEntries();
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView2.setTrackType((StickerCore.StickerTrack) entries.get((entries.indexOf(trackType) + 1) % entries.size()));
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onViewCreated$lambda$52(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        StickerCore.StickerLayout layoutType = trackPreviewView.getLayoutType();
        java.util.List<StickerCore.StickerLayout> entries = StickerCore.StickerLayout.getEntries();
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView2.setLayoutType((StickerCore.StickerLayout) entries.get((entries.indexOf(layoutType) + 1) % entries.size()));
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onViewCreated$lambda$53(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        StickerCore.StickerText textType = trackPreviewView.getTextType();
        java.util.List<StickerCore.StickerText> entries = StickerCore.StickerText.getEntries();
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView2.setTextType((StickerCore.StickerText) entries.get((entries.indexOf(textType) + 1) % entries.size()));
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$54(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        if (trackPreviewView.getTrack3d()) {
            TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
            if (trackPreviewView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView2 = trackPreviewView3;
            }
            trackPreviewView2.getGlowOn();
        } else {
            TrackPreviewView trackPreviewView4 = mergeFragment.previewTrack;
            if (trackPreviewView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView4 = null;
            }
            TrackPreviewView trackPreviewView5 = mergeFragment.previewTrack;
            if (trackPreviewView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView2 = trackPreviewView5;
            }
            trackPreviewView4.setGlowOn(!trackPreviewView2.getGlowOn());
        }
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$55(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView.setShow3dBand(!trackPreviewView2.getShow3dBand());
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$56(MergeFragment mergeFragment, View view) {
        int trackWidth;
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView3 = null;
        }
        if (trackPreviewView3.getTrackWidth() >= 6) {
            trackWidth = 1;
        } else {
            TrackPreviewView trackPreviewView4 = mergeFragment.previewTrack;
            if (trackPreviewView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView2 = trackPreviewView4;
            }
            trackWidth = trackPreviewView2.getTrackWidth() + 1;
        }
        trackPreviewView.setTrackWidth(trackWidth);
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$57(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView.setTransparentBg(!trackPreviewView2.getTransparentBg());
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$58(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView.setDataLayerOn(!trackPreviewView2.getDataLayerOn());
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$59(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView.setWatermarkOn(!trackPreviewView2.getWatermarkOn());
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$60(MergeFragment mergeFragment, View view) {
        mergeFragment.badgeOn = !mergeFragment.badgeOn;
        mergeFragment.updateBadgeVisibility();
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$61(MergeFragment mergeFragment, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        if (!trackPreviewView.getTrackOn()) {
            TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
            if (trackPreviewView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView3 = null;
            }
            trackPreviewView3.setTrackOn(true);
            TrackPreviewView trackPreviewView4 = mergeFragment.previewTrack;
            if (trackPreviewView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView2 = trackPreviewView4;
            }
            trackPreviewView2.setTrack3dMode(false);
        } else {
            TrackPreviewView trackPreviewView5 = mergeFragment.previewTrack;
            if (trackPreviewView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView2 = trackPreviewView5;
            }
            trackPreviewView2.setTrackOn(false);
        }
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$64(MergeFragment mergeFragment, View view) {
        mergeFragment.stickerPos = (mergeFragment.stickerPos + 1) % TrackPreviewView.INSTANCE.getPosNames().size();
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.setPosMode(mergeFragment.stickerPos);
        TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView2.applyPosMode();
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$67(MergeFragment mergeFragment, View view) {
        FragmentActivity activity = mergeFragment.getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null) {
            mainActivity.closeMerge();
        }
    }

    private final void sizeCardForAspect(String a) {
        View findViewById;
        View view = getView();
        if (view == null || (findViewById = view.findViewById(R.id.previewCardWrap)) == null) {
            return;
        }
        sizeCardForAspect$trySize(findViewById, a, this, 0);
    }

    private static final void sizeCardForAspect$trySize(final View view, final String str, final MergeFragment mergeFragment, final int i) {
        view.post(new Runnable() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                MergeFragment.sizeCardForAspect$trySize$lambda$72(view, i, str, mergeFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sizeCardForAspect$trySize$lambda$72(final View view, final int i, final String str, final MergeFragment mergeFragment) {
        float f;
        TrackPreviewView trackPreviewView;
        int width = view.getWidth();
        ViewParent parent = view.getParent();
        int i2 = 0;
        Object obj = null;
        for (int i3 = 0; i3 < 4; i3++) {
            if (parent instanceof ScrollView) {
                obj = parent;
            }
            parent = parent != null ? parent.getParent() : null;
        }
        View view2 = (View) obj;
        if (view2 != null) {
            Integer valueOf = Integer.valueOf(view2.getHeight());
            Integer num = valueOf.intValue() > 0 ? valueOf : null;
            if (num != null) {
                i2 = num.intValue();
            }
        }
        if ((width <= 0 || i2 <= 0) && i < 12) {
            view.postDelayed(new Runnable() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    MergeFragment.sizeCardForAspect$trySize$lambda$72$lambda$70(i, view, str, mergeFragment);
                }
            }, 60L);
            return;
        }
        if (Intrinsics.areEqual(str, "3:4")) {
            f = 1.3333334f;
        } else {
            f = Intrinsics.areEqual(str, "9:16") ? 1.7777778f : 1.0f;
        }
        int i4 = (int) (width * f);
        if (i2 <= 0 || i4 <= i2) {
            i2 = i4;
        } else {
            width = (int) (i2 / f);
        }
        if (width <= 0 || i2 <= 0) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = width;
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
        View view3 = mergeFragment.getView();
        if (view3 == null || (trackPreviewView = (TrackPreviewView) view3.findViewById(R.id.previewTrack)) == null) {
            return;
        }
        trackPreviewView.postDelayed(new Runnable() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                MergeFragment.sizeCardForAspect$trySize$lambda$72$lambda$71(MergeFragment.this);
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sizeCardForAspect$trySize$lambda$72$lambda$70(int i, View view, String str, MergeFragment mergeFragment) {
        sizeCardForAspect$trySize(view, str, mergeFragment, i + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sizeCardForAspect$trySize$lambda$72$lambda$71(MergeFragment mergeFragment) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        if (trackPreviewView.webReadyPublic()) {
            TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
            if (trackPreviewView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView2 = trackPreviewView3;
            }
            trackPreviewView2.refreshWebRenderPublic();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showStep(int step) {
        String str;
        if (getView() == null) {
            return;
        }
        View view = this.stepSource;
        TextView textView = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stepSource");
            view = null;
        }
        view.setVisibility(step == 1 ? 0 : 8);
        View view2 = this.stepSelect;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stepSelect");
            view2 = null;
        }
        view2.setVisibility(step == 2 ? 0 : 8);
        View view3 = this.stepPreview;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stepPreview");
            view3 = null;
        }
        view3.setVisibility(step == 3 ? 0 : 8);
        View view4 = this.stepResult;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stepResult");
            view4 = null;
        }
        view4.setVisibility(step != 4 ? 8 : 0);
        if (step == 3) {
            TrackPreviewView trackPreviewView = this.previewTrack;
            if (trackPreviewView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView = null;
            }
            sizeCardForAspect(trackPreviewView.getAspect());
        }
        TextView textView2 = this.mergeTitle;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mergeTitle");
            textView2 = null;
        }
        if (step == 1) {
            str = "轨迹合并";
        } else if (step == 2) {
            str = "选择记录";
        } else if (step == 3) {
            str = "合并预览";
        } else {
            str = "合并完成";
        }
        textView2.setText(str);
        TextView textView3 = this.mergeStepHint;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mergeStepHint");
        } else {
            textView = textView3;
        }
        textView.setText(step + "/4");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onBack() {
        View view = this.stepResult;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stepResult");
            view = null;
        }
        if (view.getVisibility() == 0) {
            showStep(3);
            return;
        }
        View view2 = this.stepPreview;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stepPreview");
            view2 = null;
        }
        if (view2.getVisibility() == 0) {
            showStep(2);
            return;
        }
        View view3 = this.stepSelect;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stepSelect");
            view3 = null;
        }
        if (view3.getVisibility() == 0) {
            showStep(1);
            refreshSourceSelection();
            return;
        }
        FragmentActivity activity = getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null) {
            mainActivity.closeMerge();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int color(int id) {
        return requireContext().getColor(id);
    }

    private final void setupSourceGrid() {
        GridLayout gridLayout = this.gridMergeSource;
        Object obj = null;
        GridLayout gridLayout2 = null;
        if (gridLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gridMergeSource");
            gridLayout = null;
        }
        gridLayout.removeAllViews();
        Set set = CollectionsKt.toSet(DataSource.Companion.sourcePlatforms());
        java.util.List<DataSource> entries = DataSource.getEntries();
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : entries) {
            if (set.contains((DataSource) obj2)) {
                arrayList.add(obj2);
            }
        }
        ArrayList<DataSource> arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            TextView textView = new TextView(requireContext());
            textView.setText("暂无可用来源平台");
            textView.setTextSize(13.0f);
            textView.setTextColor(color(R.color.text_secondary));
            GridLayout gridLayout3 = this.gridMergeSource;
            if (gridLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gridMergeSource");
            } else {
                gridLayout2 = gridLayout3;
            }
            GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
            layoutParams.columnSpec = GridLayout.spec(0, 4);
            Unit unit = Unit.INSTANCE;
            gridLayout2.addView(textView, layoutParams);
            return;
        }
        for (final DataSource dataSource : arrayList2) {
            PrefsManager prefsManager = this.prefs;
            if (prefsManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefs");
                prefsManager = null;
            }
            boolean isLoggedIn = prefsManager.isLoggedIn(dataSource);
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            PlatformButton platformButton = new PlatformButton(requireContext, null, 2, null);
            platformButton.setTag(dataSource.getShortName());
            platformButton.bind(platformColor(dataSource.getShortName()));
            String displayName = dataSource.getDisplayName();
            if (!isLoggedIn) {
                displayName = displayName + "\n未登录";
            }
            platformButton.setButtonText(displayName);
            GridLayout.LayoutParams layoutParams2 = new GridLayout.LayoutParams();
            layoutParams2.width = 0;
            layoutParams2.height = (int) (50 * getDp());
            layoutParams2.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1.0f);
            float f = 2;
            layoutParams2.setMargins((int) (getDp() * f), (int) (getDp() * f), (int) (getDp() * f), (int) (f * getDp()));
            platformButton.setLayoutParams(layoutParams2);
            platformButton.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda64
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MergeFragment.setupSourceGrid$lambda$78$lambda$77(MergeFragment.this, dataSource, view);
                }
            });
            if (!isLoggedIn) {
                platformButton.setPlatformState(false, false);
            }
            GridLayout gridLayout4 = this.gridMergeSource;
            if (gridLayout4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gridMergeSource");
                gridLayout4 = null;
            }
            gridLayout4.addView(platformButton);
        }
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        PlatformButton platformButton2 = new PlatformButton(requireContext2, null, 2, null);
        platformButton2.setTag("local");
        platformButton2.bind(color(R.color.primary));
        platformButton2.setButtonText("📁 本地文件");
        GridLayout.LayoutParams layoutParams3 = new GridLayout.LayoutParams();
        layoutParams3.width = 0;
        layoutParams3.height = (int) (44 * getDp());
        layoutParams3.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1.0f);
        float f2 = 2;
        layoutParams3.setMargins((int) (getDp() * f2), (int) (getDp() * f2), (int) (getDp() * f2), (int) (f2 * getDp()));
        platformButton2.setLayoutParams(layoutParams3);
        platformButton2.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda65
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MergeFragment.this.showLocalSourceChoices();
            }
        });
        GridLayout gridLayout5 = this.gridMergeSource;
        if (gridLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gridMergeSource");
            gridLayout5 = null;
        }
        gridLayout5.addView(platformButton2);
        Iterator it = arrayList2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            DataSource dataSource2 = (DataSource) next;
            PrefsManager prefsManager2 = this.prefs;
            if (prefsManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefs");
                prefsManager2 = null;
            }
            if (prefsManager2.isLoggedIn(dataSource2)) {
                obj = next;
                break;
            }
        }
        this.source = (DataSource) obj;
        this.localMode = false;
        refreshSourceSelection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupSourceGrid$lambda$78$lambda$77(MergeFragment mergeFragment, DataSource dataSource, View view) {
        PrefsManager prefsManager = mergeFragment.prefs;
        if (prefsManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            prefsManager = null;
        }
        if (!prefsManager.isLoggedIn(dataSource)) {
            mergeFragment.toast("请先到登录页登录 " + dataSource.getDisplayName() + "，登录后即可作为合并/贴纸数据源");
        } else {
            mergeFragment.source = dataSource;
            mergeFragment.localMode = false;
            mergeFragment.refreshSourceSelection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLocalSourceChoices() {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        float f = 18;
        linearLayout.setPadding((int) (getDp() * f), (int) (8 * getDp()), (int) (f * getDp()), (int) (2 * getDp()));
        AlertDialog create = new AlertDialog.Builder(requireContext()).setTitle("📁 本地文件数据源\n（FIT/GPX · 单选=贴纸 多选=合并）").setView(linearLayout).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create();
        showLocalSourceChoices$addBtn(this, linearLayout, create, "📁 从已下载目录选择", new Function0() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda68
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit showLocalSourceChoices$lambda$87;
                showLocalSourceChoices$lambda$87 = MergeFragment.showLocalSourceChoices$lambda$87(MergeFragment.this);
                return showLocalSourceChoices$lambda$87;
            }
        });
        showLocalSourceChoices$addBtn(this, linearLayout, create, "🗂 浏览手机文件", new Function0() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda69
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit showLocalSourceChoices$lambda$88;
                showLocalSourceChoices$lambda$88 = MergeFragment.showLocalSourceChoices$lambda$88(MergeFragment.this);
                return showLocalSourceChoices$lambda$88;
            }
        });
        create.show();
    }

    private static final void showLocalSourceChoices$addBtn(MergeFragment mergeFragment, LinearLayout linearLayout, final AlertDialog alertDialog, String str, final Function0<Unit> function0) {
        MaterialButton materialButton = new MaterialButton(mergeFragment.requireContext());
        materialButton.setText(str);
        materialButton.setAllCaps(false);
        materialButton.setCornerRadius((int) (12 * mergeFragment.getDp()));
        materialButton.setInsetTop(0);
        materialButton.setInsetBottom(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) (52 * mergeFragment.getDp()));
        layoutParams.topMargin = (int) (8 * mergeFragment.getDp());
        materialButton.setLayoutParams(layoutParams);
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda76
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MergeFragment.showLocalSourceChoices$addBtn$lambda$86(alertDialog, function0, view);
            }
        });
        linearLayout.addView(materialButton);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLocalSourceChoices$addBtn$lambda$86(AlertDialog alertDialog, Function0 function0, View view) {
        alertDialog.dismiss();
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showLocalSourceChoices$lambda$87(MergeFragment mergeFragment) {
        mergeFragment.showDownloadedFilesDialog();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showLocalSourceChoices$lambda$88(MergeFragment mergeFragment) {
        mergeFragment.launchFilePicker();
        return Unit.INSTANCE;
    }

    private final void showDownloadedFilesDialog() {
        File[] listFiles = MainActivity.Companion.getSAVE_DIR().listFiles();
        if (listFiles == null) {
            listFiles = new File[0];
        }
        ArrayList arrayList = new ArrayList();
        for (File file : listFiles) {
            if (file.isFile()) {
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (!StringsKt.endsWith(name, ".fit", true)) {
                    String name2 = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    if (!StringsKt.endsWith(name2, ".gpx", true)) {
                    }
                }
                arrayList.add(file);
            }
        }
        final List sortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.jichi.ob.ui.MergeFragment$showDownloadedFilesDialog$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Long.valueOf(((File) t2).lastModified()), Long.valueOf(((File) t).lastModified()));
            }
        });
        if (sortedWith.isEmpty()) {
            toast("已下载目录没有 FIT/GPX 文件（可先去同步页下载，或用浏览手机文件选择）");
            return;
        }
        List list = sortedWith;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((File) it.next()).getName());
        }
        String[] strArr = (String[]) arrayList2.toArray(new String[0]);
        final boolean[] zArr = new boolean[sortedWith.size()];
        new AlertDialog.Builder(requireContext()).setTitle("已下载目录（" + sortedWith.size() + " 个 FIT/GPX，单选=贴纸 多选=合并）").setMultiChoiceItems(strArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda70
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
                MergeFragment.showDownloadedFilesDialog$lambda$92(zArr, dialogInterface, i, z);
            }
        }).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda71
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MergeFragment.showDownloadedFilesDialog$lambda$97(sortedWith, this, zArr, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDownloadedFilesDialog$lambda$92(boolean[] zArr, DialogInterface dialogInterface, int i, boolean z) {
        zArr[i] = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDownloadedFilesDialog$lambda$97(List list, MergeFragment mergeFragment, boolean[] zArr, DialogInterface dialogInterface, int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            if (zArr[i2]) {
                arrayList.add(obj);
            }
            i2 = i3;
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            mergeFragment.toast("未选择文件");
            return;
        }
        ArrayList<File> arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
        for (File file : arrayList3) {
            byte[] bytes;
            try {
                bytes = FilesKt.readBytes(file);
            } catch (Throwable th) {
                bytes = null;
            }
            arrayList4.add(bytes);
        }
        ArrayList arrayList5 = arrayList4;
        ArrayList arrayList6 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            arrayList6.add(((File) it.next()).getName());
        }
        mergeFragment.processLocalFiles(arrayList6, arrayList5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void photoPicker$lambda$98(MergeFragment mergeFragment, Uri uri) {
        if (uri == null) {
            return;
        }
        kotlinx.coroutines.BuildersKt.launch(LifecycleOwnerKt.getLifecycleScope(mergeFragment), kotlin.coroutines.EmptyCoroutineContext.INSTANCE, kotlinx.coroutines.CoroutineStart.DEFAULT, new MergeFragment$photoPicker$1$1(mergeFragment, uri, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pickStickerPhoto() {
        try {
            this.photoPicker.launch("image/*");
        } catch (Exception e) {
            toast("无法打开相册：" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logoPicker$lambda$99(MergeFragment mergeFragment, Uri uri) {
        if (uri == null) {
            return;
        }
        kotlinx.coroutines.BuildersKt.launch(LifecycleOwnerKt.getLifecycleScope(mergeFragment), kotlin.coroutines.EmptyCoroutineContext.INSTANCE, kotlinx.coroutines.CoroutineStart.DEFAULT, new MergeFragment$logoPicker$1$1(mergeFragment, uri, null));
    }

    private final void pickStickerLogo() {
        try {
            this.logoPicker.launch("image/*");
        } catch (Exception e) {
            toast("无法打开相册：" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showBrandDialog() {
        TrackPreviewView trackPreviewView = this.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        new AlertDialog.Builder(requireContext()).setTitle("角标样式").setSingleChoiceItems(new String[]{"鸡翅幸哲迈进OB（文字标）", "自定义透明Logo（选图）"}, trackPreviewView.getBrandIdx() == TrackPreviewView.BRAND_CUSTOM ? 1 : 0, new DialogInterface.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda54
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MergeFragment.showBrandDialog$lambda$101(MergeFragment.this, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showBrandDialog$lambda$101(MergeFragment mergeFragment, DialogInterface dialogInterface, int i) {
        TrackPreviewView trackPreviewView = null;
        if (i == 0) {
            TrackPreviewView trackPreviewView2 = mergeFragment.previewTrack;
            if (trackPreviewView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView2 = null;
            }
            trackPreviewView2.setBrandIdx(0);
            TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
            if (trackPreviewView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView3 = null;
            }
            trackPreviewView3.setBadgeUrl(null);
            try {
                new File(mergeFragment.requireContext().getFilesDir(), "custom_badge.png").delete();
            } catch (Throwable th) {
                // best effort only
            }
        } else {
            TrackPreviewView trackPreviewView4 = mergeFragment.previewTrack;
            if (trackPreviewView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView = trackPreviewView4;
            }
            trackPreviewView.setBrandIdx(TrackPreviewView.BRAND_CUSTOM);
            mergeFragment.pickStickerLogo();
        }
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void filePicker$lambda$102(MergeFragment mergeFragment, List list) {
        if (list.isEmpty()) {
            return;
        }
        kotlinx.coroutines.BuildersKt.launch(LifecycleOwnerKt.getLifecycleScope(mergeFragment), kotlin.coroutines.EmptyCoroutineContext.INSTANCE, kotlinx.coroutines.CoroutineStart.DEFAULT, new MergeFragment$filePicker$1$1(list, mergeFragment, new ArrayList(), new ArrayList(), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String queryDisplayName(Uri uri) {
        try {
            Cursor query = requireContext().getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (query != null) {
                Cursor cursor = query;
                try {
                    Cursor cursor2 = cursor;
                    String string = cursor2.moveToFirst() ? cursor2.getString(0) : null;
                    CloseableKt.closeFinally(cursor, null);
                    return string;
                } finally {
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private final void launchFilePicker() {
        try {
            this.filePicker.launch(new String[]{"*/*"});
        } catch (Exception e) {
            toast("无法打开文件选择器：" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processLocalFiles(List<String> names, List<byte[]> bytesList) {
        if (names.isEmpty()) {
            toast("未选择文件");
            return;
        }
        TextView textView = this.tvMergeHint;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            textView = null;
        }
        textView.setText("正在解析 " + names.size() + " 个本地文件...");
        MaterialButton materialButton = this.btnSaveMerge;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnSaveMerge");
            materialButton = null;
        }
        materialButton.setEnabled(false);
        kotlinx.coroutines.BuildersKt.launch(LifecycleOwnerKt.getLifecycleScope(this), kotlin.coroutines.EmptyCoroutineContext.INSTANCE, kotlinx.coroutines.CoroutineStart.DEFAULT, new MergeFragment$processLocalFiles$1(names, bytesList, this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MergeFragment.kt */
        static final /* data */ class ParseResult {
        private final int ascentM;
        private final int descentM;
        private final List<GpxToFitConverter.TrackPoint> points;
        // v9.6.9: 每段 session / file_id 原值（计时、卡路里、厂商/产品/序列号），随段传给合并。
        private final long timerSec;
        private final int totalCalories;
        private final int manufacturer;
        private final int product;
        private final long serialNumber;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ParseResult copy$default(ParseResult parseResult, List list, int i, int i2, long j, int i3, int i4, int i5, long j2, int i6, Object obj) {
            if ((i6 & 1) != 0) {
                list = parseResult.points;
            }
            if ((i6 & 2) != 0) {
                i = parseResult.ascentM;
            }
            if ((i6 & 4) != 0) {
                i2 = parseResult.descentM;
            }
            if ((i6 & 8) != 0) {
                j = parseResult.timerSec;
            }
            if ((i6 & 16) != 0) {
                i3 = parseResult.totalCalories;
            }
            if ((i6 & 32) != 0) {
                i4 = parseResult.manufacturer;
            }
            if ((i6 & 64) != 0) {
                i5 = parseResult.product;
            }
            if ((i6 & 128) != 0) {
                j2 = parseResult.serialNumber;
            }
            return parseResult.copy(list, i, i2, j, i3, i4, i5, j2);
        }

        public final List<GpxToFitConverter.TrackPoint> component1() {
            return this.points;
        }

        /* renamed from: component2, reason: from getter */
        public final int getAscentM() {
            return this.ascentM;
        }

        /* renamed from: component3, reason: from getter */
        public final int getDescentM() {
            return this.descentM;
        }

        /* renamed from: component4, reason: from getter */
        public final long getTimerSec() {
            return this.timerSec;
        }

        /* renamed from: component5, reason: from getter */
        public final int getTotalCalories() {
            return this.totalCalories;
        }

        /* renamed from: component6, reason: from getter */
        public final int getManufacturer() {
            return this.manufacturer;
        }

        /* renamed from: component7, reason: from getter */
        public final int getProduct() {
            return this.product;
        }

        /* renamed from: component8, reason: from getter */
        public final long getSerialNumber() {
            return this.serialNumber;
        }

        public final ParseResult copy(List<GpxToFitConverter.TrackPoint> points, int ascentM, int descentM, long timerSec, int totalCalories, int manufacturer, int product, long serialNumber) {
            Intrinsics.checkNotNullParameter(points, "points");
            return new ParseResult(points, ascentM, descentM, timerSec, totalCalories, manufacturer, product, serialNumber);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ParseResult)) {
                return false;
            }
            ParseResult parseResult = (ParseResult) other;
            return Intrinsics.areEqual(this.points, parseResult.points) && this.ascentM == parseResult.ascentM && this.descentM == parseResult.descentM && this.timerSec == parseResult.timerSec && this.totalCalories == parseResult.totalCalories && this.manufacturer == parseResult.manufacturer && this.product == parseResult.product && this.serialNumber == parseResult.serialNumber;
        }

        public int hashCode() {
            return (((((((((((((this.points.hashCode() * 31) + Integer.hashCode(this.ascentM)) * 31) + Integer.hashCode(this.descentM)) * 31) + Long.hashCode(this.timerSec)) * 31) + Integer.hashCode(this.totalCalories)) * 31) + Integer.hashCode(this.manufacturer)) * 31) + Integer.hashCode(this.product)) * 31) + Long.hashCode(this.serialNumber);
        }

        public String toString() {
            return "ParseResult(points=" + this.points + ", ascentM=" + this.ascentM + ", descentM=" + this.descentM + ", timerSec=" + this.timerSec + ", totalCalories=" + this.totalCalories + ", manufacturer=" + this.manufacturer + ", product=" + this.product + ", serialNumber=" + this.serialNumber + ")";
        }

        public ParseResult(List<GpxToFitConverter.TrackPoint> points, int i, int i2, long j, int i3, int i4, int i5, long j2) {
            Intrinsics.checkNotNullParameter(points, "points");
            this.points = points;
            this.ascentM = i;
            this.descentM = i2;
            this.timerSec = j;
            this.totalCalories = i3;
            this.manufacturer = i4;
            this.product = i5;
            this.serialNumber = j2;
        }

        public /* synthetic */ ParseResult(List list, int i, int i2, long j, int i3, int i4, int i5, long j2, int i6, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i6 & 2) != 0 ? 0 : i, (i6 & 4) != 0 ? 0 : i2, (i6 & 8) != 0 ? 0L : j, (i6 & 16) != 0 ? 0 : i3, (i6 & 32) != 0 ? 255 : i4, (i6 & 64) != 0 ? 1 : i5, (i6 & 128) != 0 ? 0L : j2);
        }

        public final int getAscentM() {
            return this.ascentM;
        }

        public final int getDescentM() {
            return this.descentM;
        }

        public final List<GpxToFitConverter.TrackPoint> getPoints() {
            return this.points;
        }

        public final long getTimerSec() {
            return this.timerSec;
        }

        public final int getTotalCalories() {
            return this.totalCalories;
        }

        public final int getManufacturer() {
            return this.manufacturer;
        }

        public final int getProduct() {
            return this.product;
        }

        public final long getSerialNumber() {
            return this.serialNumber;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ParseResult parseBytes(byte[] bytes) {
        try {
            if (GpxToFitConverter.INSTANCE.isFit(bytes)) {
                if (bytes.length >= 12) {
                    long j = (bytes[4] & 255) | ((bytes[5] & 255) << 8) | ((bytes[6] & 255) << 16) | ((255 & bytes[7]) << 24);
                    int coerceAtLeast = RangesKt.coerceAtLeast(bytes.length - 16, 0);
                    if (j > coerceAtLeast) {
                        this.lastErr = "FIT 文件不完整（头部声明 " + j + " 字节，实际只有 " + coerceAtLeast + " 字节）——下载中断或文件损坏，请重新下载";
                        return null;
                    }
                }
                FitParser.FitResult parse = FitParser.INSTANCE.parse(bytes);
                if (parse == null) {
                    this.lastErr = "FIT 文件无法解析（" + bytes.length + " 字节，可能不是标准 FIT）";
                    return null;
                }
                if (!parse.getPoints().isEmpty()) {
                    return new ParseResult(parse.getPoints(), parse.getAscentM(), parse.getDescentM(), parse.getTimerSec(), parse.getTotalCalories(), parse.getManufacturer(), parse.getProduct(), parse.getSerialNumber());
                }
                this.lastErr = "FIT 无有效轨迹点（" + bytes.length + " 字节）";
                return null;
            }
            List<GpxToFitConverter.TrackPoint> parseGpxBytes = GpxToFitConverter.INSTANCE.parseGpxBytes(bytes);
            if (parseGpxBytes.isEmpty()) {
                this.lastErr = "GPX 无有效轨迹点（" + bytes.length + " 字节）";
                return null;
            }
            return new ParseResult(parseGpxBytes, 0, 0, 0L, 0, 255, 1, 0L);
        } catch (Exception e) {
            this.lastErr = "解析异常：" + e.getMessage();
            return null;
        }
    }

    private final void refreshSourceSelection() {
        GridLayout gridLayout = this.gridMergeSource;
        if (gridLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gridMergeSource");
            gridLayout = null;
        }
        int childCount = gridLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            GridLayout gridLayout2 = this.gridMergeSource;
            if (gridLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gridMergeSource");
                gridLayout2 = null;
            }
            View childAt = gridLayout2.getChildAt(i);
            PlatformButton platformButton = childAt instanceof PlatformButton ? (PlatformButton) childAt : null;
            if (platformButton != null) {
                Object tag = platformButton.getTag();
                String str = tag instanceof String ? (String) tag : null;
                if (str != null) {
                    DataSource fromShortName = DataSource.Companion.fromShortName(str);
                    if (fromShortName != null) {
                        PrefsManager prefsManager = this.prefs;
                        if (prefsManager == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("prefs");
                            prefsManager = null;
                        }
                        if (!prefsManager.isLoggedIn(fromShortName)) {
                            platformButton.setPlatformState(false, false);
                        }
                    }
                    if (Intrinsics.areEqual(str, "local")) {
                        platformButton.setPlatformState(this.localMode, true);
                    } else {
                        DataSource dataSource = this.source;
                        platformButton.setPlatformState(Intrinsics.areEqual(str, dataSource != null ? dataSource.getShortName() : null) && !this.localMode, true);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
    
        if (r2.equals("gcn") == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x010c, code lost:
    
        return color(com.jichi.ob.R.color.garmin_blue);
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r2.equals("cscn") == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0103, code lost:
    
        if (r2.equals("gm") == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0113, code lost:
    
        if (r2.equals("cs") == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x011c, code lost:
    
        return color(com.jichi.ob.R.color.coros_red);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int platformColor(java.lang.String r2) {
        // 方法体按 9.6.8 原版恢复（smali 核对）。
        // 旧反编译结果里 "cs" / "cscn" / "gm" / "gcn" 四个 case 是空的——那是反编译器
        // 丢了共享返回块：smali 里 "cs" 与 "cscn" 都走 coros_red，"gm" 与 "gcn" 都走
        // garmin_blue；其余分支与旧反编译一致；未知 tag 返回主色。
        // 另：旧反编译的 switch 末尾缺 return（空 case 直接 break 出 switch 后无返回，
        // 原样照搬编不过），此处用字符串 switch + default 返回主色，等价于原版的兜底分支。
        String tag = r2;
        switch (tag) {
            case "bb":
                return color(R.color.blackbird_green);
            case "br":
                return color(R.color.bryton_red);
            case "cd":
                return color(R.color.codoon_green);
            case "cs":
            case "cscn":
                return color(R.color.coros_red);
            case "gt":
                return color(R.color.giant_blue);
            case "kp":
                return color(R.color.keep_yellow);
            case "kt":
                return color(R.color.komoot_red);
            case "mg":
                return color(R.color.magene_blue);
            case "gm":
            case "gcn":
                return color(R.color.garmin_blue);
            case "mw":
                return color(R.color.mywhoosh_orange);
            case "ob":
                return color(R.color.outbase_orange);
            case "su":
                return color(R.color.suunto_blue);
            case "wo":
                return color(R.color.wahoo_red);
            case "xz":
                return color(R.color.xingzhe_blue);
            case "zf":
                return color(R.color.zwift_purple);
            case "zp":
                return color(R.color.zepp_blue);
            case "icu":
                return color(R.color.intervals_icu_orange);
            case "igp":
                return color(R.color.igp_green);
            default:
                return color(R.color.primary);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void loadActivities$default(MergeFragment mergeFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        mergeFragment.loadActivities(z);
    }

    private final void loadActivities(boolean append) {
        DataSource dataSource = this.source;
        if (dataSource == null) {
            toast("请先选择来源平台");
            return;
        }
        if (this.pageLoading) {
            return;
        }
        this.pageLoading = true;
        if (!append) {
            MaterialButton materialButton = this.btnMergeNext;
            if (materialButton == null) {
                Intrinsics.throwUninitializedPropertyAccessException("btnMergeNext");
                materialButton = null;
            }
            materialButton.setEnabled(false);
            MaterialButton materialButton2 = this.btnMergeNext;
            if (materialButton2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("btnMergeNext");
                materialButton2 = null;
            }
            materialButton2.setText("加载中...");
        }
        TextView textView = this.tvMergeHint;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            textView = null;
        }
        textView.setText(append ? "正在加载更早记录..." : "正在获取 " + dataSource.getDisplayName() + " 活动列表...");
        View view = getView();
        TextView textView2 = view != null ? (TextView) view.findViewById(R.id.btnLoadMore) : null;
        if (textView2 != null) {
            textView2.setEnabled(false);
        }
        kotlinx.coroutines.BuildersKt.launch(LifecycleOwnerKt.getLifecycleScope(this), kotlin.coroutines.EmptyCoroutineContext.INSTANCE, kotlinx.coroutines.CoroutineStart.DEFAULT, new MergeFragment$loadActivities$1(this, textView2, dataSource, append, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pickDateFilter() {
        Calendar calendar = Calendar.getInstance();
        new DatePickerDialog(requireContext(), new DatePickerDialog.OnDateSetListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda67
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                MergeFragment.pickDateFilter$lambda$106(MergeFragment.this, datePicker, i, i2, i3);
            }
        }, calendar.get(1), calendar.get(2), calendar.get(5)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pickDateFilter$lambda$106(final MergeFragment mergeFragment, DatePicker datePicker, int i, int i2, int i3) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        final String format = String.format(Locale.US, "%04d-%02d-%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i2 + 1), Integer.valueOf(i3)}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        new DatePickerDialog(mergeFragment.requireContext(), new DatePickerDialog.OnDateSetListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda51
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker2, int i4, int i5, int i6) {
                MergeFragment.pickDateFilter$lambda$106$lambda$105(format, mergeFragment, datePicker2, i4, i5, i6);
            }
        }, i, i2, i3).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pickDateFilter$lambda$106$lambda$105(String str, MergeFragment mergeFragment, DatePicker datePicker, int i, int i2, int i3) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.US, "%04d-%02d-%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i2 + 1), Integer.valueOf(i3)}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        if (format.compareTo(str) < 0) {
            mergeFragment.toast("结束日期不能早于开始日期");
            return;
        }
        mergeFragment.fromDate = str;
        mergeFragment.toDate = format;
        mergeFragment.pageSkip = 0;
        mergeFragment.listHasMore = false;
        mergeFragment.refreshDateFilterViews();
        loadActivities$default(mergeFragment, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshDateFilterViews() {
        View view = getView();
        TextView textView = view != null ? (TextView) view.findViewById(R.id.btnPickDate) : null;
        View view2 = getView();
        TextView textView2 = view2 != null ? (TextView) view2.findViewById(R.id.btnClearDate) : null;
        String str = this.fromDate;
        if (str == null) {
            if (textView != null) {
                textView.setText("📅 日期范围");
            }
            if (textView2 != null) {
                textView2.setText("最近记录");
            }
            if (textView2 != null) {
                textView2.setTextColor(color(R.color.text_secondary));
                return;
            }
            return;
        }
        if (textView != null) {
            Intrinsics.checkNotNull(str);
            String substring = str.substring(5);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            String str2 = this.toDate;
            Intrinsics.checkNotNull(str2);
            String substring2 = str2.substring(5);
            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
            textView.setText("📅 " + substring + " ~ " + substring2);
        }
        if (textView2 != null) {
            textView2.setText("✕ 清除");
        }
        if (textView2 != null) {
            textView2.setTextColor(color(R.color.primary));
        }
    }

    private final String dayOf(ActivityRecord rec) {
        return StringsKt.take(rec.getStartTime(), 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyDateFilter() {
        ArrayList arrayList;
        String str;
        if (this.source == null) {
            return;
        }
        List<ActivityRecord> list = this.allRecords;
        if (this.fromDate == null) {
            arrayList = list;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                String dayOf = dayOf((ActivityRecord) obj);
                String str2 = this.fromDate;
                Intrinsics.checkNotNull(str2);
                if (dayOf.compareTo(str2) >= 0) {
                    String str3 = this.toDate;
                    Intrinsics.checkNotNull(str3);
                    if (dayOf.compareTo(str3) <= 0) {
                        arrayList2.add(obj);
                    }
                }
            }
            arrayList = arrayList2;
        }
        TextView textView = this.tvMergeHint;
        RecyclerView recyclerView = null;
        MaterialButton materialButton = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            textView = null;
        }
        String str4 = this.fromDate;
        if (str4 == null) {
            str = "已加载最近 " + list.size() + " 条 · 点「📅 日期范围」可检索更早记录（合并通常跨好几天）";
        } else {
            Intrinsics.checkNotNull(str4);
            String substring = str4.substring(5);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            String str5 = this.toDate;
            Intrinsics.checkNotNull(str5);
            String substring2 = str5.substring(5);
            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
            str = substring + " ~ " + substring2 + " 共 " + arrayList.size() + " 条";
        }
        textView.setText(str);
        if (arrayList.isEmpty()) {
            TextView textView2 = this.tvMergeSelected;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvMergeSelected");
                textView2 = null;
            }
            textView2.setText("已选 0 条");
            this.mergeAdapter = new MergeAdapter(this, arrayList);
            RecyclerView recyclerView2 = this.rvMergeList;
            if (recyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rvMergeList");
                recyclerView2 = null;
            }
            recyclerView2.setAdapter(this.mergeAdapter);
            MaterialButton materialButton2 = this.btnDoMerge;
            if (materialButton2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("btnDoMerge");
                materialButton2 = null;
            }
            materialButton2.setEnabled(false);
            MaterialButton materialButton3 = this.btnDoMerge;
            if (materialButton3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("btnDoMerge");
            } else {
                materialButton = materialButton3;
            }
            materialButton.setText("合并");
            return;
        }
        this.selectedIndexes.clear();
        this.rangeMode = false;
        this.rangeAnchor = -1;
        this.mergeAdapter = new MergeAdapter(this, arrayList);
        RecyclerView recyclerView3 = this.rvMergeList;
        if (recyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvMergeList");
        } else {
            recyclerView = recyclerView3;
        }
        recyclerView.setAdapter(this.mergeAdapter);
        refreshSelectionHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onItemClick(int pos) {
        if (this.rangeMode) {
            int i = this.rangeAnchor;
            if (i < 0) {
                this.rangeAnchor = pos;
                toast("起点已标记，请再点选终点");
            } else {
                int min = Math.min(i, pos);
                int max = Math.max(this.rangeAnchor, pos);
                CollectionsKt.addAll(this.selectedIndexes, new IntRange(min, max));
                this.rangeMode = false;
                this.rangeAnchor = -1;
                toast("已选择 " + ((max - min) + 1) + " 条记录");
                updateRangeBtn();
            }
            MergeAdapter mergeAdapter = this.mergeAdapter;
            if (mergeAdapter != null) {
                mergeAdapter.notifyDataSetChanged();
            }
            refreshSelectionHint();
            return;
        }
        if (!this.selectedIndexes.add(Integer.valueOf(pos))) {
            this.selectedIndexes.remove(Integer.valueOf(pos));
        }
        refreshSelectionHint();
    }

    private final void updateRangeBtn() {
        TextView textView;
        View view = getView();
        if (view == null || (textView = (TextView) view.findViewById(R.id.btnMergeRange)) == null) {
            return;
        }
        textView.setBackground(this.rangeMode ? requireContext().getDrawable(R.drawable.merge_chip_white_on) : requireContext().getDrawable(R.drawable.merge_chip_white));
        textView.setTextColor(color(this.rangeMode ? R.color.primary : R.color.text_primary));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectToday() {
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter == null) {
            return;
        }
        String format = new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date());
        int size = mergeAdapter.getRecords().size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            String startTime = mergeAdapter.getRecords().get(i2).getStartTime();
            Intrinsics.checkNotNull(format);
            if (com.jichi.ob.util.KtCompat.startsWith$default(startTime, format, false, 2, (Object) null) && this.selectedIndexes.add(Integer.valueOf(i2))) {
                i++;
            }
        }
        if (i == 0) {
            toast("今天没有记录，已选其他记录试试");
        }
        refreshSelectionHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toggleRangeMode() {
        boolean z = this.rangeMode;
        this.rangeMode = !z;
        this.rangeAnchor = -1;
        toast(!z ? "连续多选模式：先点起点记录，再点终点记录" : "已退出连续多选");
        updateRangeBtn();
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearSelection() {
        this.selectedIndexes.clear();
        this.rangeMode = false;
        this.rangeAnchor = -1;
        refreshSelectionHint();
    }

    private final void refreshSelectionHint() {
        String str;
        List<ActivityRecord> records;
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
        int size = this.selectedIndexes.size();
        TextView textView = this.tvMergeHint;
        MaterialButton materialButton = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
            textView = null;
        }
        MergeAdapter mergeAdapter2 = this.mergeAdapter;
        textView.setText("共 " + ((mergeAdapter2 == null || (records = mergeAdapter2.getRecords()) == null) ? 0 : records.size()) + " 条记录 · 点按勾选（单选生成贴纸，多选合并）");
        TextView textView2 = this.tvMergeSelected;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvMergeSelected");
            textView2 = null;
        }
        textView2.setText("已选 " + size + " 条");
        MaterialButton materialButton2 = this.btnDoMerge;
        if (materialButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnDoMerge");
            materialButton2 = null;
        }
        if (size >= 2) {
            str = "合并（" + size + " 条）";
        } else if (size == 1) {
        }
        materialButton2.setText(str);
        MaterialButton materialButton3 = this.btnDoMerge;
        if (materialButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnDoMerge");
        } else {
            materialButton = materialButton3;
        }
        materialButton.setEnabled(size >= 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doMerge() {
        MergeAdapter mergeAdapter;
        DataSource dataSource = this.source;
        if (dataSource == null || (mergeAdapter = this.mergeAdapter) == null) {
            return;
        }
        List<ActivityRecord> records = mergeAdapter.getRecords();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : records) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            if (this.selectedIndexes.contains(Integer.valueOf(i))) {
                arrayList.add(obj);
            }
            i = i2;
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            toast("请至少选择 1 条记录");
            return;
        }
        boolean z = arrayList2.size() >= 2;
        MaterialButton materialButton = this.btnSaveMerge;
        TextView textView = null;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnSaveMerge");
            materialButton = null;
        }
        materialButton.setEnabled(false);
        TextView textView2 = this.tvMergeHint;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvMergeHint");
        } else {
            textView = textView2;
        }
        textView.setText(z ? "正在合并 " + arrayList2.size() + " 条记录..." : "正在生成单条贴纸...");
        kotlinx.coroutines.BuildersKt.launch(LifecycleOwnerKt.getLifecycleScope(this), kotlin.coroutines.EmptyCoroutineContext.INSTANCE, kotlinx.coroutines.CoroutineStart.DEFAULT, new MergeFragment$doMerge$1(this, arrayList2, z, dataSource, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPreview(TrackMerger.MergedResult result, int mergedCount) {
        EditText editText;
        TrackPreviewView trackPreviewView = this.previewTrack;
        TextView textView = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.setPoints(result.getPoints());
        try {
            String format = new SimpleDateFormat("MM-dd", Locale.US).format(new Date(result.getStartTime()));
            String sportName = TrackMerger.INSTANCE.sportName(result.getSport());
            String str = Intrinsics.areEqual(sportName, "running") ? "跑步" : Intrinsics.areEqual(sportName, "hiking") ? "徒步" : "骑行";
            TrackPreviewView trackPreviewView2 = this.previewTrack;
            if (trackPreviewView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView2 = null;
            }
            trackPreviewView2.setTitleOverride(str + " · " + format);
            View view = getView();
            if (view != null && (editText = (EditText) view.findViewById(R.id.editStickerTitle)) != null) {
                editText.setText(str + " · " + format);
            }
        } catch (Exception unused) {
            TrackPreviewView trackPreviewView3 = this.previewTrack;
            if (trackPreviewView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView3 = null;
            }
            trackPreviewView3.setTitleOverride("RIDING");
        }
        TrackPreviewView trackPreviewView4 = this.previewTrack;
        if (trackPreviewView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView4 = null;
        }
        trackPreviewView4.setStickerPreview(true);
        syncPreviewParams();
        buildStats(result, mergedCount);
        TextView textView2 = this.mergeStepHint;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mergeStepHint");
        } else {
            textView = textView2;
        }
        textView.setText(mergedCount >= 2 ? "3/4 · " + mergedCount + " 条已合并 → 1 条（可导出贴纸/GPX/FIT）" : "3/4 · 单条预览（可导出贴纸/GPX/FIT）");
        showStep(3);
    }

    private final void buildStats(TrackMerger.MergedResult result, int mergedCount) {
        GridLayout gridLayout = this.gridMergeStats;
        if (gridLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gridMergeStats");
            gridLayout = null;
        }
        gridLayout.removeAllViews();
        String sportName = TrackMerger.INSTANCE.sportName(result.getSport());
        buildStats$addStat(this, "运动类型", Intrinsics.areEqual(sportName, "running") ? "跑步" : Intrinsics.areEqual(sportName, "hiking") ? "徒步" : "骑行");
        buildStats$addStat(this, mergedCount >= 2 ? "合并段数" : "记录数", mergedCount >= 2 ? mergedCount + " 条 → 1 条" : "1 条（未合并）");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.US, "%.2f km", Arrays.copyOf(new Object[]{Double.valueOf(result.getTotalDistanceKm())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        buildStats$addStat(this, "总距离", format);
        buildStats$addStat(this, "总时长", formatDuration(result.getTotalDurationSec()));
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String format2 = String.format(Locale.US, "%.0f m", Arrays.copyOf(new Object[]{Double.valueOf(result.getAscentM())}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        buildStats$addStat(this, "累计爬升", format2);
        buildStats$addStat(this, "平均心率", result.getAvgHr() > 0 ? result.getAvgHr() + " bpm" : "—");
        buildStats$addStat(this, "平均踏频", result.getAvgCad() > 0 ? result.getAvgCad() + " rpm" : "—");
        buildStats$addStat(this, "平均功率", result.getAvgPower() > 0 ? result.getAvgPower() + " W" : "—");
    }

    private static final void buildStats$addStat(MergeFragment mergeFragment, String str, String str2) {
        LinearLayout linearLayout = new LinearLayout(mergeFragment.requireContext());
        linearLayout.setOrientation(1);
        float f = 6;
        linearLayout.setPadding(0, (int) (mergeFragment.getDp() * f), 0, (int) (f * mergeFragment.getDp()));
        TextView textView = new TextView(mergeFragment.requireContext());
        textView.setText(str);
        textView.setTextSize(11.0f);
        textView.setTextColor(mergeFragment.color(R.color.text_secondary));
        TextView textView2 = new TextView(mergeFragment.requireContext());
        textView2.setText(str2);
        textView2.setTextSize(15.0f);
        textView2.setTextColor(mergeFragment.color(R.color.text_primary));
        GridLayout gridLayout = null;
        textView2.setTypeface(null, 1);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        GridLayout gridLayout2 = mergeFragment.gridMergeStats;
        if (gridLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gridMergeStats");
        } else {
            gridLayout = gridLayout2;
        }
        GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
        layoutParams.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1.0f);
        Unit unit = Unit.INSTANCE;
        gridLayout.addView(linearLayout, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatDuration(long sec) {
        String format;
        long j = GarminProduct.VENUSQ;
        long j2 = sec / j;
        long j3 = 60;
        long j4 = (sec % j) / j3;
        long j5 = sec % j3;
        if (j2 > 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            format = String.format(Locale.US, "%d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j2), Long.valueOf(j4), Long.valueOf(j5)}, 3));
        } else {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            format = String.format(Locale.US, "%d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j4), Long.valueOf(j5)}, 2));
        }
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    private final void syncPreviewParams() {
        TrackPreviewView trackPreviewView = this.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.setDataStyle(this.stickerStyle);
        TrackPreviewView trackPreviewView3 = this.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView3 = null;
        }
        trackPreviewView3.setInclude3d(this.sticker3d);
        TrackPreviewView trackPreviewView4 = this.previewTrack;
        if (trackPreviewView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView4 = null;
        }
        trackPreviewView4.setLineColorMode(this.stickerLineMode);
        TrackPreviewView trackPreviewView5 = this.previewTrack;
        if (trackPreviewView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView5 = null;
        }
        trackPreviewView5.setTextColorMode(this.stickerTextMode);
        TrackPreviewView trackPreviewView6 = this.previewTrack;
        if (trackPreviewView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView6 = null;
        }
        trackPreviewView6.setItems(this.stickerItems);
        TrackPreviewView trackPreviewView7 = this.previewTrack;
        if (trackPreviewView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView7;
        }
        trackPreviewView2.setPosMode(this.stickerPos);
    }

    private final GradientDrawable chipBg(boolean selected) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(16 * getDp());
        gradientDrawable.setColor(selected ? -13923073 : -920328);
        if (!selected) {
            gradientDrawable.setStroke((int) (1 * getDp()), -1839366);
        }
        return gradientDrawable;
    }

    private final void buildCategoryTabs() {
        LinearLayout linearLayout = this.categoryTabRow;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryTabRow");
            linearLayout = null;
        }
        linearLayout.removeAllViews();
        int i = 0;
        for (Object obj : StickerCore.StickerTemplates.INSTANCE.getCATEGORIES()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            final String str = (String) obj;
            TextView textView = new TextView(requireContext());
            textView.setText(str);
            textView.setTextSize(12.0f);
            textView.setGravity(17);
            float f = 16;
            float f2 = 8;
            textView.setPadding((int) (getDp() * f), (int) (getDp() * f2), (int) (f * getDp()), (int) (getDp() * f2));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMarginEnd((int) (f2 * getDp()));
            textView.setLayoutParams(layoutParams);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda56
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MergeFragment.buildCategoryTabs$lambda$120$lambda$119(MergeFragment.this, str, view);
                }
            });
            LinearLayout linearLayout2 = this.categoryTabRow;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("categoryTabRow");
                linearLayout2 = null;
            }
            linearLayout2.addView(textView);
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void buildCategoryTabs$lambda$120$lambda$119(MergeFragment mergeFragment, String str, View view) {
        Iterator<StickerCore.StickerTemplate> it = StickerCore.StickerTemplates.INSTANCE.getALL().iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it.next().getCategory(), str)) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            mergeFragment.selectTemplate(i);
        }
    }

    private final void selectTemplate(int idx) {
        StickerCore.StickerTemplate stickerTemplate = (StickerCore.StickerTemplate) CollectionsKt.getOrNull(StickerCore.StickerTemplates.INSTANCE.getALL(), idx);
        if (stickerTemplate == null) {
            return;
        }
        this.templateIdx = idx;
        this.comboOverride = false;
        this.comboPanelOpen = false;
        LinearLayout linearLayout = this.comboPanel;
        TrackPreviewView trackPreviewView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("comboPanel");
            linearLayout = null;
        }
        linearLayout.setVisibility(8);
        TrackPreviewView trackPreviewView2 = this.previewTrack;
        if (trackPreviewView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView = trackPreviewView2;
        }
        trackPreviewView.applyTemplate(stickerTemplate);
        refreshStickerChips();
        updateCategoryTabs();
    }

    private final void updateBadgeVisibility() {
        TextView textView = this.stickerCardTitle;
        TrackPreviewView trackPreviewView = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerCardTitle");
            textView = null;
        }
        textView.setVisibility(this.badgeOn ? 0 : 8);
        TextView textView2 = this.stickerCardPage;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerCardPage");
            textView2 = null;
        }
        textView2.setVisibility(this.badgeOn ? 0 : 8);
        TrackPreviewView trackPreviewView2 = this.previewTrack;
        if (trackPreviewView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView = trackPreviewView2;
        }
        trackPreviewView.setBadgeOn(this.badgeOn);
    }

    private final CharSequence trackLabel(StickerCore.StickerTrack t) {
        int i;
        switch (WhenMappings.$EnumSwitchMapping$0[t.ordinal()]) {
            case 1:
                i = -38400;
                break;
            case 2:
                i = -1512723;
                break;
            case 3:
                i = -15656921;
                break;
            case 4:
                i = -6643546;
                break;
            case 5:
                i = -53564;
                break;
            case 6:
                i = -49920;
                break;
            case 7:
                i = -16728065;
                break;
            case 8:
                i = -14336;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        SpannableString spannableString = new SpannableString("轨迹:●" + t.getKey());
        spannableString.setSpan(new ForegroundColorSpan(i), 3, 4, 33);
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openCombo() {
        this.comboPanelOpen = true;
        LinearLayout linearLayout = this.comboPanel;
        TrackPreviewView trackPreviewView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("comboPanel");
            linearLayout = null;
        }
        linearLayout.setVisibility(0);
        TrackPreviewView trackPreviewView2 = this.previewTrack;
        if (trackPreviewView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView = trackPreviewView2;
        }
        trackPreviewView.setUseTemplate(true);
        refreshStickerChips();
    }

    private final void updateCategoryTabs() {
        String category = this.templateIdx >= 0 ? StickerCore.StickerTemplates.INSTANCE.getALL().get(this.templateIdx).getCategory() : null;
        LinearLayout linearLayout = this.categoryTabRow;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryTabRow");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.categoryTabRow;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("categoryTabRow");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
            if (textView != null) {
                boolean areEqual = Intrinsics.areEqual(textView.getText().toString(), category);
                textView.setBackground(chipBg(areEqual));
                textView.setTextColor(color(areEqual ? R.color.white : R.color.text_secondary));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:165:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x047f  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x052c  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x056a  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0572  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0593  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x05ee  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0613  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x05c0  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x052e  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0465  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void refreshStickerChips() {
        // 方法体按 9.6.8 原版恢复（jadx 旧反编译结果 + smali 核对）。
        // 旧反编译结果此处有两处失真，已按 smali 改回：
        // ① 后半段（照片文案起的整段设色代码）在旧反编译里被复制了一份、其中一份是空壳，
        //    实际只跑一遍；② 颜色条件旧反编译多处写反了——smali 的原意是“偏离默认态才高亮
        //    主色”：背景≠深空、轨迹≠橙渐变、布局≠三栏、字色≠白、数据≠默认、位置≠0 时主色，
        //    发光仅在非 3D 且开启时主色；海拔/透明/数据层/水印/往期是开启时主色。
        // 照片文案的条件旧反编译也写反了：有 overlayBitmap 才显示“已选择”。
        int templateCount = StickerCore.StickerTemplates.INSTANCE.getALL().size();
        if (this.templateIdx >= 0) {
            StickerCore.StickerTemplate template = StickerCore.StickerTemplates.INSTANCE.getALL().get(this.templateIdx);
            this.stickerCardTitle.setText(template.getCategory() + " · " + template.getName());
            updateBadgeVisibility();
            this.stickerCardPage.setText((this.templateIdx + 1) + "/" + templateCount);
            this.stickerTemplateName.setText((this.templateIdx + 1) + "/" + templateCount);
        } else {
            this.stickerCardTitle.setText("自定义组合");
            updateBadgeVisibility();
            this.stickerCardPage.setText("C/" + templateCount);
            this.stickerTemplateName.setText("自定义组合 · " + StickerCore.StickerTemplates.INSTANCE.getCOMBO_COUNT() + " 种");
        }
        this.btnStickerBadge.setText(this.badgeOn ? "角标:开" : "角标:关");
        this.btnStickerBadge.setTextColor(color(this.badgeOn ? R.color.primary : R.color.text_secondary));
        TrackPreviewView preview = this.previewTrack;
        if (preview == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            preview = null;
        }
        this.btnStickerTrack.setText(preview.getTrackOn() ? "轨迹:平面" : "轨迹:关");
        this.btnStickerTrack.setTextColor(color(preview.getTrackOn() ? R.color.primary : R.color.text_secondary));
        this.btnStickerBrand.setText(preview.getBrandIdx() == TrackPreviewView.BRAND_CUSTOM ? "角标:自定义" : "角标:鸡翅OB");
        this.btnStickerBrand.setTextColor(color(preview.getBrandIdx() == TrackPreviewView.BRAND_CUSTOM ? R.color.primary : R.color.text_secondary));
        this.btnStickerStyle.setText("背景:" + preview.getBgType().getKey());
        this.btnSticker3d.setText(trackLabel(preview.getTrackType()));
        this.btnStickerColor.setText("布局:" + preview.getLayoutType().getKey());
        this.btnStickerTextColor.setText("字色:" + preview.getTextType().getKey());
        this.btnStickerItems.setText("数据:" + this.stickerItems.size() + "项");
        this.btnStickerPos.setText("位置:" + TrackPreviewView.INSTANCE.getPosNames().get(this.stickerPos));
        this.btnStickerWidth.setText("粗细:" + TrackPreviewView.trackWidthNames[preview.getTrackWidth()]);
        this.btnStickerWidth.setTextColor(color(preview.getTrackWidth() != 3 ? R.color.primary : R.color.text_secondary));
        this.btnStickerGlow.setText(preview.getTrack3d() ? "发光:3D关" : (preview.getGlowOn() ? "发光:开" : "发光:关"));
        this.btnSticker3dBand.setText(preview.getShow3dBand() ? "海拔:开" : "海拔:关");
        this.btnStickerTransparent.setText(preview.getTransparentBg() ? "透明:开" : "透明:关");
        this.btnStickerDataLayer.setText(preview.getDataLayerOn() ? "数据层:开" : "数据层:关");
        this.btnStickerWatermark.setText(preview.getWatermarkOn() ? "水印:开" : "水印:关");
        StickerCore.SummaryStats stats = preview.getSummaryStats();
        this.btnStickerSummary.setText(stats != null ? "往期数据:" + stats.getCount() + "次 · " + stats.fmtKm() + "km" : "往期数据:未填（点击录入）");
        if (preview.getOverlayBitmap() != null) {
            this.btnStickerPhoto.setText("🖼️ 照片:已选择 · " + (this.photoBgs.contains(preview.getBgType()) ? "当前背景生效中" : "点此切换照片背景"));
        } else {
            this.btnStickerPhoto.setText("🖼️ 选照片:未选择（透明叠加/磕磕玻璃/拼图拼接用）");
        }
        int primary = color(R.color.primary);
        int secondary = color(R.color.text_secondary);
        this.btnStickerStyle.setTextColor(preview.getBgType() != StickerCore.StickerBg.DEEP_SPACE ? primary : secondary);
        this.btnSticker3d.setTextColor(preview.getTrackType() != StickerCore.StickerTrack.ORANGE_GRAD ? primary : secondary);
        this.btnStickerColor.setTextColor(preview.getLayoutType() != StickerCore.StickerLayout.TRIPLE ? primary : secondary);
        this.btnStickerTextColor.setTextColor(preview.getTextType() != StickerCore.StickerText.WHITE ? primary : secondary);
        this.btnStickerItems.setTextColor(!Intrinsics.areEqual(this.stickerItems, StickerCore.INSTANCE.getITEM_DEFAULT()) ? primary : secondary);
        this.btnStickerPos.setTextColor(this.stickerPos != 0 ? primary : secondary);
        this.btnStickerGlow.setTextColor(!preview.getTrack3d() && preview.getGlowOn() ? primary : secondary);
        this.btnSticker3dBand.setTextColor(preview.getShow3dBand() ? primary : secondary);
        this.btnStickerTransparent.setTextColor(preview.getTransparentBg() ? primary : secondary);
        this.btnStickerDataLayer.setTextColor(preview.getDataLayerOn() ? primary : secondary);
        this.btnStickerWatermark.setTextColor(preview.getWatermarkOn() ? primary : secondary);
        this.btnStickerSummary.setTextColor(stats != null ? primary : secondary);
        preview.invalidate();
    }

    private final void buildBgChips() {
        LinearLayout linearLayout = this.bgChipRow;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bgChipRow");
            linearLayout = null;
        }
        linearLayout.removeAllViews();
        float f = getResources().getDisplayMetrics().density;
        for (final StickerCore.StickerBg stickerBg : StickerCore.StickerBg.getEntries()) {
            LinearLayout linearLayout2 = new LinearLayout(requireContext());
            linearLayout2.setOrientation(1);
            linearLayout2.setGravity(17);
            int i = (int) (6 * f);
            linearLayout2.setPadding(i, 0, i, 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMarginEnd((int) (7 * f));
            linearLayout2.setLayoutParams(layoutParams);
            linearLayout2.setClickable(true);
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda52
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MergeFragment.buildBgChips$lambda$128$lambda$124$lambda$123(MergeFragment.this, stickerBg, view);
                }
            });
            View view = new View(requireContext());
            Integer num = this.bgSwatches.get(stickerBg);
            int intValue = num != null ? num.intValue() : -16052964;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(10 * f);
            if (stickerBg == StickerCore.StickerBg.PHOTO_OVERLAY) {
                gradientDrawable.setStroke((int) (2 * f), -6441784);
            } else {
                gradientDrawable.setColor(intValue);
            }
            gradientDrawable.setColor(intValue);
            if (stickerBg == StickerCore.StickerBg.MINIMAL_WHITE || stickerBg == StickerCore.StickerBg.CREAM || stickerBg == StickerCore.StickerBg.LIGHT_GRAY || stickerBg == StickerCore.StickerBg.WARM_POSTER || stickerBg == StickerCore.StickerBg.LIGHT_MAP || stickerBg == StickerCore.StickerBg.CONTOUR || stickerBg == StickerCore.StickerBg.FROSTED) {
                gradientDrawable.setStroke((int) (2 * f), -3355444);
            }
            view.setBackground(gradientDrawable);
            view.setLayoutParams(new LinearLayout.LayoutParams((int) (56 * f), (int) (40 * f)));
            TextView textView = new TextView(requireContext());
            textView.setText(stickerBg.getKey());
            textView.setTextSize(9.0f);
            textView.setMaxLines(1);
            TrackPreviewView trackPreviewView = this.previewTrack;
            if (trackPreviewView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView = null;
            }
            textView.setTextColor(color(stickerBg == trackPreviewView.getBgType() ? R.color.primary : R.color.text_secondary));
            textView.setGravity(17);
            linearLayout2.addView(view);
            linearLayout2.addView(textView);
            LinearLayout linearLayout3 = this.bgChipRow;
            if (linearLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bgChipRow");
                linearLayout3 = null;
            }
            linearLayout3.addView(linearLayout2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void buildBgChips$lambda$128$lambda$124$lambda$123(MergeFragment mergeFragment, StickerCore.StickerBg stickerBg, View view) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        HorizontalScrollView horizontalScrollView = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.setBgType(stickerBg);
        mergeFragment.comboOverride = true;
        mergeFragment.refreshStickerChips();
        HorizontalScrollView horizontalScrollView2 = mergeFragment.bgPickerRow;
        if (horizontalScrollView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bgPickerRow");
        } else {
            horizontalScrollView = horizontalScrollView2;
        }
        horizontalScrollView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveMerge() {
        TrackMerger.MergedResult mergedResult = this.mergedResult;
        if (mergedResult == null) {
            return;
        }
        String mergeFileName = mergeFileName();
        File file = new File(MainActivity.Companion.getSAVE_DIR(), "合并");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            // v9.6.9: 合并骑行 sub_sport 传 7（road），跑步 2、徒步 3；计时/lap/设备信息/卡路里随 MergeInfo 传给转换器。
            int subSport = mergedResult.getSport() == 2 ? 7 : (mergedResult.getSport() == 1 ? 2 : (mergedResult.getSport() == 17 ? 3 : 0));
            GpxToFitConverter.MergeInfo mergeInfo = new GpxToFitConverter.MergeInfo(mergedResult.getTotalDurationSec(), mergedResult.getLapStartIndices(), mergedResult.getLapAscents(), mergedResult.getLapDescents(), mergedResult.getManufacturer(), mergedResult.getProduct(), mergedResult.getSerialNumber(), mergedResult.getTotalCalories());
            byte[] convertPoints$default = GpxToFitConverter.convertPoints$default(GpxToFitConverter.INSTANCE, mergedResult.getPoints(), mergedResult.getSport(), Degrees.MIN_VALUE, 0L, subSport, 0, mergedResult.getTotalDistanceKm() * 1000, mergedResult.getAscentM(), mergedResult.getDescentM(), mergeInfo, 44, null);
            File file2 = new File(file, mergeFileName + ".fit");
            try {
                FilesKt.writeBytes(file2, convertPoints$default);
                this.savedFile = file2;
                TextView textView = this.tvMergeResultTitle;
                TextView textView2 = null;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvMergeResultTitle");
                    textView = null;
                }
                textView.setText("✅ 合并成功");
                TextView textView3 = this.tvMergeResultFile;
                if (textView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvMergeResultFile");
                    textView3 = null;
                }
                textView3.setText(mergeFileName + ".fit");
                TextView textView4 = this.tvMergeResultPath;
                if (textView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvMergeResultPath");
                } else {
                    textView2 = textView4;
                }
                textView2.setText(file2.getAbsolutePath());
                setupUploadGrid();
                showStep(4);
                toast("已保存：" + file2.getAbsolutePath());
            } catch (Exception e) {
                toast("保存失败：" + e.getMessage());
            }
        } catch (Exception e2) {
            toast("FIT 生成失败：" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void exportMerge(boolean exportFit) {
        byte[] buildGpx;
        TrackMerger.MergedResult mergedResult = this.mergedResult;
        if (mergedResult == null) {
            return;
        }
        File file = new File(MainActivity.Companion.getSAVE_DIR(), "合并");
        if (!file.exists()) {
            file.mkdirs();
        }
        String mergeFileName = mergeFileName();
        try {
            if (exportFit) {
                // v9.6.9: 同 saveMerge——sub_sport 按运动类型传，计时/lap/设备信息/卡路里随 MergeInfo 传给转换器。
                int subSport = mergedResult.getSport() == 2 ? 7 : (mergedResult.getSport() == 1 ? 2 : (mergedResult.getSport() == 17 ? 3 : 0));
                GpxToFitConverter.MergeInfo mergeInfo = new GpxToFitConverter.MergeInfo(mergedResult.getTotalDurationSec(), mergedResult.getLapStartIndices(), mergedResult.getLapAscents(), mergedResult.getLapDescents(), mergedResult.getManufacturer(), mergedResult.getProduct(), mergedResult.getSerialNumber(), mergedResult.getTotalCalories());
                buildGpx = GpxToFitConverter.convertPoints$default(GpxToFitConverter.INSTANCE, mergedResult.getPoints(), mergedResult.getSport(), Degrees.MIN_VALUE, 0L, subSport, 0, mergedResult.getTotalDistanceKm() * 1000, mergedResult.getAscentM(), mergedResult.getDescentM(), mergeInfo, 44, null);
            } else {
                buildGpx = TrackMerger.INSTANCE.buildGpx(mergedResult, "merged-" + TrackMerger.INSTANCE.sportName(mergedResult.getSport()));
            }
            File file2 = new File(file, mergeFileName + "." + (exportFit ? "fit" : "gpx"));
            FilesKt.writeBytes(file2, buildGpx);
            toast("已导出：" + file2.getAbsolutePath());
        } catch (Exception e) {
            toast("导出失败：" + e.getMessage());
        }
    }

    private final String mergeFileName() {
        String str;
        DataSource dataSource = this.localMode ? null : this.source;
        String format = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
        if (dataSource == null || (str = dataSource.getShortName()) == null) {
            str = "local";
        }
        return str + "_merged_" + format;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pickStickerItems() {
        final List list = CollectionsKt.toList(StickerCore.INSTANCE.getITEM_DEFS().entrySet());
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Pair) ((Map.Entry) it.next()).getValue()).getFirst());
        }
        ArrayList arrayList2 = arrayList;
        int size = list.size();
        final boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = this.stickerItems.contains(((Map.Entry) list.get(i)).getKey());
        }
        new MaterialAlertDialogBuilder(requireContext()).setTitle((CharSequence) "可点选展示信息（2~6 项）").setMultiChoiceItems((CharSequence[]) arrayList2.toArray(new String[0]), zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda58
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public final void onClick(DialogInterface dialogInterface, int i2, boolean z) {
                MergeFragment.pickStickerItems$lambda$130(zArr, dialogInterface, i2, z);
            }
        }).setPositiveButton((CharSequence) "确认", new DialogInterface.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda59
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                MergeFragment.pickStickerItems$lambda$133(list, this, zArr, dialogInterface, i2);
            }
        }).setNegativeButton((CharSequence) "取消", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pickStickerItems$lambda$130(boolean[] zArr, DialogInterface dialogInterface, int i, boolean z) {
        zArr[i] = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pickStickerItems$lambda$133(List list, MergeFragment mergeFragment, boolean[] zArr, DialogInterface dialogInterface, int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            if (zArr[i2]) {
                arrayList.add(obj);
            }
            i2 = i3;
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(Integer.valueOf(((Number) ((Map.Entry) it.next()).getKey()).intValue()));
        }
        ArrayList arrayList4 = arrayList3;
        if (arrayList4.size() < 2) {
            mergeFragment.toast("至少选择 2 项数据");
            return;
        }
        if (arrayList4.size() > 6) {
            mergeFragment.toast("最多选择 6 项数据");
            return;
        }
        mergeFragment.stickerItems = CollectionsKt.toMutableList((Collection) arrayList4);
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.setItems(mergeFragment.stickerItems);
        mergeFragment.refreshStickerChips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDataEditDialog() {
        boolean z = true;
        int i = 6;
        List listOf = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to(MonitoringReader.DISTANCE_STRING, "距离 (km)"), TuplesKt.to(TypedValues.TransitionType.S_DURATION, "时长 (如 1:00:33)"), TuplesKt.to("avgSpeed", "均速 (km/h)"), TuplesKt.to("maxSpeed", "最大速度"), TuplesKt.to("climb", "累计爬升 (m)"), TuplesKt.to("hr", "平均心率"), TuplesKt.to("power", "平均功率"), TuplesKt.to("kcal", "卡路里"), TuplesKt.to("cad", "平均踏频"), TuplesKt.to("altMax", "最高海拔 (m)"), TuplesKt.to("altMin", "最低海拔 (m)")});
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        int dp = (int) (14 * getDp());
        linearLayout.setPadding(dp, dp, dp, 0);
        final ArrayList arrayList = new ArrayList();
        Iterator it = listOf.iterator();
        while (true) {
            TrackPreviewView trackPreviewView = null;
            if (it.hasNext()) {
                Pair pair = (Pair) it.next();
                String str = (String) pair.component1();
                String str2 = (String) pair.component2();
                LinearLayout linearLayout2 = new LinearLayout(requireContext());
                linearLayout2.setOrientation(0);
                linearLayout2.setGravity(16);
                TextView textView = new TextView(requireContext());
                textView.setText(str2);
                textView.setTextSize(13.0f);
                textView.setTextColor(color(R.color.text_primary));
                textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.45f));
                EditText editText = new EditText(requireContext());
                editText.setTextSize(13.0f);
                editText.setTextColor(color(R.color.text_primary));
                editText.setHint("留空=用实际值");
                editText.setHintTextColor(color(R.color.text_secondary));
                editText.setSingleLine(z);
                TrackPreviewView trackPreviewView2 = this.previewTrack;
                if (trackPreviewView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                } else {
                    trackPreviewView = trackPreviewView2;
                }
                String currentDataOverride = trackPreviewView.currentDataOverride(str);
                if (currentDataOverride != null) {
                    editText.setText(currentDataOverride);
                }
                editText.setBackground(requireContext().getDrawable(R.drawable.input_box_bg));
                float f = 8;
                float f2 = i;
                boolean z2 = z;
                editText.setPadding((int) (getDp() * f), (int) (f2 * getDp()), (int) (f * getDp()), (int) (f2 * getDp()));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 0.55f);
                layoutParams.setMarginStart((int) (getDp() * f));
                editText.setLayoutParams(layoutParams);
                linearLayout2.addView(textView);
                linearLayout2.addView(editText);
                linearLayout.addView(linearLayout2, -1, -2);
                ViewGroup.LayoutParams layoutParams2 = linearLayout.getChildAt(linearLayout.getChildCount() - 1).getLayoutParams();
                Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                ((LinearLayout.LayoutParams) layoutParams2).bottomMargin = (int) (f * getDp());
                arrayList.add(TuplesKt.to(str, editText));
                z = z2;
                i = 6;
            } else {
                new AlertDialog.Builder(requireContext()).setTitle("手输数据（可留空）").setView(linearLayout).setPositiveButton("保存", new DialogInterface.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda60
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        MergeFragment.showDataEditDialog$lambda$142(arrayList, this, dialogInterface, i2);
                    }
                }).setNeutralButton("清空手输", new DialogInterface.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda61
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        MergeFragment.showDataEditDialog$lambda$143(MergeFragment.this, dialogInterface, i2);
                    }
                }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDataEditDialog$lambda$142(List list, MergeFragment mergeFragment, DialogInterface dialogInterface, int i) {
        String obj;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            String str = (String) pair.component1();
            EditText editText = (EditText) pair.component2();
            TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
            String str2 = null;
            if (trackPreviewView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView = null;
            }
            Editable text = editText.getText();
            if (text != null && (obj = text.toString()) != null) {
                str2 = StringsKt.trim((CharSequence) obj).toString();
            }
            trackPreviewView.setDataOverride(str, str2);
        }
        mergeFragment.toast("数据已更新，预览实时刷新");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDataEditDialog$lambda$143(MergeFragment mergeFragment, DialogInterface dialogInterface, int i) {
        TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.clearDataOverrides();
        mergeFragment.toast("已清空手输数据");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void exportSticker() {
        TrackMerger.MergedResult mergedResult = this.mergedResult;
        if (mergedResult == null) {
            return;
        }
        TrackPreviewView trackPreviewView = this.previewTrack;
        TrackPreviewView trackPreviewView2 = null;
        if (trackPreviewView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            trackPreviewView = null;
        }
        trackPreviewView.setPoints(mergedResult.getPoints());
        TrackPreviewView trackPreviewView3 = this.previewTrack;
        if (trackPreviewView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
        } else {
            trackPreviewView2 = trackPreviewView3;
        }
        trackPreviewView2.postDelayed(new Runnable() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                MergeFragment.exportSticker$lambda$146(MergeFragment.this);
            }
        }, 60L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void exportSticker$lambda$146(final MergeFragment mergeFragment) {
        try {
            TrackPreviewView trackPreviewView = mergeFragment.previewTrack;
            TrackPreviewView trackPreviewView2 = null;
            if (trackPreviewView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView = null;
            }
            TrackPreviewView trackPreviewView3 = mergeFragment.previewTrack;
            if (trackPreviewView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView3 = null;
            }
            boolean watermarkOn = trackPreviewView3.getWatermarkOn();
            List<Integer> list = mergeFragment.stickerItems;
            TrackPreviewView trackPreviewView4 = mergeFragment.previewTrack;
            if (trackPreviewView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView4 = null;
            }
            float dx = trackPreviewView4.getDx();
            TrackPreviewView trackPreviewView5 = mergeFragment.previewTrack;
            if (trackPreviewView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView5 = null;
            }
            float dy = trackPreviewView5.getDy();
            TrackPreviewView trackPreviewView6 = mergeFragment.previewTrack;
            if (trackPreviewView6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
                trackPreviewView6 = null;
            }
            float scale = trackPreviewView6.getScale();
            TrackPreviewView trackPreviewView7 = mergeFragment.previewTrack;
            if (trackPreviewView7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewTrack");
            } else {
                trackPreviewView2 = trackPreviewView7;
            }
            TrackPreviewView.exportTemplatePngAsync$default(trackPreviewView, 1024, 0, watermarkOn, list, dx, dy, scale, trackPreviewView2.getTransparentBg(), new Function1() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda63
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit exportSticker$lambda$146$lambda$145;
                    exportSticker$lambda$146$lambda$145 = MergeFragment.exportSticker$lambda$146$lambda$145(MergeFragment.this, (Bitmap) obj);
                    return exportSticker$lambda$146$lambda$145;
                }
            }, 2, null);
        } catch (Exception e) {
            mergeFragment.toast("贴纸生成失败：" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit exportSticker$lambda$146$lambda$145(MergeFragment mergeFragment, Bitmap bmp) {
        Intrinsics.checkNotNullParameter(bmp, "bmp");
        File file = new File(MainActivity.Companion.getSAVE_DIR(), "合并");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, mergeFragment.mergeFileName() + "_sticker.png");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                bmp.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                CloseableKt.closeFinally(fileOutputStream, null);
                mergeFragment.toast("贴纸已导出：" + file2.getAbsolutePath());
            } finally {
            }
        } catch (Exception e) {
            mergeFragment.toast("贴纸保存失败：" + e.getMessage());
        }
        return Unit.INSTANCE;
    }

    private final void setupUploadGrid() {
        GridLayout gridLayout = this.gridMergeUpload;
        GridLayout gridLayout2 = null;
        if (gridLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gridMergeUpload");
            gridLayout = null;
        }
        gridLayout.removeAllViews();
        this.selectedUploadTags.clear();
        java.util.List<DataSource> entries = DataSource.getEntries();
        ArrayList arrayList = new ArrayList();
        for (Object obj : entries) {
            if (UploadSupport.Companion.fromDataSource((DataSource) obj).getAvailable()) {
                arrayList.add(obj);
            }
        }
        ArrayList<DataSource> arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            TextView textView = new TextView(requireContext());
            textView.setText("暂无可用上传平台");
            textView.setTextSize(13.0f);
            textView.setTextColor(color(R.color.text_secondary));
            GridLayout gridLayout3 = this.gridMergeUpload;
            if (gridLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gridMergeUpload");
            } else {
                gridLayout2 = gridLayout3;
            }
            GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
            layoutParams.columnSpec = GridLayout.spec(0, 4);
            Unit unit = Unit.INSTANCE;
            gridLayout2.addView(textView, layoutParams);
            return;
        }
        for (final DataSource dataSource : arrayList2) {
            PrefsManager prefsManager = this.prefs;
            if (prefsManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefs");
                prefsManager = null;
            }
            boolean isLoggedIn = prefsManager.isLoggedIn(dataSource);
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            final PlatformButton platformButton = new PlatformButton(requireContext, null, 2, null);
            platformButton.setTag(dataSource.getShortName());
            platformButton.bind(platformColor(dataSource.getShortName()));
            String displayName = dataSource.getDisplayName();
            if (!isLoggedIn) {
                displayName = displayName + "\n未登录";
            }
            platformButton.setButtonText(displayName);
            GridLayout.LayoutParams layoutParams2 = new GridLayout.LayoutParams();
            layoutParams2.width = 0;
            layoutParams2.height = (int) (48 * getDp());
            layoutParams2.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1.0f);
            float f = 2;
            layoutParams2.setMargins((int) (getDp() * f), (int) (getDp() * f), (int) (getDp() * f), (int) (f * getDp()));
            platformButton.setLayoutParams(layoutParams2);
            platformButton.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$$ExternalSyntheticLambda57
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MergeFragment.setupUploadGrid$lambda$152$lambda$151(MergeFragment.this, dataSource, platformButton, view);
                }
            });
            if (!isLoggedIn) {
                platformButton.setPlatformState(false, false);
            }
            GridLayout gridLayout4 = this.gridMergeUpload;
            if (gridLayout4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gridMergeUpload");
                gridLayout4 = null;
            }
            gridLayout4.addView(platformButton);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupUploadGrid$lambda$152$lambda$151(MergeFragment mergeFragment, DataSource dataSource, PlatformButton platformButton, View view) {
        PrefsManager prefsManager = mergeFragment.prefs;
        if (prefsManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            prefsManager = null;
        }
        if (!prefsManager.isLoggedIn(dataSource)) {
            mergeFragment.toast("请先登录 " + dataSource.getDisplayName());
        } else {
            if (!mergeFragment.selectedUploadTags.add(dataSource.getShortName())) {
                mergeFragment.selectedUploadTags.remove(dataSource.getShortName());
            }
            platformButton.setPlatformState(mergeFragment.selectedUploadTags.contains(dataSource.getShortName()), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadMerge() {
        File file = this.savedFile;
        if (file == null) {
            toast("尚未保存合并文件");
            return;
        }
        if (this.selectedUploadTags.isEmpty()) {
            toast("未选择上传平台，文件已存本地");
            return;
        }
        UploadEngine uploadEngine = new UploadEngine(requireContext());
        TrackMerger.MergedResult mergedResult = this.mergedResult;
        if (mergedResult == null) {
            return;
        }
        MaterialButton materialButton = this.btnUploadMerge;
        MaterialButton materialButton2 = null;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnUploadMerge");
            materialButton = null;
        }
        materialButton.setEnabled(false);
        MaterialButton materialButton3 = this.btnUploadMerge;
        if (materialButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnUploadMerge");
        } else {
            materialButton2 = materialButton3;
        }
        materialButton2.setText("上传中...");
        kotlinx.coroutines.BuildersKt.launch(LifecycleOwnerKt.getLifecycleScope(this), kotlin.coroutines.EmptyCoroutineContext.INSTANCE, kotlinx.coroutines.CoroutineStart.DEFAULT, new MergeFragment$uploadMerge$1(this, file, mergedResult, uploadEngine, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toast(String msg) {
        Toast.makeText(requireContext(), msg, 0).show();
    }

    /* compiled from: MergeFragment.kt */
        public final class MergeAdapter extends RecyclerView.Adapter<MergeAdapter.VH> {
        private final SimpleDateFormat dayFmt;
        private final SimpleDateFormat fmt;
        private final SimpleDateFormat isoFmt;
        private final List<ActivityRecord> records;
        final /* synthetic */ MergeFragment this$0;

        public MergeAdapter(MergeFragment mergeFragment, List<ActivityRecord> records) {
            Intrinsics.checkNotNullParameter(records, "records");
            this.this$0 = mergeFragment;
            this.records = records;
            this.fmt = new SimpleDateFormat("MM-dd HH:mm", Locale.US);
            this.dayFmt = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            this.isoFmt = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
        }

        public final List<ActivityRecord> getRecords() {
            return this.records;
        }

        private final long parseTs(String s) {
            try {
                try {
                    Date parse = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).parse(s);
                    if (parse != null) {
                        return parse.getTime();
                    }
                    Date parse2 = this.isoFmt.parse(s);
                    if (parse2 != null) {
                        return parse2.getTime();
                    }
                    return 0L;
                } catch (Exception unused) {
                    return 0L;
                }
            } catch (Exception unused2) {
                Date parse3 = this.isoFmt.parse(s);
                if (parse3 != null) {
                    return parse3.getTime();
                }
                return 0L;
            }
        }

        /* compiled from: MergeFragment.kt */
                public final class VH extends RecyclerView.ViewHolder {
            private final View dot;
            private final LinearLayout root;
            final /* synthetic */ MergeAdapter this$0;
            private final TextView tvCheck;
            private final TextView tvMeta;
            private final TextView tvTitle;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public VH(MergeAdapter mergeAdapter, LinearLayout root, View dot, TextView tvTitle, TextView tvMeta, TextView tvCheck) {
                super(root);
                Intrinsics.checkNotNullParameter(root, "root");
                Intrinsics.checkNotNullParameter(dot, "dot");
                Intrinsics.checkNotNullParameter(tvTitle, "tvTitle");
                Intrinsics.checkNotNullParameter(tvMeta, "tvMeta");
                Intrinsics.checkNotNullParameter(tvCheck, "tvCheck");
                this.this$0 = mergeAdapter;
                this.root = root;
                this.dot = dot;
                this.tvTitle = tvTitle;
                this.tvMeta = tvMeta;
                this.tvCheck = tvCheck;
            }

            public final LinearLayout getRoot() {
                return this.root;
            }

            public final View getDot() {
                return this.dot;
            }

            public final TextView getTvTitle() {
                return this.tvTitle;
            }

            public final TextView getTvMeta() {
                return this.tvMeta;
            }

            public final TextView getTvCheck() {
                return this.tvCheck;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public VH onCreateViewHolder(ViewGroup parent, int viewType) {
            String str;
            Intrinsics.checkNotNullParameter(parent, "parent");
            LinearLayout linearLayout = new LinearLayout(parent.getContext());
            MergeFragment mergeFragment = this.this$0;
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            float f = 14;
            float f2 = 10;
            linearLayout.setPadding((int) (mergeFragment.getDp() * f), (int) (mergeFragment.getDp() * f2), (int) (f * mergeFragment.getDp()), (int) (mergeFragment.getDp() * f2));
            linearLayout.setBackground(itemBg$default(this, false, false, 2, null));
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            View view = new View(parent.getContext());
            MergeFragment mergeFragment2 = this.this$0;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            DataSource dataSource = mergeFragment2.source;
            if (dataSource == null || (str = dataSource.getShortName()) == null) {
                str = "";
            }
            gradientDrawable.setColor(mergeFragment2.platformColor(str));
            view.setBackground(gradientDrawable);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) (mergeFragment2.getDp() * f2), (int) (mergeFragment2.getDp() * f2));
            layoutParams.setMarginEnd((int) (f2 * mergeFragment2.getDp()));
            view.setLayoutParams(layoutParams);
            LinearLayout linearLayout2 = new LinearLayout(parent.getContext());
            linearLayout2.setOrientation(1);
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            TextView textView = new TextView(parent.getContext());
            MergeFragment mergeFragment3 = this.this$0;
            textView.setTextSize(14.0f);
            textView.setMaxLines(1);
            textView.setTextColor(mergeFragment3.color(R.color.text_primary));
            textView.setTypeface(null, 1);
            TextView textView2 = new TextView(parent.getContext());
            MergeFragment mergeFragment4 = this.this$0;
            textView2.setTextSize(11.0f);
            textView2.setTextColor(mergeFragment4.color(R.color.text_secondary));
            linearLayout2.addView(textView);
            linearLayout2.addView(textView2);
            TextView textView3 = new TextView(parent.getContext());
            MergeFragment mergeFragment5 = this.this$0;
            textView3.setTextSize(20.0f);
            textView3.setTextColor(mergeFragment5.color(R.color.primary));
            linearLayout.addView(view);
            linearLayout.addView(linearLayout2);
            linearLayout.addView(textView3);
            return new VH(this, linearLayout, view, textView, textView2, textView3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(VH holder, final int position) {
            String str;
            CharSequence charSequence;
            MergeFragment mergeFragment;
            int i;
            Intrinsics.checkNotNullParameter(holder, "holder");
            ActivityRecord activityRecord = this.records.get(position);
            long parseTs = parseTs(activityRecord.getStartTime());
            holder.getTvTitle().setText(((activityRecord.getSource() == DataSource.CODOON && Intrinsics.areEqual(activityRecord.getExtra(), "room")) ? "🏠" : "") + (StringsKt.isBlank(activityRecord.getTitle()) ? "未命名运动" : activityRecord.getTitle()));
            String format = parseTs > 0 ? this.dayFmt.format(new Date(parseTs)) : StringsKt.take(activityRecord.getStartTime(), 10);
            String str2 = "--:--";
            String format2 = parseTs > 0 ? this.fmt.format(new Date(parseTs)) : "--:--";
            if (activityRecord.getDuration() > 0) {
                str2 = this.this$0.formatDuration(activityRecord.getDuration());
            }
            if (activityRecord.getDistance() > Degrees.MIN_VALUE) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                str = String.format(Locale.US, "%.2f km", Arrays.copyOf(new Object[]{Double.valueOf(activityRecord.getDistance())}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            } else {
                str = "--";
            }
            holder.getTvMeta().setText(format + " " + format2 + " · " + str + " · " + str2);
            boolean contains = this.this$0.selectedIndexes.contains(Integer.valueOf(position));
            boolean z = this.this$0.rangeMode && position == this.this$0.rangeAnchor;
            TextView tvCheck = holder.getTvCheck();
            if (!z) {
                if (contains) {
                }
            }
            tvCheck.setText(charSequence);
            TextView tvCheck2 = holder.getTvCheck();
            if (contains || z) {
                mergeFragment = this.this$0;
                i = R.color.primary;
            } else {
                mergeFragment = this.this$0;
                i = R.color.text_secondary;
            }
            tvCheck2.setTextColor(mergeFragment.color(i));
            holder.getRoot().setBackground(itemBg(contains, z));
            LinearLayout root = holder.getRoot();
            final MergeFragment mergeFragment2 = this.this$0;
            root.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.MergeFragment$MergeAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MergeFragment.access$onItemClick(MergeFragment.this, position);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.records.size();
        }

        static /* synthetic */ GradientDrawable itemBg$default(MergeAdapter mergeAdapter, boolean z, boolean z2, int i, Object obj) {
            if ((i & 2) != 0) {
                z2 = false;
            }
            return mergeAdapter.itemBg(z, z2);
        }

        private final GradientDrawable itemBg(boolean selected, boolean isAnchor) {
            String str;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(14 * this.this$0.getDp());
            gradientDrawable.setColor((selected || isAnchor) ? -1379073 : -1);
            if (isAnchor) {
                gradientDrawable.setStroke((int) (2 * this.this$0.getDp()), -242686);
                return gradientDrawable;
            }
            if (selected) {
                int dp = (int) (2 * this.this$0.getDp());
                MergeFragment mergeFragment = this.this$0;
                DataSource dataSource = mergeFragment.source;
                if (dataSource == null || (str = dataSource.getShortName()) == null) {
                    str = "";
                }
                gradientDrawable.setStroke(dp, mergeFragment.platformColor(str));
                return gradientDrawable;
            }
            gradientDrawable.setStroke((int) (1 * this.this$0.getDp()), -1511692);
            return gradientDrawable;
        }
    }
}

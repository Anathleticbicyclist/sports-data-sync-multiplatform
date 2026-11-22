package com.jichi.ob.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.slider.Slider;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.jichi.ob.MainActivity;
import com.jichi.ob.R;
import com.jichi.ob.model.DataSource;
import com.jichi.ob.model.SyncTask;
import com.jichi.ob.model.UploadSupport;
import com.jichi.ob.util.PrefsManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: CreateTaskFragment.kt */
/* loaded from: classes.dex */
public final class CreateTaskFragment extends Fragment {
    private boolean autoSync;
    private MaterialButton btnNext;
    private MaterialButton btnPrev;
    private LinearLayout containerStep;
    private boolean force;
    private boolean multiSourceMode;
    private PrefsManager prefs;
    private int skip;
    private int step;
    private TextView tvStep1;
    private TextView tvStep2;
    private TextView tvStep3;
    private TextView tvTitle;
    private boolean wellness;
    private int workoutHistoryDays;
    private boolean workoutMode;
    private final LinkedHashSet<DataSource> selectedSources = new LinkedHashSet<>();
    private final LinkedHashSet<DataSource> selectedTargets = new LinkedHashSet<>();
    private String taskName = "";
    private boolean incremental = true;
    private int count = 200;
    private boolean coordinateConvert = true;
    private int autoIntervalSec = TypedValues.Custom.TYPE_INT;
    private int workoutFutureDays = 7;
    private int wellnessDays = 7;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean renderStep1$lambda$26(DataSource it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean renderStep1$lambda$31(DataSource it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep2$lambda$wellnessDays(CreateTaskFragment createTaskFragment, int i) {
        createTaskFragment.wellnessDays = i;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderStep2$lambda$wellnessToggle(final CreateTaskFragment createTaskFragment, final CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        createTaskFragment.wellness = z;
        if (!z) {
            compoundButton.setText("💓 同步健康数据（步数/睡眠/HRV/压力）");
            return;
        }
        final EditText editText = new EditText(createTaskFragment.requireContext());
        editText.setInputType(2);
        editText.setHint("输入天数");
        editText.setText(String.valueOf(createTaskFragment.wellnessDays));
        new AlertDialog.Builder(createTaskFragment.requireContext()).setTitle("健康数据同步天数").setMessage("首次同步最近 N 天，之后自动增量").setView(editText).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda27
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CreateTaskFragment.wellnessDaysConfirm(CreateTaskFragment.this, editText, compoundButton, dialogInterface, i);
            }
        }).setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda28
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CreateTaskFragment.wellnessDaysCancel(compoundButton, createTaskFragment, dialogInterface, i);
            }
        }).show();
    }

    public static /* synthetic */ void wellnessDaysCancel(CompoundButton compoundButton, CreateTaskFragment createTaskFragment, DialogInterface dialogInterface, int i) {
        compoundButton.setOnCheckedChangeListener(null);
        compoundButton.setChecked(false);
        createTaskFragment.wellness = false;
        compoundButton.setOnCheckedChangeListener(new CreateTaskFragment$$ExternalSyntheticLambda25(createTaskFragment));
    }

    public static /* synthetic */ void wellnessDaysConfirm(CreateTaskFragment createTaskFragment, EditText editText, CompoundButton compoundButton, DialogInterface dialogInterface, int i) {
        Integer intOrNull = StringsKt.toIntOrNull(editText.getText().toString());
        int coerceIn = RangesKt.coerceIn(intOrNull != null ? intOrNull.intValue() : 7, 1, 365);
        createTaskFragment.wellnessDays = coerceIn;
        compoundButton.setText("同步健康数据（最近 " + coerceIn + " 天）");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_create_task, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        this.prefs = new PrefsManager(requireContext);
        View findViewById = view.findViewById(R.id.containerStep);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.containerStep = (LinearLayout) findViewById;
        View findViewById2 = view.findViewById(R.id.tvTitle);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.tvTitle = (TextView) findViewById2;
        View findViewById3 = view.findViewById(R.id.tvStep1);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        this.tvStep1 = (TextView) findViewById3;
        View findViewById4 = view.findViewById(R.id.tvStep2);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
        this.tvStep2 = (TextView) findViewById4;
        View findViewById5 = view.findViewById(R.id.tvStep3);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(...)");
        this.tvStep3 = (TextView) findViewById5;
        View findViewById6 = view.findViewById(R.id.btnPrev);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(...)");
        this.btnPrev = (MaterialButton) findViewById6;
        View findViewById7 = view.findViewById(R.id.btnNext);
        Intrinsics.checkNotNullExpressionValue(findViewById7, "findViewById(...)");
        this.btnNext = (MaterialButton) findViewById7;
        ((TextView) view.findViewById(R.id.tvBack)).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CreateTaskFragment.onViewCreated$lambda$0(CreateTaskFragment.this, view2);
            }
        });
        MaterialButton materialButton = this.btnPrev;
        MaterialButton materialButton2 = null;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnPrev");
            materialButton = null;
        }
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CreateTaskFragment.onViewCreated$lambda$1(CreateTaskFragment.this, view2);
            }
        });
        MaterialButton materialButton3 = this.btnNext;
        if (materialButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnNext");
        } else {
            materialButton2 = materialButton3;
        }
        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CreateTaskFragment.this.onNext();
            }
        });
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(CreateTaskFragment createTaskFragment, View view) {
        FragmentActivity activity = createTaskFragment.getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null) {
            mainActivity.closeCreateTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(CreateTaskFragment createTaskFragment, View view) {
        int i = createTaskFragment.step;
        if (i > 0) {
            createTaskFragment.step = i - 1;
            createTaskFragment.render();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onNext() {
        int i = this.step;
        if (i != 0) {
            if (i != 1) {
                return;
            }
            saveTask();
            return;
        }
        if (this.selectedSources.isEmpty()) {
            Toast.makeText(requireContext(), "请至少选择一个来源平台", 0).show();
            return;
        }
        if (this.selectedTargets.isEmpty()) {
            Toast.makeText(requireContext(), "请至少选择一个目标平台", 0).show();
            return;
        }
        if (this.multiSourceMode && this.selectedTargets.size() > 1) {
            Toast.makeText(requireContext(), "多对一模式：目标只能选 1 个", 0).show();
            return;
        }
        if (!this.multiSourceMode && this.selectedSources.size() > 1) {
            Toast.makeText(requireContext(), "一对多模式：来源只能选 1 个", 0).show();
            return;
        }
        LinkedHashSet<DataSource> linkedHashSet = this.selectedSources;
        if (!(linkedHashSet instanceof Collection) || !linkedHashSet.isEmpty()) {
            Iterator<T> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                if (this.selectedTargets.contains((DataSource) it.next())) {
                    Toast.makeText(requireContext(), "来源与目标不能是同一平台", 0).show();
                    return;
                }
            }
        }
        this.step = 1;
        render();
    }

    private final void saveTask() {
        String obj;
        int i;
        ArrayList emptyList;
        if (this.selectedSources.isEmpty() || this.selectedTargets.isEmpty()) {
            return;
        }
        if (StringsKt.isBlank(this.taskName)) {
            obj = ((DataSource) CollectionsKt.first(this.selectedSources)).getDisplayName() + " → " + ((DataSource) CollectionsKt.first(this.selectedTargets)).getDisplayName();
        } else {
            obj = StringsKt.trim((CharSequence) this.taskName).toString();
        }
        String str = obj;
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        LinkedHashSet<DataSource> linkedHashSet = this.selectedSources;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(linkedHashSet, 10));
        Iterator<T> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((DataSource) it.next()).getShortName());
        }
        ArrayList arrayList2 = arrayList;
        LinkedHashSet<DataSource> linkedHashSet2 = this.selectedTargets;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(linkedHashSet2, 10));
        Iterator<T> it2 = linkedHashSet2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((DataSource) it2.next()).getShortName());
        }
        ArrayList arrayList4 = arrayList3;
        int i2 = this.count;
        int i3 = this.skip;
        boolean z = this.incremental;
        boolean z2 = this.force;
        boolean z3 = this.coordinateConvert;
        boolean z4 = this.autoSync;
        int i4 = this.autoIntervalSec;
        int i5 = this.workoutHistoryDays;
        int i6 = this.workoutFutureDays;
        if (!this.workoutMode) {
            i = i5;
            emptyList = CollectionsKt.emptyList();
        } else {
            LinkedHashSet<DataSource> linkedHashSet3 = this.selectedTargets;
            i = i5;
            ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(linkedHashSet3, 10));
            Iterator<T> it3 = linkedHashSet3.iterator();
            while (it3.hasNext()) {
                arrayList5.add(((DataSource) it3.next()).getShortName());
            }
            emptyList = arrayList5;
        }
        SyncTask syncTask = new SyncTask(uuid, str, arrayList2, arrayList4, i2, i3, z, z2, z3, z4, i4, this.wellness, this.wellnessDays, false, null, i, i6, emptyList, true, 0L, 0, 0, 0, null, null, 33054720, null);
        PrefsManager prefsManager = this.prefs;
        if (prefsManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            prefsManager = null;
        }
        prefsManager.upsertTask(syncTask);
        Toast.makeText(requireContext(), "任务「" + str + "」已创建", 0).show();
        FragmentActivity activity = getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null) {
            mainActivity.closeCreateTask();
            mainActivity.refreshTaskUi$app_devRelease();
        }
    }

    private final void render() {
        LinearLayout linearLayout = this.containerStep;
        TextView textView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
            linearLayout = null;
        }
        linearLayout.removeAllViews();
        int i = this.step;
        if (i == 0) {
            renderStep1();
        } else if (i == 1) {
            renderStep2();
        }
        TextView textView2 = this.tvStep1;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvStep1");
            textView2 = null;
        }
        textView2.setTextColor(requireContext().getColor(this.step == 0 ? R.color.primary : R.color.green));
        TextView textView3 = this.tvStep2;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvStep2");
            textView3 = null;
        }
        textView3.setTextColor(requireContext().getColor(this.step == 1 ? R.color.primary : R.color.text_secondary));
        TextView textView4 = this.tvStep3;
        if (textView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvStep3");
            textView4 = null;
        }
        textView4.setVisibility(8);
        MaterialButton materialButton = this.btnPrev;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnPrev");
            materialButton = null;
        }
        materialButton.setEnabled(this.step > 0);
        MaterialButton materialButton2 = this.btnPrev;
        if (materialButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnPrev");
            materialButton2 = null;
        }
        materialButton2.setAlpha(this.step > 0 ? 1.0f : 0.4f);
        MaterialButton materialButton3 = this.btnNext;
        if (materialButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnNext");
            materialButton3 = null;
        }
        materialButton3.setText(this.step == 1 ? "保存任务" : "下一步");
        TextView textView5 = this.tvTitle;
        if (textView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTitle");
        } else {
            textView = textView5;
        }
        textView.setText(this.step == 0 ? "选择同步平台" : "任务参数");
    }

    private final void renderPlatformGrid(List<? extends DataSource> platforms, LinkedHashSet<DataSource> selected, Function1<? super DataSource, Boolean> canSelect, Function1<? super DataSource, Unit> onToggle) {
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, platforms.size() - 1, 4);
        if (progressionLastElement < 0) {
            return;
        }
        int i = 0;
        while (true) {
            LinearLayout linearLayout = new LinearLayout(requireContext());
            linearLayout.setOrientation(0);
            int i2 = i + 4;
            for (DataSource dataSource : platforms.subList(i, Math.min(i2, platforms.size()))) {
                MaterialCardView platformChip = platformChip(dataSource, selected.contains(dataSource), canSelect.invoke(dataSource).booleanValue(), onToggle);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, dpInt(52.0f), 1.0f);
                layoutParams.setMarginStart(dpInt(2.0f));
                layoutParams.setMarginEnd(dpInt(2.0f));
                layoutParams.topMargin = dpInt(2.0f);
                layoutParams.bottomMargin = dpInt(2.0f);
                Unit unit = Unit.INSTANCE;
                linearLayout.addView(platformChip, layoutParams);
            }
            LinearLayout linearLayout2 = this.containerStep;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout2 = null;
            }
            linearLayout2.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
            if (i == progressionLastElement) {
                return;
            } else {
                i = i2;
            }
        }
    }

    private final MaterialCardView platformChip(final DataSource ds, boolean isSelected, final boolean selectable, final Function1<? super DataSource, Unit> onToggle) {
        int i;
        int color;
        MaterialCardView materialCardView = new MaterialCardView(requireContext());
        materialCardView.setRadius(dpInt(10.0f));
        materialCardView.setElevation(0.0f);
        materialCardView.setStrokeWidth(dpInt(1.0f));
        Context requireContext = requireContext();
        if (!selectable) {
            i = R.color.text_secondary;
        } else if (isSelected) {
            i = R.color.primary;
        } else {
            i = R.color.text_secondary;
        }
        materialCardView.setStrokeColor(requireContext.getColor(i));
        if (!selectable) {
            color = requireContext().getColor(R.color.bg_light);
        } else {
            color = isSelected ? requireContext().getColor(R.color.primary_light) : -1;
        }
        materialCardView.setCardBackgroundColor(color);
        materialCardView.setClickable(selectable);
        materialCardView.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateTaskFragment.platformChip$lambda$11$lambda$10(selectable, onToggle, ds, view);
            }
        });
        TextView textView = new TextView(requireContext());
        textView.setText(ds.getDisplayName() + (!selectable ? " ·未登录" : ""));
        textView.setTextSize(11.0f);
        textView.setGravity(17);
        textView.setTextColor(requireContext().getColor((selectable && isSelected) ? R.color.primary : R.color.text_secondary));
        textView.setMaxLines(1);
        materialCardView.addView(textView);
        return materialCardView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void platformChip$lambda$11$lambda$10(boolean z, Function1 function1, DataSource dataSource, View view) {
        if (z) {
            function1.invoke(dataSource);
        }
    }

    private final void renderModeSwitch() {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(0);
        linearLayout.setPadding(0, dpInt(4.0f), 0, dpInt(8.0f));
        LinearLayout makeModeChip = makeModeChip("一对多模式", "1来源→多目标", !this.multiSourceMode, new Function0() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit renderModeSwitch$lambda$14;
                renderModeSwitch$lambda$14 = CreateTaskFragment.renderModeSwitch$lambda$14(CreateTaskFragment.this);
                return renderModeSwitch$lambda$14;
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(0, 0, dpInt(5.0f), 0);
        Unit unit = Unit.INSTANCE;
        linearLayout.addView(makeModeChip, layoutParams);
        LinearLayout makeModeChip2 = makeModeChip("多对一模式", "多来源→1目标", this.multiSourceMode, new Function0() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit renderModeSwitch$lambda$16;
                renderModeSwitch$lambda$16 = CreateTaskFragment.renderModeSwitch$lambda$16(CreateTaskFragment.this);
                return renderModeSwitch$lambda$16;
            }
        });
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams2.setMargins(dpInt(5.0f), 0, 0, 0);
        Unit unit2 = Unit.INSTANCE;
        linearLayout.addView(makeModeChip2, layoutParams2);
        LinearLayout linearLayout2 = this.containerStep;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
            linearLayout2 = null;
        }
        linearLayout2.addView(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderModeSwitch$lambda$14(CreateTaskFragment createTaskFragment) {
        createTaskFragment.switchMode(false);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderModeSwitch$lambda$16(CreateTaskFragment createTaskFragment) {
        createTaskFragment.switchMode(true);
        return Unit.INSTANCE;
    }

    private final LinearLayout makeModeChip(String title, String sub, boolean selected, final Function0<Unit> onClick) {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setPadding(dpInt(2.0f), dpInt(12.0f), dpInt(2.0f), dpInt(12.0f));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(dpInt(12.0f));
        gradientDrawable.setColor(Color.parseColor(selected ? "#2B8CFF" : "#EEF2F7"));
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setClickable(true);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Function0.this.invoke();
            }
        });
        TextView textView = new TextView(requireContext());
        textView.setText(title);
        textView.setTextSize(13.0f);
        textView.setTypeface(null, 1);
        textView.setTextColor(selected ? -1 : Color.parseColor("#1F2937"));
        textView.setMaxLines(1);
        linearLayout.addView(textView);
        TextView textView2 = new TextView(requireContext());
        textView2.setText(sub);
        textView2.setTextSize(10.0f);
        textView2.setTextColor(Color.parseColor(selected ? "#E3EEFA" : "#6B7280"));
        textView2.setPadding(0, dpInt(2.0f), 0, 0);
        textView2.setMaxLines(1);
        linearLayout.addView(textView2);
        return linearLayout;
    }

    private final void rerenderKeepScroll() {
        View view = getView();
        final ScrollView scrollView = view != null ? (ScrollView) view.findViewById(R.id.scrollStep) : null;
        final int scrollY = scrollView != null ? scrollView.getScrollY() : 0;
        render();
        if (scrollView != null) {
            scrollView.post(new Runnable() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    scrollView.scrollTo(0, scrollY);
                }
            });
        }
    }

    private final void switchMode(boolean multi) {
        if (this.multiSourceMode == multi) {
            return;
        }
        this.multiSourceMode = multi;
        this.selectedSources.clear();
        this.selectedTargets.clear();
        this.step = 0;
        render();
    }

    private final TextView sectionTitle(String text) {
        TextView textView = new TextView(requireContext());
        textView.setText(text);
        textView.setTextSize(14.0f);
        textView.setTypeface(null, 1);
        textView.setTextColor(requireContext().getColor(R.color.text_primary));
        textView.setPadding(0, dpInt(10.0f), 0, dpInt(2.0f));
        return textView;
    }

    private final void renderStep1() {
        boolean z;
        ArrayList arrayList;
        String joinToString$default;
        renderModeSwitch();
        LinearLayout linearLayout = this.containerStep;
        LinearLayout linearLayout2 = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
            linearLayout = null;
        }
        linearLayout.addView(sectionTitle("同步来源（" + (this.multiSourceMode ? "可多选" : "单选") + "）"));
        List<DataSource> sourcePlatforms = DataSource.Companion.sourcePlatforms();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : sourcePlatforms) {
            DataSource dataSource = (DataSource) obj;
            PrefsManager prefsManager = this.prefs;
            if (prefsManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefs");
                prefsManager = null;
            }
            if (prefsManager.isLoggedIn(dataSource) && !this.selectedTargets.contains(dataSource)) {
                arrayList2.add(obj);
            }
        }
        renderPlatformGrid(arrayList2, this.selectedSources, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                boolean renderStep1$lambda$26;
                renderStep1$lambda$26 = CreateTaskFragment.renderStep1$lambda$26((DataSource) obj2);
                return Boolean.valueOf(renderStep1$lambda$26);
            }
        }, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                Unit renderStep1$lambda$27;
                renderStep1$lambda$27 = CreateTaskFragment.renderStep1$lambda$27(CreateTaskFragment.this, (DataSource) obj2);
                return renderStep1$lambda$27;
            }
        });
        LinkedHashSet<DataSource> linkedHashSet = this.selectedSources;
        if (!(linkedHashSet instanceof Collection) || !linkedHashSet.isEmpty()) {
            Iterator<T> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                if (((DataSource) it.next()) == DataSource.INTERVALS_ICU) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        LinearLayout linearLayout3 = this.containerStep;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
            linearLayout3 = null;
        }
        linearLayout3.addView(sectionTitle(this.workoutMode ? "课表目标（可多选）" : "同步目标（" + (this.multiSourceMode ? "单选" : "可多选") + "）"));
        if (this.workoutMode) {
            List listOf = CollectionsKt.listOf((Object[]) new DataSource[]{DataSource.IGPSPORT, DataSource.IGPSPORT_INT, DataSource.BRYTON});
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : listOf) {
                DataSource dataSource2 = (DataSource) obj2;
                if (!this.selectedSources.contains(dataSource2)) {
                    PrefsManager prefsManager2 = this.prefs;
                    if (prefsManager2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("prefs");
                        prefsManager2 = null;
                    }
                    if (prefsManager2.isLoggedIn(dataSource2)) {
                        arrayList3.add(obj2);
                    }
                }
            }
            arrayList = arrayList3;
        } else {
            EnumEntries<DataSource> entries = DataSource.getEntries();
            ArrayList arrayList4 = new ArrayList();
            for (Object obj3 : entries) {
                DataSource dataSource3 = (DataSource) obj3;
                if (!this.selectedSources.contains(dataSource3) && (UploadSupport.Companion.fromDataSource(dataSource3).getAvailable() || dataSource3 == DataSource.KEEP)) {
                    if (dataSource3 != DataSource.KEEP) {
                        if (dataSource3 != DataSource.BRYTON) {
                            PrefsManager prefsManager3 = this.prefs;
                            if (prefsManager3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("prefs");
                                prefsManager3 = null;
                            }
                            if (prefsManager3.isLoggedIn(dataSource3)) {
                            }
                        }
                    }
                    arrayList4.add(obj3);
                }
            }
            arrayList = arrayList4;
        }
        renderPlatformGrid(arrayList, this.selectedTargets, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj4) {
                boolean renderStep1$lambda$31;
                renderStep1$lambda$31 = CreateTaskFragment.renderStep1$lambda$31((DataSource) obj4);
                return Boolean.valueOf(renderStep1$lambda$31);
            }
        }, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj4) {
                Unit renderStep1$lambda$32;
                renderStep1$lambda$32 = CreateTaskFragment.renderStep1$lambda$32(CreateTaskFragment.this, (DataSource) obj4);
                return renderStep1$lambda$32;
            }
        });
        String str = "未选择";
        if (this.selectedSources.isEmpty()) {
            joinToString$default = "未选择";
        } else {
            LinkedHashSet<DataSource> linkedHashSet2 = this.selectedSources;
            ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(linkedHashSet2, 10));
            Iterator<T> it2 = linkedHashSet2.iterator();
            while (it2.hasNext()) {
                arrayList5.add(((DataSource) it2.next()).getDisplayName());
            }
            joinToString$default = CollectionsKt.joinToString$default(arrayList5, "、", null, null, 0, null, null, 62, null);
        }
        if (!this.selectedTargets.isEmpty()) {
            LinkedHashSet<DataSource> linkedHashSet3 = this.selectedTargets;
            ArrayList arrayList6 = new ArrayList(CollectionsKt.collectionSizeOrDefault(linkedHashSet3, 10));
            Iterator<T> it3 = linkedHashSet3.iterator();
            while (it3.hasNext()) {
                arrayList6.add(((DataSource) it3.next()).getDisplayName());
            }
            str = CollectionsKt.joinToString$default(arrayList6, "、", null, null, 0, null, null, 62, null);
        }
        LinearLayout linearLayout4 = this.containerStep;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
            linearLayout4 = null;
        }
        linearLayout4.addView(sectionHint("已选：" + joinToString$default + "  →  " + str));
        if (z) {
            SwitchMaterial switchMaterial = new SwitchMaterial(requireContext());
            switchMaterial.setText("📅 纯课表同步模式（只同步课表，不同步运动记录）");
            switchMaterial.setTextOn("开");
            switchMaterial.setTextOff("关");
            switchMaterial.setChecked(this.workoutMode);
            switchMaterial.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda22
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                    CreateTaskFragment.renderStep1$lambda$37$lambda$36(CreateTaskFragment.this, compoundButton, z2);
                }
            });
            LinearLayout linearLayout5 = this.containerStep;
            if (linearLayout5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout5 = null;
            }
            FrameLayout frameLayout = new FrameLayout(requireContext());
            frameLayout.setPadding(dpInt(8.0f), dpInt(8.0f), dpInt(8.0f), dpInt(8.0f));
            frameLayout.addView(switchMaterial);
            linearLayout5.addView(frameLayout);
        }
        if (this.selectedSources.contains(DataSource.MAGENE)) {
            LinearLayout linearLayout6 = this.containerStep;
            if (linearLayout6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
            } else {
                linearLayout2 = linearLayout6;
            }
            linearLayout2.addView(sectionHint("⚙️ 迈金 FIT 为 GCJ-02 坐标，下一步可开启「坐标转换」"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep1$lambda$27(CreateTaskFragment createTaskFragment, DataSource ds) {
        Intrinsics.checkNotNullParameter(ds, "ds");
        if (createTaskFragment.multiSourceMode) {
            if (!createTaskFragment.selectedSources.add(ds)) {
                createTaskFragment.selectedSources.remove(ds);
            }
        } else if (createTaskFragment.selectedSources.contains(ds)) {
            createTaskFragment.selectedSources.clear();
        } else {
            createTaskFragment.selectedSources.clear();
            createTaskFragment.selectedSources.add(ds);
        }
        createTaskFragment.rerenderKeepScroll();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep1$lambda$32(CreateTaskFragment createTaskFragment, DataSource ds) {
        Intrinsics.checkNotNullParameter(ds, "ds");
        if (createTaskFragment.multiSourceMode) {
            if (createTaskFragment.selectedTargets.contains(ds)) {
                createTaskFragment.selectedTargets.clear();
            } else {
                createTaskFragment.selectedTargets.clear();
                createTaskFragment.selectedTargets.add(ds);
            }
        } else if (!createTaskFragment.selectedTargets.add(ds)) {
            createTaskFragment.selectedTargets.remove(ds);
        }
        createTaskFragment.rerenderKeepScroll();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderStep1$lambda$37$lambda$36(CreateTaskFragment createTaskFragment, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        createTaskFragment.workoutMode = z;
        if (z) {
            CollectionsKt.removeAll(createTaskFragment.selectedTargets, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean renderStep1$lambda$37$lambda$36$lambda$35;
                    renderStep1$lambda$37$lambda$36$lambda$35 = CreateTaskFragment.renderStep1$lambda$37$lambda$36$lambda$35((DataSource) obj);
                    return Boolean.valueOf(renderStep1$lambda$37$lambda$36$lambda$35);
                }
            });
        }
        createTaskFragment.rerenderKeepScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean renderStep1$lambda$37$lambda$36$lambda$35(DataSource it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (it == DataSource.IGPSPORT || it == DataSource.IGPSPORT_INT || it == DataSource.BRYTON) ? false : true;
    }

    private final void renderStep2() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        LinearLayout linearLayout3;
        LinearLayout linearLayout4;
        LinearLayout linearLayout5;
        LinearLayout linearLayout6;
        String str = this.workoutMode ? "课表同步" : "运动记录同步";
        LinearLayout linearLayout7 = this.containerStep;
        LinearLayout linearLayout8 = null;
        if (linearLayout7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
            linearLayout7 = null;
        }
        LinkedHashSet<DataSource> linkedHashSet = this.selectedSources;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(linkedHashSet, 10));
        Iterator<T> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((DataSource) it.next()).getDisplayName());
        }
        String joinToString$default = CollectionsKt.joinToString$default(arrayList, "、", null, null, 0, null, null, 62, null);
        LinkedHashSet<DataSource> linkedHashSet2 = this.selectedTargets;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(linkedHashSet2, 10));
        Iterator<T> it2 = linkedHashSet2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((DataSource) it2.next()).getDisplayName());
        }
        linearLayout7.addView(sectionTitle(str + " 参数（来源：" + joinToString$default + " → 目标：" + CollectionsKt.joinToString$default(arrayList2, "、", null, null, 0, null, null, 62, null) + "）"));
        LinearLayout linearLayout9 = new LinearLayout(requireContext());
        linearLayout9.setOrientation(0);
        linearLayout9.setGravity(16);
        linearLayout9.setPadding(0, dpInt(6.0f), 0, dpInt(2.0f));
        TextView textView = new TextView(requireContext());
        textView.setText("任务名");
        textView.setTextSize(13.0f);
        textView.setTextColor(requireContext().getColor(R.color.text_primary));
        linearLayout9.addView(textView, new LinearLayout.LayoutParams(dpInt(64.0f), -2));
        EditText editText = new EditText(requireContext());
        editText.setHint(this.workoutMode ? "如：ICU课表推送到iGPSPORT" : "如：晨骑同步到佳明");
        editText.setText(this.taskName);
        editText.setTextSize(13.0f);
        editText.setBackgroundResource(R.drawable.input_box_bg);
        editText.setPadding(dpInt(8.0f), dpInt(6.0f), dpInt(8.0f), dpInt(6.0f));
        linearLayout9.addView(editText, new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout linearLayout10 = this.containerStep;
        if (linearLayout10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
            linearLayout10 = null;
        }
        linearLayout10.addView(linearLayout9);
        editText.addTextChangedListener(new TextWatcher() { // from class: com.jichi.ob.ui.CreateTaskFragment$renderStep2$4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int a, int b, int c) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                String str2;
                CreateTaskFragment createTaskFragment = CreateTaskFragment.this;
                if (s == null || (str2 = s.toString()) == null) {
                    str2 = "";
                }
                createTaskFragment.taskName = str2;
            }
        });
        if (this.workoutMode) {
            LinearLayout linearLayout11 = this.containerStep;
            if (linearLayout11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout5 = null;
            } else {
                linearLayout5 = linearLayout11;
            }
            linearLayout5.addView(paramSliderRow("课表历史天数", this.workoutHistoryDays, 0, 90, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit renderStep2$lambda$44;
                    renderStep2$lambda$44 = CreateTaskFragment.renderStep2$lambda$44(CreateTaskFragment.this, ((Integer) obj).intValue());
                    return renderStep2$lambda$44;
                }
            }));
            LinearLayout linearLayout12 = this.containerStep;
            if (linearLayout12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout6 = null;
            } else {
                linearLayout6 = linearLayout12;
            }
            linearLayout6.addView(paramSliderRow("课表未来天数", this.workoutFutureDays, 1, 90, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit renderStep2$lambda$45;
                    renderStep2$lambda$45 = CreateTaskFragment.renderStep2$lambda$45(CreateTaskFragment.this, ((Integer) obj).intValue());
                    return renderStep2$lambda$45;
                }
            }));
            LinearLayout linearLayout13 = this.containerStep;
            if (linearLayout13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout13 = null;
            }
            linearLayout13.addView(sectionHint("默认未来7天；设历史天数可同步过去N天的课表；重复课表自动跳过"));
        } else {
            LinearLayout linearLayout14 = this.containerStep;
            if (linearLayout14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout14 = null;
            }
            SwitchMaterial switchMaterial = new SwitchMaterial(requireContext());
            switchMaterial.setText("仅同步最新数据（缓存库中不存在的记录）");
            switchMaterial.setTextSize(13.0f);
            switchMaterial.setChecked(this.incremental);
            switchMaterial.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    CreateTaskFragment.renderStep2$lambda$47$lambda$46(CreateTaskFragment.this, compoundButton, z);
                }
            });
            linearLayout14.addView(switchMaterial);
            if (this.selectedSources.contains(DataSource.MAGENE)) {
                LinearLayout linearLayout15 = this.containerStep;
                if (linearLayout15 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                    linearLayout15 = null;
                }
                SwitchMaterial switchMaterial2 = new SwitchMaterial(requireContext());
                switchMaterial2.setText("迈金坐标转换（GCJ-02 → WGS84）");
                switchMaterial2.setTextSize(13.0f);
                switchMaterial2.setChecked(this.coordinateConvert);
                switchMaterial2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda4
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        CreateTaskFragment.renderStep2$lambda$49$lambda$48(CreateTaskFragment.this, compoundButton, z);
                    }
                });
                linearLayout15.addView(switchMaterial2);
                LinearLayout linearLayout16 = this.containerStep;
                if (linearLayout16 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                    linearLayout16 = null;
                }
                linearLayout16.addView(sectionHint("迈金 FIT 坐标为 GCJ-02（高德系），建议开启转为 WGS-84 后上传国际平台"));
            }
            if ((this.selectedSources.contains(DataSource.GARMIN_COM) & this.selectedTargets.contains(DataSource.GARMIN_CN)) | (this.selectedSources.contains(DataSource.GARMIN_CN) & this.selectedTargets.contains(DataSource.GARMIN_COM))) {
                LinearLayout linearLayout17 = this.containerStep;
                if (linearLayout17 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                    linearLayout17 = null;
                }
                SwitchMaterial switchMaterial3 = new SwitchMaterial(requireContext());
                switchMaterial3.setText("💓 同步健康数据（步数/睡眠/HRV/压力）");
                switchMaterial3.setTextSize(13.0f);
                switchMaterial3.setChecked(this.wellness);
                switchMaterial3.setOnCheckedChangeListener(new CreateTaskFragment$$ExternalSyntheticLambda25(this));
                linearLayout17.addView(switchMaterial3);
                LinearLayout linearLayout18 = this.containerStep;
                if (linearLayout18 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                    linearLayout18 = null;
                }
                linearLayout18.addView(sectionHint("健康数据同步需佳明来源与佳明目标（如佳明中国↔佳明国际）；目标账号需已绑定健康设备（手表/手环）"));
            }
            LinearLayout linearLayout19 = this.containerStep;
            if (linearLayout19 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout = null;
            } else {
                linearLayout = linearLayout19;
            }
            linearLayout.addView(paramSliderRow("同步数量", this.count, 1, 1000, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit renderStep2$lambda$50;
                    renderStep2$lambda$50 = CreateTaskFragment.renderStep2$lambda$50(CreateTaskFragment.this, ((Integer) obj).intValue());
                    return renderStep2$lambda$50;
                }
            }));
            LinearLayout linearLayout20 = this.containerStep;
            if (linearLayout20 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout2 = null;
            } else {
                linearLayout2 = linearLayout20;
            }
            linearLayout2.addView(paramSliderRow("跳过前N条", this.skip, 0, 10000, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit renderStep2$lambda$51;
                    renderStep2$lambda$51 = CreateTaskFragment.renderStep2$lambda$51(CreateTaskFragment.this, ((Integer) obj).intValue());
                    return renderStep2$lambda$51;
                }
            }));
            LinearLayout linearLayout21 = this.containerStep;
            if (linearLayout21 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout21 = null;
            }
            SwitchMaterial switchMaterial4 = new SwitchMaterial(requireContext());
            switchMaterial4.setText("忽略上传记忆，强制重传");
            switchMaterial4.setTextSize(13.0f);
            switchMaterial4.setChecked(this.force);
            switchMaterial4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda7
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    CreateTaskFragment.renderStep2$lambda$53$lambda$52(CreateTaskFragment.this, compoundButton, z);
                }
            });
            linearLayout21.addView(switchMaterial4);
            LinearLayout linearLayout22 = this.containerStep;
            if (linearLayout22 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                linearLayout22 = null;
            }
            linearLayout22.addView(sectionHint("💡 增量模式：依据记录中心缓存库，自动跳过已缓存的旧记录，只同步最新数据"));
            LinkedHashSet<DataSource> linkedHashSet3 = this.selectedSources;
            if (!(linkedHashSet3 instanceof Collection) || !linkedHashSet3.isEmpty()) {
                Iterator<T> it3 = linkedHashSet3.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (((DataSource) it3.next()) == DataSource.INTERVALS_ICU) {
                        LinearLayout linearLayout23 = this.containerStep;
                        if (linearLayout23 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                            linearLayout23 = null;
                        }
                        View view = new View(requireContext());
                        view.setPadding(0, dpInt(8.0f), 0, dpInt(4.0f));
                        view.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
                        view.setBackgroundColor(requireContext().getColor(R.color.divider));
                        linearLayout23.addView(view);
                        LinearLayout linearLayout24 = this.containerStep;
                        if (linearLayout24 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                            linearLayout24 = null;
                        }
                        linearLayout24.addView(sectionHint("📅 附带同步ICU课表（选了课表目标的平台才推课表）"));
                        LinearLayout linearLayout25 = this.containerStep;
                        if (linearLayout25 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                            linearLayout3 = null;
                        } else {
                            linearLayout3 = linearLayout25;
                        }
                        linearLayout3.addView(paramSliderRow("课表历史天数", this.workoutHistoryDays, 0, 90, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda8
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                Unit renderStep2$lambda$56;
                                renderStep2$lambda$56 = CreateTaskFragment.renderStep2$lambda$56(CreateTaskFragment.this, ((Integer) obj).intValue());
                                return renderStep2$lambda$56;
                            }
                        }));
                        LinearLayout linearLayout26 = this.containerStep;
                        if (linearLayout26 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
                            linearLayout4 = null;
                        } else {
                            linearLayout4 = linearLayout26;
                        }
                        linearLayout4.addView(paramSliderRow("课表未来天数", this.workoutFutureDays, 1, 90, new Function1() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda9
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                Unit renderStep2$lambda$57;
                                renderStep2$lambda$57 = CreateTaskFragment.renderStep2$lambda$57(CreateTaskFragment.this, ((Integer) obj).intValue());
                                return renderStep2$lambda$57;
                            }
                        }));
                    }
                }
            }
        }
        LinearLayout linearLayout27 = this.containerStep;
        if (linearLayout27 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerStep");
        } else {
            linearLayout8 = linearLayout27;
        }
        SwitchMaterial switchMaterial5 = new SwitchMaterial(requireContext());
        switchMaterial5.setText("自动同步（后台定时运行，需开启全局自动同步）");
        switchMaterial5.setTextSize(13.0f);
        switchMaterial5.setChecked(this.autoSync);
        switchMaterial5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda10
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CreateTaskFragment.renderStep2$lambda$59$lambda$58(CreateTaskFragment.this, compoundButton, z);
            }
        });
        linearLayout8.addView(switchMaterial5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep2$lambda$44(CreateTaskFragment createTaskFragment, int i) {
        createTaskFragment.workoutHistoryDays = i;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep2$lambda$45(CreateTaskFragment createTaskFragment, int i) {
        createTaskFragment.workoutFutureDays = i;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderStep2$lambda$47$lambda$46(CreateTaskFragment createTaskFragment, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        createTaskFragment.incremental = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderStep2$lambda$49$lambda$48(CreateTaskFragment createTaskFragment, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        createTaskFragment.coordinateConvert = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep2$lambda$50(CreateTaskFragment createTaskFragment, int i) {
        createTaskFragment.count = i;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep2$lambda$51(CreateTaskFragment createTaskFragment, int i) {
        createTaskFragment.skip = i;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderStep2$lambda$53$lambda$52(CreateTaskFragment createTaskFragment, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        createTaskFragment.force = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep2$lambda$56(CreateTaskFragment createTaskFragment, int i) {
        createTaskFragment.workoutHistoryDays = i;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit renderStep2$lambda$57(CreateTaskFragment createTaskFragment, int i) {
        createTaskFragment.workoutFutureDays = i;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderStep2$lambda$59$lambda$58(CreateTaskFragment createTaskFragment, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        createTaskFragment.autoSync = z;
    }

    private final LinearLayout paramSliderRow(String label, int initValue, int min, int max, final Function1<? super Integer, Unit> onChange) {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(0, dpInt(4.0f), 0, dpInt(2.0f));
        TextView textView = new TextView(requireContext());
        textView.setText(label);
        textView.setTextSize(13.0f);
        textView.setTextColor(requireContext().getColor(R.color.text_primary));
        linearLayout.addView(textView, new LinearLayout.LayoutParams(dpInt(90.0f), -2));
        Slider slider = new Slider(requireContext());
        slider.setValueFrom(min);
        slider.setValueTo(max);
        slider.setStepSize(1.0f);
        slider.setValue(initValue);
        final TextView textView2 = new TextView(requireContext());
        textView2.setText(String.valueOf(initValue));
        textView2.setTextSize(13.0f);
        textView2.setGravity(17);
        textView2.setTextColor(requireContext().getColor(R.color.primary));
        slider.addOnChangeListener(new Slider.OnChangeListener() { // from class: com.jichi.ob.ui.CreateTaskFragment$$ExternalSyntheticLambda15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.android.material.slider.Slider.OnChangeListener, com.google.android.material.slider.BaseOnChangeListener
            public final void onValueChange(Slider slider2, float f, boolean z) {
                CreateTaskFragment.paramSliderRow$lambda$64(textView2, onChange, slider2, f, z);
            }
        });
        linearLayout.addView(slider, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(textView2, new LinearLayout.LayoutParams(dpInt(44.0f), -2));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void paramSliderRow$lambda$64(TextView textView, Function1 function1, Slider slider, float f, boolean z) {
        Intrinsics.checkNotNullParameter(slider, "<unused var>");
        int i = (int) f;
        textView.setText(String.valueOf(i));
        function1.invoke(Integer.valueOf(i));
    }

    private final TextView sectionHint(String text) {
        TextView textView = new TextView(requireContext());
        textView.setText(text);
        textView.setTextSize(12.0f);
        textView.setTextColor(requireContext().getColor(R.color.text_secondary));
        textView.setPadding(0, dpInt(8.0f), 0, dpInt(8.0f));
        return textView;
    }

    private final int dpInt(float v) {
        return (int) (v * getResources().getDisplayMetrics().density);
    }
}

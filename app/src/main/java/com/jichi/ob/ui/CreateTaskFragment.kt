package com.jichi.ob.ui

import android.graphics.Color
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton
import com.google.android.material.card.MaterialCardView
import com.google.android.material.switchmaterial.SwitchMaterial
import com.jichi.ob.MainActivity
import com.jichi.ob.R
import com.jichi.ob.model.DataSource
import com.jichi.ob.model.SyncTask
import com.jichi.ob.model.UploadSupport
import com.jichi.ob.util.PrefsManager
import java.util.UUID

/**
 * v8.2.2: 新建同步任务——三步向导（来源 → 目标 → 参数）
 * 全屏覆盖页，可返回；完成后写入 PrefsManager 任务列表，同步页任务区即时显示。
 */
class CreateTaskFragment : Fragment() {

    private lateinit var prefs: PrefsManager
    private lateinit var containerStep: LinearLayout
    private lateinit var tvTitle: TextView
    private lateinit var tvStep1: TextView
    private lateinit var tvStep2: TextView
    private lateinit var tvStep3: TextView
    private lateinit var btnPrev: MaterialButton
    private lateinit var btnNext: MaterialButton

    private var step = 0
    private var multiSourceMode = false  // v8.2.3.3: 同步模式开关。false=一对多(1来源→多目标)；true=多对一(多来源→1目标)
    private val selectedSources = LinkedHashSet<DataSource>()
    private val selectedTargets = LinkedHashSet<DataSource>()
    private var taskName = ""
    private var incremental = true
    private var count = 200
    private var skip = 0
    private var force = false
    private var coordinateConvert = true  // v8.2.3.1: 迈金坐标转换任务级开关，默认开
    private var autoSync = false
    private var autoIntervalSec = 900

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_create_task, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        prefs = PrefsManager(requireContext())
        containerStep = view.findViewById(R.id.containerStep)
        tvTitle = view.findViewById(R.id.tvTitle)
        tvStep1 = view.findViewById(R.id.tvStep1)
        tvStep2 = view.findViewById(R.id.tvStep2)
        tvStep3 = view.findViewById(R.id.tvStep3)
        btnPrev = view.findViewById(R.id.btnPrev)
        btnNext = view.findViewById(R.id.btnNext)

        view.findViewById<TextView>(R.id.tvBack).setOnClickListener {
            (activity as? MainActivity)?.closeCreateTask()
        }
        btnPrev.setOnClickListener { if (step > 0) { step--; render() } }
        btnNext.setOnClickListener { onNext() }

        // v8.2.5: 新建多任务一律从第一页空白开始（移除上次保存的来源/目标预填——用户明确要求）
        render()
    }

    private fun onNext() {
        when (step) {
            0 -> {
                if (selectedSources.isEmpty()) { Toast.makeText(requireContext(), "请至少选择一个来源平台", Toast.LENGTH_SHORT).show(); return }
                if (selectedTargets.isEmpty()) { Toast.makeText(requireContext(), "请至少选择一个目标平台", Toast.LENGTH_SHORT).show(); return }
                if (multiSourceMode && selectedTargets.size > 1) { Toast.makeText(requireContext(), "多对一模式：目标只能选 1 个", Toast.LENGTH_SHORT).show(); return }
                if (!multiSourceMode && selectedSources.size > 1) { Toast.makeText(requireContext(), "一对多模式：来源只能选 1 个", Toast.LENGTH_SHORT).show(); return }
                // v8.2.3.8: 同平台互斥兜底
                if (selectedSources.any { selectedTargets.contains(it) }) {
                    Toast.makeText(requireContext(), "来源与目标不能是同一平台", Toast.LENGTH_SHORT).show(); return
                }
                step = 1; render()
            }
            1 -> saveTask()
        }
    }

    private fun saveTask() {
        if (selectedSources.isEmpty() || selectedTargets.isEmpty()) return
        val name = if (taskName.isBlank()) {
            val src = selectedSources.first().displayName
            val tgt = selectedTargets.first().displayName
            "$src → $tgt"
        } else taskName.trim()
        val task = SyncTask(
            id = UUID.randomUUID().toString(),
            name = name,
            sources = selectedSources.map { it.shortName },
            targets = selectedTargets.map { it.shortName },
            count = count,
            skip = skip,
            incremental = incremental,
            force = force,
            coordinateConvert = coordinateConvert,
            autoSync = autoSync,
            autoIntervalSec = autoIntervalSec,
            enabled = true
        )
        prefs.upsertTask(task)
        Toast.makeText(requireContext(), "任务「$name」已创建", Toast.LENGTH_SHORT).show()
        (activity as? MainActivity)?.let {
            it.closeCreateTask()
            it.refreshTaskUi()
        }
    }

    private fun render() {
        containerStep.removeAllViews()
        when (step) {
            0 -> renderStep1()  // 第一页：平台选择（来源+目标一屏）
            1 -> renderStep2()  // 第二页：任务参数
        }
        // 步骤指示样式（两页制：平台 → 参数）
        tvStep1.setTextColor(requireContext().getColor(if (step == 0) R.color.primary else R.color.green))
        tvStep2.setTextColor(requireContext().getColor(if (step == 1) R.color.primary else R.color.text_secondary))
        tvStep3.visibility = View.GONE
        btnPrev.isEnabled = step > 0
        btnPrev.alpha = if (step > 0) 1f else 0.4f
        btnNext.text = if (step == 1) "保存任务" else "下一步"
        tvTitle.text = if (step == 0) "选择同步平台" else "任务参数"
    }

    // ===== 平台选择网格（每行4个，LinearLayout 行式规避 GridLayout 陷阱）=====
    private fun renderPlatformGrid(
        platforms: List<DataSource>,
        selected: LinkedHashSet<DataSource>,
        canSelect: (DataSource) -> Boolean,
        onToggle: (DataSource) -> Unit
    ) {
        for (i in platforms.indices step 4) {
            val row = LinearLayout(requireContext()).apply { orientation = LinearLayout.HORIZONTAL }
            val chunk = platforms.subList(i, minOf(i + 4, platforms.size))
            for (ds in chunk) {
                val card = platformChip(ds, selected.contains(ds), canSelect(ds), onToggle)
                row.addView(card, LinearLayout.LayoutParams(0, dpInt(52f), 1f).apply {
                    marginStart = dpInt(2f); marginEnd = dpInt(2f); topMargin = dpInt(2f); bottomMargin = dpInt(2f)
                })
            }
            containerStep.addView(row, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT))
        }
    }

    private fun platformChip(
        ds: DataSource, isSelected: Boolean, selectable: Boolean,
        onToggle: (DataSource) -> Unit
    ): MaterialCardView {
        val card = MaterialCardView(requireContext()).apply {
            radius = dpInt(10f).toFloat()
            elevation = 0f
            strokeWidth = dpInt(1f)
            setStrokeColor(requireContext().getColor(
                when {
                    !selectable -> R.color.text_secondary
                    isSelected -> R.color.primary
                    else -> R.color.text_secondary
                }
            ))
            setCardBackgroundColor(
                when {
                    !selectable -> requireContext().getColor(R.color.bg_light)
                    isSelected -> requireContext().getColor(R.color.primary_light)
                    else -> android.graphics.Color.WHITE   // 颜色值直接传，不经过 getColor（否则当资源ID查崩）
                }
            )
            isClickable = selectable
            setOnClickListener { if (selectable) onToggle(ds) }
        }
        val tv = TextView(requireContext()).apply {
            text = ds.displayName + if (!selectable) " ·未登录" else ""
            textSize = 11f
            gravity = android.view.Gravity.CENTER
            setTextColor(requireContext().getColor(if (selectable && isSelected) R.color.primary else R.color.text_secondary))
            maxLines = 1
        }
        card.addView(tv)
        return card
    }

    // ===== 同步模式开关（v8.2.3.3，v8.2.3.4 修复字体溢出）=====
    // 一对多（默认）：1个来源 → 多个目标；多对一：多个来源 → 1个目标
    private fun renderModeSwitch() {
        val row = LinearLayout(requireContext()).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(0, dpInt(4f), 0, dpInt(8f))
        }
        row.addView(makeModeChip("一对多模式", "1来源→多目标", !multiSourceMode) { switchMode(false) },
            LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply {
                setMargins(0, 0, dpInt(5f), 0)
            })
        row.addView(makeModeChip("多对一模式", "多来源→1目标", multiSourceMode) { switchMode(true) },
            LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply {
                setMargins(dpInt(5f), 0, 0, 0)
            })
        containerStep.addView(row)
    }

    private fun makeModeChip(title: String, sub: String, selected: Boolean, onClick: () -> Unit): LinearLayout {
        return LinearLayout(requireContext()).apply {
            orientation = LinearLayout.VERTICAL
            gravity = android.view.Gravity.CENTER
            setPadding(dpInt(2f), dpInt(12f), dpInt(2f), dpInt(12f))
            background = android.graphics.drawable.GradientDrawable().apply {
                cornerRadius = dpInt(12f).toFloat()
                setColor(if (selected) Color.parseColor("#2B8CFF") else Color.parseColor("#EEF2F7"))
            }
            isClickable = true
            setOnClickListener { onClick() }
            addView(TextView(requireContext()).apply {
                text = title
                textSize = 13f
                setTypeface(null, android.graphics.Typeface.BOLD)
                setTextColor(if (selected) Color.WHITE else Color.parseColor("#1F2937"))
                maxLines = 1
            })
            addView(TextView(requireContext()).apply {
                text = sub
                textSize = 10f
                setTextColor(if (selected) Color.parseColor("#E3EEFA") else Color.parseColor("#6B7280"))
                setPadding(0, dpInt(2f), 0, 0)
                maxLines = 1
            })
        }
    }

    /** v8.2.3.6: 点选平台后重绘整页（先清空再重建，杜绝"盖楼"重复追加），并恢复滚动位置 */
    private fun rerenderKeepScroll() {
        val sv = view?.findViewById<android.widget.ScrollView>(R.id.scrollStep)
        val sy = sv?.scrollY ?: 0
        render()
        sv?.post { sv.scrollTo(0, sy) }
    }

    private fun switchMode(multi: Boolean) {
        if (multiSourceMode == multi) return
        multiSourceMode = multi
        selectedSources.clear()
        selectedTargets.clear()
        step = 0
        render()
    }

    /** 分区标题（来源区/目标区） */
    private fun sectionTitle(text: String): TextView = TextView(requireContext()).apply {
        this.text = text
        textSize = 14f
        setTypeface(null, android.graphics.Typeface.BOLD)
        setTextColor(requireContext().getColor(R.color.text_primary))
        setPadding(0, dpInt(10f), 0, dpInt(2f))
    }

    // ===== 第一页：选择同步平台（来源+目标一屏点选，不产生动态行）=====
    private fun renderStep1() {
        // 1. 同步模式开关
        renderModeSwitch()
        // 2. 来源区
        containerStep.addView(sectionTitle("同步来源（${if (multiSourceMode) "可多选" else "单选"}）"))
        // v8.2.3.8: 同平台互斥——来源区隐藏已选目标
        val srcPlatforms = DataSource.sourcePlatforms().filter { prefs.isLoggedIn(it) && !selectedTargets.contains(it) }
        renderPlatformGrid(srcPlatforms, selectedSources,
            canSelect = { true },
            onToggle = { ds ->
                if (multiSourceMode) {
                    if (!selectedSources.add(ds)) selectedSources.remove(ds)
                } else {
                    if (selectedSources.contains(ds)) selectedSources.clear()
                    else { selectedSources.clear(); selectedSources.add(ds) }
                }
                // v8.2.3.6: 全量重绘（清空容器），不再逐行追加
                rerenderKeepScroll()
            }
        )
        // 3. 目标区
        containerStep.addView(sectionTitle("同步目标（${if (multiSourceMode) "单选" else "可多选"}）"))
        // v8.2.3.8: 同平台互斥——目标区隐藏已选来源
        val tgtPlatforms = DataSource.entries.filter { ds ->
            !selectedSources.contains(ds) && (
                (UploadSupport.fromDataSource(ds).available || ds == DataSource.KEEP) && (ds == DataSource.KEEP || prefs.isLoggedIn(ds))
            )
        }
        renderPlatformGrid(tgtPlatforms, selectedTargets,
            canSelect = { true },
            onToggle = { ds ->
                if (multiSourceMode) {
                    if (selectedTargets.contains(ds)) selectedTargets.clear()
                    else { selectedTargets.clear(); selectedTargets.add(ds) }
                } else {
                    if (!selectedTargets.add(ds)) selectedTargets.remove(ds)
                }
                // v8.2.3.6: 全量重绘（清空容器），不再逐行追加
                rerenderKeepScroll()
            }
        )
        // 4. 底部固定一行摘要（点选结果，不新增行）
        val srcNames = if (selectedSources.isEmpty()) "未选择" else selectedSources.map { it.displayName }.joinToString("、")
        val tgtNames = if (selectedTargets.isEmpty()) "未选择" else selectedTargets.map { it.displayName }.joinToString("、")
        containerStep.addView(sectionHint("已选：$srcNames  →  $tgtNames"))
        // v8.2.3.8: 迈金来源提示——下一步可开启坐标转换（GCJ-02→WGS84）
        if (selectedSources.contains(DataSource.MAGENE)) {
            containerStep.addView(sectionHint("⚙️ 迈金 FIT 为 GCJ-02 坐标，下一步可开启「坐标转换」"))
        }
    }

    // ===== 第二页：任务参数 =====
    private fun renderStep2() {
        containerStep.addView(sectionTitle("任务参数（来源：${selectedSources.map { it.displayName }.joinToString("、")} → 目标：${selectedTargets.map { it.displayName }.joinToString("、")}）"))
        // 任务名
        val nameBox = LinearLayout(requireContext()).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
            setPadding(0, dpInt(6f), 0, dpInt(2f))
        }
        nameBox.addView(TextView(requireContext()).apply {
            text = "任务名"
            textSize = 13f
            setTextColor(requireContext().getColor(R.color.text_primary))
        }, LinearLayout.LayoutParams(dpInt(64f), LinearLayout.LayoutParams.WRAP_CONTENT))
        val nameInput = android.widget.EditText(requireContext()).apply {
            hint = "如：晨骑同步到佳明"
            setText(taskName)
            textSize = 13f
            setBackgroundResource(R.drawable.input_box_bg)
            setPadding(dpInt(8f), dpInt(6f), dpInt(8f), dpInt(6f))
        }
        nameBox.addView(nameInput, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f))
        containerStep.addView(nameBox)
        nameInput.addTextChangedListener(object : android.text.TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, a: Int, b: Int, c: Int) {}
            override fun onTextChanged(s: CharSequence?, a: Int, b: Int, c: Int) {}
            override fun afterTextChanged(s: android.text.Editable?) { taskName = s?.toString() ?: "" }
        })

        // 增量开关 v8.2.3.1: 明确"仅同步最新数据"语义（依据缓存库，库里没有才同步）
        containerStep.addView(SwitchMaterial(requireContext()).apply {
            text = "仅同步最新数据（缓存库中不存在的记录）"
            textSize = 13f
            isChecked = incremental
            setOnCheckedChangeListener { _, checked -> incremental = checked }
        })
        // v8.2.3.1: 迈金坐标转换任务级开关（仅来源含迈金时显示）
        if (selectedSources.contains(DataSource.MAGENE)) {
            containerStep.addView(SwitchMaterial(requireContext()).apply {
                text = "迈金坐标转换（GCJ-02 → WGS84）"
                textSize = 13f
                isChecked = coordinateConvert
                setOnCheckedChangeListener { _, checked -> coordinateConvert = checked }
            })
            containerStep.addView(sectionHint("迈金 FIT 坐标为 GCJ-02（高德系），建议开启转为 WGS-84 后上传国际平台"))
        }
        // 自动同步开关
        containerStep.addView(SwitchMaterial(requireContext()).apply {
            text = "自动同步（后台定时运行，需开启全局自动同步）"
            textSize = 13f
            isChecked = autoSync
            setOnCheckedChangeListener { _, checked -> autoSync = checked }
        })
        // 数量滑块
        containerStep.addView(paramSliderRow("同步数量", count, 1, 1000) { count = it })
        // 跳过滑块
        containerStep.addView(paramSliderRow("跳过前N条", skip, 0, 10000) { skip = it })
        // 强制重传
        containerStep.addView(SwitchMaterial(requireContext()).apply {
            text = "忽略上传记忆，强制重传"
            textSize = 13f
            isChecked = force
            setOnCheckedChangeListener { _, checked -> force = checked }
        })
        containerStep.addView(sectionHint("💡 增量模式：依据记录中心缓存库，自动跳过已缓存的旧记录，只同步最新数据；多来源×多目标即多对一/一对多"))
    }

    private fun paramSliderRow(label: String, initValue: Int, min: Int, max: Int, onChange: (Int) -> Unit): LinearLayout {
        val row = LinearLayout(requireContext()).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
            setPadding(0, dpInt(4f), 0, dpInt(2f))
        }
        row.addView(TextView(requireContext()).apply {
            text = label
            textSize = 13f
            setTextColor(requireContext().getColor(R.color.text_primary))
        }, LinearLayout.LayoutParams(dpInt(90f), LinearLayout.LayoutParams.WRAP_CONTENT))
        val slider = com.google.android.material.slider.Slider(requireContext()).apply {
            valueFrom = min.toFloat(); valueTo = max.toFloat(); stepSize = 1f; value = initValue.toFloat()
        }
        val tv = TextView(requireContext()).apply {
            text = initValue.toString()
            textSize = 13f
            gravity = android.view.Gravity.CENTER
            setTextColor(requireContext().getColor(R.color.primary))
        }
        slider.addOnChangeListener { _, v, _ -> tv.text = v.toInt().toString(); onChange(v.toInt()) }
        row.addView(slider, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f))
        row.addView(tv, LinearLayout.LayoutParams(dpInt(44f), LinearLayout.LayoutParams.WRAP_CONTENT))
        return row
    }

    private fun sectionHint(text: String): TextView = TextView(requireContext()).apply {
        this.text = text
        textSize = 12f
        setTextColor(requireContext().getColor(R.color.text_secondary))
        setPadding(0, dpInt(8f), 0, dpInt(8f))
    }

    private fun dpInt(v: Float): Int = (v * resources.displayMetrics.density).toInt()
}

package com.jichi.ob.ui

import android.app.AlertDialog
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.net.Uri
import android.os.Bundle
import android.text.InputType
import android.text.SpannableString
import android.text.style.ForegroundColorSpan
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.Gravity
import android.widget.EditText
import android.widget.GridLayout
import android.widget.HorizontalScrollView
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.jichi.ob.GpxToFitConverter
import com.jichi.ob.MainActivity
import com.jichi.ob.R
import com.jichi.ob.merge.FitParser
import com.jichi.ob.merge.StickerCore
import com.jichi.ob.merge.TrackMerger
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import com.jichi.ob.model.UploadSupport
import com.jichi.ob.util.PrefsManager
import com.google.android.material.button.MaterialButton
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * v7.9.7 轨迹合并页（全屏覆盖，四步骤状态机）。
 * 1. 选来源平台 → 2. 多选记录 → 3. 预览（透明轨迹多样式 + 3D 海拔） → 4. 存本地 + 选平台上传
 */
class MergeFragment : Fragment() {

    private lateinit var prefs: PrefsManager
    private var source: DataSource? = null
    private var localMode = false

    // 步骤容器
    private lateinit var stepSource: View
    private lateinit var stepSelect: View
    private lateinit var stepPreview: View
    private lateinit var stepResult: View
    private lateinit var mergeTitle: TextView
    private lateinit var mergeStepHint: TextView

    // Step1
    private lateinit var gridMergeSource: GridLayout
    private lateinit var btnMergeNext: com.google.android.material.button.MaterialButton

    // Step2
    private lateinit var rvMergeList: RecyclerView
    private lateinit var tvMergeHint: TextView
    private lateinit var tvMergeSelected: TextView
    private lateinit var btnDoMerge: com.google.android.material.button.MaterialButton
    private var mergeAdapter: MergeAdapter? = null
    private val selectedIndexes = linkedSetOf<Int>()
    private var rangeMode = false
    private var rangeAnchor = -1

    // Step3
    private lateinit var previewTrack: TrackPreviewView
    private lateinit var categoryTabRow: LinearLayout
    private lateinit var bgPickerRow: HorizontalScrollView   // v8.1.0 背景选择条
    private lateinit var bgChipRow: LinearLayout             // v8.1.0 背景 chip 容器
    private lateinit var comboPanel: LinearLayout
    private lateinit var gridMergeStats: GridLayout
    private lateinit var btnSaveMerge: com.google.android.material.button.MaterialButton
    private lateinit var btnExportGpx: TextView
    private lateinit var btnExportFit: TextView
    private lateinit var btnExportSticker: TextView
    private lateinit var btnStickerStyle: TextView
    private lateinit var btnSticker3d: TextView
    private lateinit var btnStickerColor: TextView
    private lateinit var btnStickerTextColor: TextView
    private lateinit var btnStickerItems: TextView
    private lateinit var btnStickerPos: TextView
    private lateinit var btnStickerGlow: TextView
    private lateinit var btnSticker3dBand: TextView
    private lateinit var btnSticker3dMode: TextView
    private lateinit var btnSticker3dReset: TextView
    private lateinit var btnStickerTransparent: TextView
    private lateinit var btnStickerWidth: TextView
    private lateinit var btnStickerDataLayer: TextView
    private lateinit var btnStickerWatermark: TextView
    private lateinit var btnStickerBadge: TextView      // v8.0.5-2 角标开关
    private lateinit var btnStickerTrack: TextView      // v8.0.9 轨迹显示开关
    private lateinit var btnStickerBrand: TextView      // v8.0.9 品牌角标循环切换
    private lateinit var btnStickerSummary: TextView
    private lateinit var btnStickerPhoto: TextView
    private lateinit var stickerTemplateName: TextView
    private lateinit var stickerCardTitle: TextView
    private lateinit var stickerCardPage: TextView

    // v8.0.4 贴纸模板状态（21 预设画廊 + 自定义组合）
    private var templateIdx = 0                    // 当前选中模板下标（0-20；-1=自定义）
    private var comboOverride = false              // true=进入自定义组合
    private var comboPanelOpen = false             // 组合面板是否展开
    private var badgeOn = true                     // v8.0.5-2 大卡左上/右上角标开关（默认开）

    /** v8.0.5 照片类背景（用于选照片后自动切换） */
    private val photoBgs = setOf(
        StickerCore.StickerBg.PHOTO_OVERLAY,
        StickerCore.StickerBg.FROSTED,
        StickerCore.StickerBg.PHOTO_SPLIT
    )

    // 旧版参数保留（导出/兼容）
    private var stickerStyle = TrackPreviewView.STICKER_STRAVA
    private var sticker3d = true
    private var stickerLineMode = TrackPreviewView.COLOR_BLACK
    private var stickerTextMode = TrackPreviewView.COLOR_WHITE
    private var stickerItems: MutableList<Int> = StickerCore.ITEM_DEFAULT.toMutableList()
    private var stickerPos = TrackPreviewView.POS_CENTER

    // Step4
    private lateinit var tvMergeResultTitle: TextView
    private lateinit var tvMergeResultFile: TextView
    private lateinit var tvMergeResultPath: TextView
    private lateinit var gridMergeUpload: GridLayout
    private lateinit var btnUploadMerge: com.google.android.material.button.MaterialButton
    private lateinit var btnMergeDone: TextView
    private val selectedUploadTags = linkedSetOf<String>()

    // 合并数据
    private var mergedResult: TrackMerger.MergedResult? = null
    private var savedFile: File? = null

    // Step2 全量记录 + 日期范围筛选
    private var allRecords: List<ActivityRecord> = emptyList()
    private var fromDate: String? = null   // "yyyy-MM-dd"，null=最近记录
    private var toDate: String? = null
    private var lastErr = ""   // 最近一次解析/下载失败原因（用于提示）

    // v8.1.2: 记录分页状态（预取 30 条 + 加载更多翻页，日期跳转可用）
    private var pageSkip = 0
    private var listHasMore = false
    private var pageLoading = false

    private val dp by lazy { resources.displayMetrics.density }

    /** v8.0.2: 往期数据手输（累计对比/双栏/年度总结模板的右侧累计数据） */
    private fun editSummaryStats() {
        val ctx = requireContext()
        val root = LinearLayout(ctx).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(56, 24, 56, 8)
        }
        val cur = previewTrack.summaryStats
        val etCount = EditText(ctx).apply {
            hint = "次数（如 12）"
            inputType = InputType.TYPE_CLASS_NUMBER
            textSize = 15f
            setText(cur?.count?.toString() ?: "")
            setPadding(0, 8, 0, 8)
        }
        val etKm = EditText(ctx).apply {
            hint = "总里程 km（如 126.5）"
            inputType = InputType.TYPE_CLASS_NUMBER or InputType.TYPE_NUMBER_FLAG_DECIMAL
            textSize = 15f
            setText(cur?.totalKm?.let { String.format(Locale.US, "%.1f", it) } ?: "")
            setPadding(0, 8, 0, 8)
        }
        val etMin = EditText(ctx).apply {
            hint = "总时长 分钟（如 458）"
            inputType = InputType.TYPE_CLASS_NUMBER
            textSize = 15f
            setText(cur?.totalSec?.let { (it / 60).toString() } ?: "")
            setPadding(0, 8, 0, 8)
        }
        val etAscent = EditText(ctx).apply {
            hint = "总爬升 m（如 1520）"
            inputType = InputType.TYPE_CLASS_NUMBER
            textSize = 15f
            setText(cur?.totalAscentM?.let { String.format(Locale.US, "%.0f", it) } ?: "")
            setPadding(0, 8, 0, 8)
        }
        root.addView(etCount); root.addView(etKm); root.addView(etMin); root.addView(etAscent)
        AlertDialog.Builder(ctx)
            .setTitle("录入往期数据")
            .setMessage("用于「累计对比 / 双栏 / 年度总结」模板的右侧累计数据，按月/年手输即可")
            .setView(root)
            .setPositiveButton("保存") { _, _ ->
                val count = etCount.text.toString().toIntOrNull() ?: 0
                val km = etKm.text.toString().toDoubleOrNull() ?: 0.0
                val min = etMin.text.toString().toLongOrNull() ?: 0L
                val ascent = etAscent.text.toString().toDoubleOrNull() ?: 0.0
                if (count <= 0 && km <= 0 && min <= 0 && ascent <= 0) {
                    previewTrack.summaryStats = null
                    toast("已清除往期数据")
                } else {
                    previewTrack.summaryStats = StickerCore.SummaryStats(count, km, min * 60, ascent)
                    toast("往期数据已保存")
                }
                comboOverride = true
                refreshStickerChips()
            }
            .setNegativeButton("清除", null)
            .show()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_merge, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        prefs = PrefsManager(requireContext())

        stepSource = view.findViewById(R.id.stepSource)
        stepSelect = view.findViewById(R.id.stepSelect)
        stepPreview = view.findViewById(R.id.stepPreview)
        stepResult = view.findViewById(R.id.stepResult)
        mergeTitle = view.findViewById(R.id.mergeTitle)
        mergeStepHint = view.findViewById(R.id.mergeStepHint)

        gridMergeSource = view.findViewById(R.id.gridMergeSource)
        btnMergeNext = view.findViewById(R.id.btnMergeNext)

        rvMergeList = view.findViewById(R.id.rvMergeList)
        tvMergeHint = view.findViewById(R.id.tvMergeHint)
        tvMergeSelected = view.findViewById(R.id.tvMergeSelected)
        btnDoMerge = view.findViewById(R.id.btnDoMerge)
        rvMergeList.layoutManager = LinearLayoutManager(requireContext())

        // v8.1.2: 分页加载更多（预取 30 条后，点击追加更早记录）
        view.findViewById<TextView>(R.id.btnLoadMore).apply {
            setOnClickListener {
                if (!pageLoading && listHasMore) loadActivities(append = true)
            }
        }

        previewTrack = view.findViewById(R.id.previewTrack)
        categoryTabRow = view.findViewById(R.id.categoryTabRow)
        bgPickerRow = view.findViewById(R.id.bgPickerRow)   // v8.1.0 背景选择条
        bgChipRow = view.findViewById(R.id.bgChipRow)
        comboPanel = view.findViewById(R.id.comboPanel)
        gridMergeStats = view.findViewById(R.id.gridMergeStats)
        btnSaveMerge = view.findViewById(R.id.btnSaveMerge)
        btnExportGpx = view.findViewById(R.id.btnExportGpx)
        btnExportFit = view.findViewById(R.id.btnExportFit)
        btnExportSticker = view.findViewById(R.id.btnExportSticker)
        btnStickerStyle = view.findViewById(R.id.btnStickerStyle)
        btnSticker3d = view.findViewById(R.id.btnSticker3d)
        btnStickerColor = view.findViewById(R.id.btnStickerColor)
        btnStickerTextColor = view.findViewById(R.id.btnStickerTextColor)
        btnStickerItems = view.findViewById(R.id.btnStickerItems)
        btnStickerPos = view.findViewById(R.id.btnStickerPos)
        btnStickerGlow = view.findViewById(R.id.btnStickerGlow)
        btnSticker3dBand = view.findViewById(R.id.btnSticker3dBand)
        btnStickerTransparent = view.findViewById(R.id.btnStickerTransparent)
        btnStickerWidth = view.findViewById(R.id.btnStickerWidth)
        btnStickerDataLayer = view.findViewById(R.id.btnStickerDataLayer)
        btnStickerWatermark = view.findViewById(R.id.btnStickerWatermark)
        btnStickerBadge = view.findViewById(R.id.btnStickerBadge)
        btnStickerTrack = view.findViewById(R.id.btnStickerTrack)
        btnStickerBrand = view.findViewById(R.id.btnStickerBrand)
        btnStickerSummary = view.findViewById(R.id.btnStickerSummary)
        stickerTemplateName = view.findViewById(R.id.stickerTemplateName)
        // v8.0.5 效果图 1:1 大卡角标：左上「分类·模板名」+ 右上「N/24」
        stickerCardTitle = view.findViewById(R.id.stickerCardTitle)
        stickerCardPage = view.findViewById(R.id.stickerCardPage)
        // v8.0.5-2 大卡 1:1 正方形画布：高 = 宽（水印 0.97s 恰好落在卡底，不压数据）
        val previewCardWrap = view.findViewById<View>(R.id.previewCardWrap)
        previewCardWrap.post {
            val w = previewCardWrap.width
            if (w > 0) {
                val lp = previewCardWrap.layoutParams
                lp.height = w
                previewCardWrap.layoutParams = lp
            }
        }
        // v8.0.5 照片叠加：选照片（GetContent 相册，兼容 Android 13+ 无需权限）
        btnStickerPhoto = view.findViewById(R.id.btnStickerPhoto)
        btnStickerPhoto.setOnClickListener { pickStickerPhoto() }
        // v8.0.5 效果图式翻页：‹ 上一页 / 下一页 ›，页码居中显示
        view.findViewById<TextView>(R.id.btnStickerPrev).setOnClickListener {
            val n = StickerCore.StickerTemplates.ALL.size
            selectTemplate(((templateIdx - 1) + n) % n)
        }
        view.findViewById<TextView>(R.id.btnStickerNext).setOnClickListener {
            val n = StickerCore.StickerTemplates.ALL.size
            selectTemplate((templateIdx + 1) % n)
        }
        // v8.0.5 自定义编辑：任何预设都可点「编辑」展开组合面板，改了任一维度即变为自定义
        view.findViewById<TextView>(R.id.btnStickerEdit).setOnClickListener { openCombo() }
        // v8.0.3 轨迹微调工具条（缩放/旋转/重置，手势之外的一键兜底）
        view.findViewById<TextView>(R.id.btnTrackZoomOut).setOnClickListener { previewTrack.zoomTrackBy(0.87f) }
        view.findViewById<TextView>(R.id.btnTrackZoomIn).setOnClickListener { previewTrack.zoomTrackBy(1.15f) }
        view.findViewById<TextView>(R.id.btnTrackRotateLeft).setOnClickListener { previewTrack.rotateTrackBy(-15f) }
        view.findViewById<TextView>(R.id.btnTrackRotateRight).setOnClickListener { previewTrack.rotateTrackBy(15f) }
        // v8.1.0 纵深倾角按钮（前仰/后仰，带透视）
        view.findViewById<TextView>(R.id.btnTrackTiltBack).setOnClickListener { previewTrack.tiltTrackBy(-10f) }
        view.findViewById<TextView>(R.id.btnTrackTiltForward).setOnClickListener { previewTrack.tiltTrackBy(10f) }
        view.findViewById<TextView>(R.id.btnTrackReset).setOnClickListener {
            previewTrack.resetTrackTransform()
            previewTrack.resetTrack3d()   // v8.3.1: 重置一键兜底 3D 视角复位
            toast("已复位")
        }
        // v8.1.1 方向键兜底：上下左右平移轨迹（步进10画布px=原40的1/4，用户反馈40太大）
        view.findViewById<TextView>(R.id.btnTrackUp).setOnClickListener { previewTrack.moveTrackBy(0f, -10f) }
        view.findViewById<TextView>(R.id.btnTrackDown).setOnClickListener { previewTrack.moveTrackBy(0f, 10f) }
        view.findViewById<TextView>(R.id.btnTrackLeft).setOnClickListener { previewTrack.moveTrackBy(-10f, 0f) }
        view.findViewById<TextView>(R.id.btnTrackRight).setOnClickListener { previewTrack.moveTrackBy(10f, 0f) }

        // v8.1.1c: 标题/地址编辑——应用输入到贴纸标题，空文本=恢复默认（运动类型+日期）
        val editTitle = view.findViewById<android.widget.EditText>(R.id.editStickerTitle)
        view.findViewById<TextView>(R.id.btnApplyTitle).setOnClickListener {
            val t = editTitle.text?.toString()?.trim().orEmpty()
            previewTrack.titleOverride = t.ifEmpty { null }
            toast(if (t.isEmpty()) "已恢复默认标题" else "标题已更新")
        }
        editTitle.setOnEditorActionListener { _, _, _ ->
            val t = editTitle.text?.toString()?.trim().orEmpty()
            previewTrack.titleOverride = t.ifEmpty { null }
            toast(if (t.isEmpty()) "已恢复默认标题" else "标题已更新")
            true
        }

        // v8.1.1c: 手输数据编辑（FIT 里没有/不满意的数据可手输覆盖，空=恢复实际值）
        view.findViewById<TextView>(R.id.btnEditData).setOnClickListener { showDataEditDialog() }
        view.findViewById<TextView>(R.id.btnClearData).setOnClickListener {
            previewTrack.clearDataOverrides()
            toast("已清空手输数据")
        }

        // v8.0.7 贴纸比例切换（1:1 / 3:4 / 9:16）：预览卡高度随比例，导出同源
        val chip11 = view.findViewById<TextView>(R.id.chipAspect11)
        val chip34 = view.findViewById<TextView>(R.id.chipAspect34)
        val chip916 = view.findViewById<TextView>(R.id.chipAspect916)
        fun applyAspect(a: String) {
            previewTrack.aspect = a
            fun style(c: TextView, active: Boolean) {
                c.background = if (active) requireContext().getDrawable(R.drawable.merge_chip_white_on) else requireContext().getDrawable(R.drawable.merge_chip_white)
                c.setTextColor(if (active) requireContext().getColor(R.color.primary) else requireContext().getColor(R.color.text_primary))
            }
            style(chip11, a == "1:1"); style(chip34, a == "3:4"); style(chip916, a == "9:16")
            sizeCardForAspect(a)
        }
        chip11.setOnClickListener { applyAspect("1:1") }
        chip34.setOnClickListener { applyAspect("3:4") }
        chip916.setOnClickListener { applyAspect("9:16") }
        applyAspect("1:1")

        // v8.0.7 预览卡左右滑动切换模板（效果图交互：每个标题下左右滑）
        previewTrack.onTemplateSwipe = { dir ->
            val n = StickerCore.StickerTemplates.ALL.size
            selectTemplate(((templateIdx + dir) % n + n) % n)
        }

        tvMergeResultTitle = view.findViewById(R.id.tvMergeResultTitle)
        tvMergeResultFile = view.findViewById(R.id.tvMergeResultFile)
        tvMergeResultPath = view.findViewById(R.id.tvMergeResultPath)
        gridMergeUpload = view.findViewById(R.id.gridMergeUpload)
        btnUploadMerge = view.findViewById(R.id.btnUploadMerge)
        btnMergeDone = view.findViewById(R.id.btnMergeDone)

        view.findViewById<TextView>(R.id.btnMergeBack).setOnClickListener { onBack() }
        btnMergeNext.setOnClickListener { loadActivities() }
        view.findViewById<TextView>(R.id.btnPickDate).setOnClickListener { pickDateFilter() }
        view.findViewById<TextView>(R.id.btnClearDate).setOnClickListener {
            fromDate = null; toDate = null
            pageSkip = 0; listHasMore = false   // v8.1.2: 重置分页
            refreshDateFilterViews()
            loadActivities()
            toast("已恢复显示最近记录")
        }
        view.findViewById<TextView>(R.id.btnMergeAllToday).setOnClickListener { selectToday() }
        view.findViewById<TextView>(R.id.btnMergeRange).setOnClickListener { toggleRangeMode() }
        view.findViewById<TextView>(R.id.btnMergeClear).setOnClickListener { clearSelection() }
        btnDoMerge.setOnClickListener { doMerge() }
        btnSaveMerge.setOnClickListener { saveMerge() }
        btnExportGpx.setOnClickListener { exportMerge(exportFit = false) }
        btnExportFit.setOnClickListener { exportMerge(exportFit = true) }
        btnExportSticker.setOnClickListener { exportSticker() }
        // v8.0.1 模板库：分类 tab
        // v8.1.0 背景：按钮点击展开/收起背景选择条（所有背景一次可见可点，不再循环）
        btnStickerStyle.setOnClickListener {
            val showing = bgPickerRow.visibility == View.VISIBLE
            bgPickerRow.visibility = if (showing) View.GONE else View.VISIBLE
            if (!showing) buildBgChips()
        }
        btnSticker3d.setOnClickListener {
            // 组合：轨迹 循环切换
            val v = previewTrack.trackType
            val vals = StickerCore.StickerTrack.entries
            previewTrack.trackType = vals[(vals.indexOf(v) + 1) % vals.size]
            comboOverride = true
            refreshStickerChips()
        }
        btnStickerColor.setOnClickListener {
            // 组合：布局 循环切换
            val v = previewTrack.layoutType
            val vals = StickerCore.StickerLayout.entries
            previewTrack.layoutType = vals[(vals.indexOf(v) + 1) % vals.size]
            comboOverride = true
            refreshStickerChips()
        }
        btnStickerTextColor.setOnClickListener {
            // 组合：字色 循环切换
            val v = previewTrack.textType
            val vals = StickerCore.StickerText.entries
            previewTrack.textType = vals[(vals.indexOf(v) + 1) % vals.size]
            comboOverride = true
            refreshStickerChips()
        }
        btnStickerGlow.setOnClickListener {
            // v8.3.1: 3D 与发光互斥——3D 模式下发光不可开启（点了无效果，提示见文案置灰）
            if (previewTrack.track3d) {
                if (!previewTrack.glowOn) { /* 3D 下点击发光无效 */ }
            } else {
                previewTrack.glowOn = !previewTrack.glowOn
            }
            comboOverride = true
            refreshStickerChips()
        }
        btnSticker3dBand.setOnClickListener {
            previewTrack.show3dBand = !previewTrack.show3dBand
            comboOverride = true
            refreshStickerChips()
        }
        btnStickerWidth.setOnClickListener {
            previewTrack.trackWidth = if (previewTrack.trackWidth >= 6) 1 else previewTrack.trackWidth + 1
            comboOverride = true
            refreshStickerChips()
        }
        btnStickerTransparent.setOnClickListener {
            previewTrack.transparentBg = !previewTrack.transparentBg
            comboOverride = true
            refreshStickerChips()
        }
        btnStickerDataLayer.setOnClickListener {
            previewTrack.dataLayerOn = !previewTrack.dataLayerOn
            comboOverride = true
            refreshStickerChips()
        }
        btnStickerWatermark.setOnClickListener {
            previewTrack.watermarkOn = !previewTrack.watermarkOn
            comboOverride = true
            refreshStickerChips()
        }
        // v8.0.5-2 角标开关：大卡左上「分类·模板名」+ 右上「N/24」
        view.findViewById<TextView>(R.id.btnStickerBadge).setOnClickListener {
            badgeOn = !badgeOn
            updateBadgeVisibility()
            refreshStickerChips()
        }
        // v8.3.3 轨迹开关两态：平面 ↔ 关闭（立体轨迹已下线，不再进入 3D 模式）
        btnStickerTrack.setOnClickListener {
            if (!previewTrack.trackOn) {
                previewTrack.trackOn = true
                previewTrack.setTrack3dMode(false)
            } else {
                previewTrack.trackOn = false
            }
            comboOverride = true
            refreshStickerChips()
        }
        // v8.1.1 角标只留两种：①鸡翅OB文字标（默认） ②自定义透明Logo（选图）——弹窗二选一，方便操作
        btnStickerBrand.setOnClickListener { showBrandDialog() }
        // v8.1.1 启动恢复自定义透明 logo（私有目录持久化，重启不丢）
        lifecycleScope.launch {
            val url = withContext(Dispatchers.IO) {
                runCatching {
                    val f = java.io.File(requireContext().filesDir, "custom_badge.png")
                    if (f.exists()) "data:image/png;base64," + android.util.Base64.encodeToString(f.readBytes(), android.util.Base64.NO_WRAP) else null
                }.getOrNull()
            }
            if (url != null && previewTrack.badgeUrl == null) {
                previewTrack.badgeUrl = url
                refreshStickerChips()
            }
        }
        btnStickerSummary.setOnClickListener { editSummaryStats() }
        btnStickerPos.setOnClickListener {
            stickerPos = (stickerPos + 1) % TrackPreviewView.posNames.size
            previewTrack.posMode = stickerPos; previewTrack.applyPosMode()
            refreshStickerChips()
        }
        btnStickerItems.setOnClickListener { pickStickerItems() }
        btnUploadMerge.setOnClickListener { uploadMerge() }
        btnMergeDone.setOnClickListener { (activity as? MainActivity)?.closeMerge() }

        setupSourceGrid()
        buildCategoryTabs()
        selectTemplate(0)
        showStep(1)
    }

    // ================= 步骤切换 =================
    // v8.2.7: 预览卡按可视区 contain——长画布（3:4/9:16）高度超出 ScrollView 视口时
    //         同步收窄宽度（等比），保证整卡完整可见不被视口裁剪（轨迹不再"截断"）
    // v8.2.7b: 加入布局重试——step3 刚 VISIBLE 的同一帧内 post 时 ScrollView 可能尚未布局
    //         （availH=0），此前直接跳过导致卡片全宽 3:4 超高被视口裁切；现 60ms 间隔重试
    //         最多 12 次，直到拿到卡片宽与 ScrollView 视口高再等比 contain。
    private fun sizeCardForAspect(a: String) {
        val wrap = view?.findViewById<View>(R.id.previewCardWrap) ?: return
        fun trySize(times: Int) {
            wrap.post {
                val w = wrap.width
                var p = wrap.parent
                var sv: View? = null
                repeat(4) { if (p is ScrollView) sv = p; p = p?.parent }
                val availH = sv?.height?.takeIf { it > 0 } ?: 0
                if ((w <= 0 || availH <= 0) && times < 12) {
                    wrap.postDelayed({ trySize(times + 1) }, 60)
                    return@post
                }
                val ratio = when (a) {
                    "3:4" -> 4f / 3f
                    "9:16" -> 16f / 9f
                    else -> 1f
                }
                var cw = w
                var ch = (w * ratio).toInt()
                if (availH > 0 && ch > availH) {
                    ch = availH
                    cw = (availH / ratio).toInt()
                }
                if (cw > 0 && ch > 0) {
                    val lp = wrap.layoutParams
                    lp.width = cw
                    lp.height = ch
                    wrap.layoutParams = lp
                    // v8.2.7c: contain 后强制 HTML 按新 #card 尺寸重渲（onLayout 的延迟刷新是主路径，
                    // 这里兜底一次，防止尺寸在极端时序下未被捕获导致轨迹在新视口下被裁）
                    view?.findViewById<TrackPreviewView>(R.id.previewTrack)?.postDelayed({
                        if (previewTrack.webReadyPublic()) previewTrack.refreshWebRenderPublic()
                    }, 250)
                }
            }
        }
        trySize(0)
    }

    private fun showStep(step: Int) {
        val root = view ?: return
        stepSource.visibility = if (step == 1) View.VISIBLE else View.GONE
        stepSelect.visibility = if (step == 2) View.VISIBLE else View.GONE
        stepPreview.visibility = if (step == 3) View.VISIBLE else View.GONE
        stepResult.visibility = if (step == 4) View.VISIBLE else View.GONE
        // v8.1.1 修复"导出与预览不一致"根因：预览卡此前在隐藏步骤 onCreateView 时 post 宽为 0，
        // 高度永远停在 330dp 非正方形；进入预览步骤时按当前比例重设高=宽，预览=导出同画布比例
        if (step == 3) {
            sizeCardForAspect(previewTrack.aspect)
        }
        mergeTitle.text = when (step) {
            1 -> "轨迹合并"
            2 -> "选择记录"
            3 -> "合并预览"
            else -> "合并完成"
        }
        mergeStepHint.text = "$step/4"
    }

    private fun onBack() {
        when {
            stepResult.visibility == View.VISIBLE -> showStep(3)
            stepPreview.visibility == View.VISIBLE -> showStep(2)
            // v8.0.1: 从记录页返回时保留已选来源（之前清空导致"选了还要再点一次"），仅同步选中视觉
            stepSelect.visibility == View.VISIBLE -> { showStep(1); refreshSourceSelection() }
            else -> (activity as? MainActivity)?.closeMerge()
        }
    }

    private fun color(id: Int) = requireContext().getColor(id)

    // ================= Step1 来源（所有可下载平台 + 本地文件） =================
    private fun setupSourceGrid() {
        gridMergeSource.removeAllViews()
        val downloadable = DataSource.sourcePlatforms().toSet()
        // 百锐腾下载接口未开放（downloadActivity 返回 null），不作为合并数据源
        val list = DataSource.entries.filter { it in downloadable && it != DataSource.BRYTON }
        if (list.isEmpty()) {
            val tv = TextView(requireContext()).apply {
                text = "暂无可用来源平台"
                textSize = 13f
                setTextColor(color(R.color.text_secondary))
            }
            gridMergeSource.addView(tv, GridLayout.LayoutParams().apply {
                columnSpec = GridLayout.spec(0, 4)
            })
            return
        }
        // 所有支持下载的平台都显示；未登录的置灰（设置页同款强反差），点击提示登录后即可作为合并数据源
        for (ds in list) {
            val loggedIn = prefs.isLoggedIn(ds)
            val btn = PlatformButton(requireContext()).apply {
                tag = ds.shortName
                bind(platformColor(ds.shortName))
                buttonText = if (loggedIn) ds.displayName else "${ds.displayName}\n未登录"
                layoutParams = GridLayout.LayoutParams().apply {
                    width = 0; height = (50 * dp).toInt()
                    columnSpec = GridLayout.spec(GridLayout.UNDEFINED, 1f)
                    setMargins((2 * dp).toInt(), (2 * dp).toInt(), (2 * dp).toInt(), (2 * dp).toInt())
                }
                setOnClickListener {
                    if (!prefs.isLoggedIn(ds)) {
                        toast("请先到登录页登录 ${ds.displayName}，登录后即可作为合并/贴纸数据源")
                        return@setOnClickListener
                    }
                    source = ds
                    localMode = false
                    refreshSourceSelection()
                }
            }
            // 未登录：设置页同款灰态（灰底灰字半透明），与已登录形成强反差
            if (!loggedIn) btn.setPlatformState(false, false)
            gridMergeSource.addView(btn)
        }
        // 本地文件数据源（永远可用，不依赖登录）：已下载目录 + 浏览手机文件
        val localBtn = PlatformButton(requireContext()).apply {
            tag = "local"
            bind(color(R.color.primary))
            buttonText = "📁 本地文件"
            layoutParams = GridLayout.LayoutParams().apply {
                width = 0; height = (44 * dp).toInt()
                columnSpec = GridLayout.spec(GridLayout.UNDEFINED, 1f)
                setMargins((2 * dp).toInt(), (2 * dp).toInt(), (2 * dp).toInt(), (2 * dp).toInt())
            }
            setOnClickListener { showLocalSourceChoices() }
        }
        gridMergeSource.addView(localBtn)
        // 默认选第一个已登录平台；无已登录则本地文件为唯一可用数据源
        source = list.firstOrNull { prefs.isLoggedIn(it) }
        localMode = false
        refreshSourceSelection()
    }

    /** 本地文件数据源：已下载目录 或 系统文件选择器（按钮化，避免纯文字看不出可点） */
    private fun showLocalSourceChoices() {
        val box = LinearLayout(requireContext()).apply {
            orientation = LinearLayout.VERTICAL
            setPadding((18 * dp).toInt(), (8 * dp).toInt(), (18 * dp).toInt(), (2 * dp).toInt())
        }
        // v8.0.1: 先创建对话框再绑定按钮，点击选项后立即关闭本对话框（避免"选完窗口还在"）
        val dialog = AlertDialog.Builder(requireContext())
            .setTitle("📁 本地文件数据源\n（FIT/GPX · 单选=贴纸 多选=合并）")
            .setView(box)
            .setNegativeButton("取消", null)
            .create()
        fun addBtn(text: String, onClick: () -> Unit) {
            val b = MaterialButton(requireContext()).apply {
                this.text = text
                isAllCaps = false
                cornerRadius = (12 * dp).toInt()
                insetTop = 0; insetBottom = 0
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT, (52 * dp).toInt()
                ).apply { topMargin = (8 * dp).toInt() }
            }
            b.setOnClickListener {
                dialog.dismiss()
                onClick()
            }
            box.addView(b)
        }
        addBtn("📁 从已下载目录选择") { showDownloadedFilesDialog() }
        addBtn("🗂 浏览手机文件") { launchFilePicker() }
        dialog.show()
    }

    /** 从 App 已下载目录多选 FIT/GPX */
    private fun showDownloadedFilesDialog() {
        val files = (MainActivity.SAVE_DIR.listFiles() ?: emptyArray())
            .filter { it.isFile && (it.name.endsWith(".fit", true) || it.name.endsWith(".gpx", true)) }
            .sortedByDescending { it.lastModified() }
        if (files.isEmpty()) {
            toast("已下载目录没有 FIT/GPX 文件（可先去同步页下载，或用浏览手机文件选择）")
            return
        }
        val names = files.map { it.name }.toTypedArray()
        val checked = BooleanArray(files.size)
        AlertDialog.Builder(requireContext())
            .setTitle("已下载目录（${files.size} 个 FIT/GPX，单选=贴纸 多选=合并）")
            .setMultiChoiceItems(names, checked) { _, i, b -> checked[i] = b }
            .setPositiveButton("确定") { _, _ ->
                val sel = files.filterIndexed { i, _ -> checked[i] }
                if (sel.isEmpty()) {
                    toast("未选择文件")
                } else {
                    val bytes = sel.map { runCatching { it.readBytes() }.getOrNull() }
                    processLocalFiles(sel.map { it.name }, bytes)
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v8.0.5 照片叠加：相册选图（GetContent 无需存储权限，Android 13+ 兼容） */
    private val photoPicker = registerForActivityResult(ActivityResultContracts.GetContent()) { uri ->
        if (uri == null) return@registerForActivityResult
        lifecycleScope.launch {
            val bmp = withContext(Dispatchers.IO) {
                runCatching {
                    val ins = requireContext().contentResolver.openInputStream(uri) ?: return@withContext null
                    val raw = BitmapFactory.decodeStream(ins)
                    ins.close()
                    // 缩放上限 1600px，防 OOM
                    val maxSide = 1600
                    val w = raw.width; val h = raw.height
                    val scale = maxOf(w, h).toFloat() / maxSide
                    if (scale > 1f) Bitmap.createScaledBitmap(raw, (w / scale).toInt(), (h / scale).toInt(), true)
                    else raw
                }.getOrNull()
            }
            if (bmp == null) { toast("照片读取失败"); return@launch }
            previewTrack.overlayBitmap = bmp
            // 切到照片类背景（若当前不是照片类，自动切「透明叠加」让照片立即生效）
            if (previewTrack.bgType !in photoBgs) {
                previewTrack.bgType = StickerCore.StickerBg.PHOTO_OVERLAY
                comboOverride = true
            }
            refreshStickerChips()
            toast("照片已添加")
        }
    }

    private fun pickStickerPhoto() {
        try { photoPicker.launch("image/*") } catch (e: Exception) { toast("无法打开相册：${e.message}") }
    }

    /** v8.1.1 自定义透明 logo：相册选图 → 等比缩放到角标边界 → 存私有目录 → base64 注入渲染 */
    private val logoPicker = registerForActivityResult(ActivityResultContracts.GetContent()) { uri ->
        if (uri == null) return@registerForActivityResult
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val ctx = requireContext()
                    val ins = ctx.contentResolver.openInputStream(uri) ?: return@runCatching null
                    val raw = BitmapFactory.decodeStream(ins)
                    ins.close()
                    if (raw == null) return@runCatching null
                    // 角标边界：等比缩放，最长边 ≤ 320px（够清晰且不占内存）；保留透明通道
                    val maxSide = 320
                    val w = raw.width; val h = raw.height
                    val bmp = if (maxOf(w, h) > maxSide) {
                        val sc = maxSide.toFloat() / maxOf(w, h)
                        Bitmap.createScaledBitmap(raw, (w * sc).toInt().coerceAtLeast(1), (h * sc).toInt().coerceAtLeast(1), true)
                    } else raw
                    val bos = java.io.ByteArrayOutputStream()
                    // PNG 保留 alpha 透明通道
                    if (!bmp.compress(Bitmap.CompressFormat.PNG, 100, bos)) return@runCatching null
                    // 持久化，重启后仍可用
                    val f = java.io.File(ctx.filesDir, "custom_badge.png")
                    f.writeBytes(bos.toByteArray())
                    "data:image/png;base64," + android.util.Base64.encodeToString(bos.toByteArray(), android.util.Base64.NO_WRAP)
                }.getOrNull()
            }
            if (result == null) { toast("logo 读取失败，请选择 PNG 透明图片"); return@launch }
            previewTrack.badgeUrl = result
            previewTrack.brandIdx = TrackPreviewView.BRAND_CUSTOM
            comboOverride = true
            refreshStickerChips()
            toast("自定义 logo 已设置")
        }
    }

    private fun pickStickerLogo() {
        try { logoPicker.launch("image/*") } catch (e: Exception) { toast("无法打开相册：${e.message}") }
    }

    /** v8.1.1 角标二选一弹窗：鸡翅OB文字标（默认）/ 自定义透明Logo（选图）。中间品牌不再展示，用户自选更自由 */
    private fun showBrandDialog() {
        val cur = previewTrack.brandIdx
        val names = arrayOf(
            "鸡翅幸哲迈进OB（文字标）",
            "自定义透明Logo（选图）"
        )
        val checked = if (cur == TrackPreviewView.BRAND_CUSTOM) 1 else 0
        android.app.AlertDialog.Builder(requireContext())
            .setTitle("角标样式")
            .setSingleChoiceItems(names, checked) { d, which ->
                if (which == 0) {
                    // 鸡翅OB：清自定义图，恢复默认文字标
                    previewTrack.brandIdx = 0
                    previewTrack.badgeUrl = null
                    runCatching { java.io.File(requireContext().filesDir, "custom_badge.png").delete() }
                } else {
                    // 自定义：切到自定义角标，并打开相册选透明图
                    previewTrack.brandIdx = TrackPreviewView.BRAND_CUSTOM
                    pickStickerLogo()
                }
                comboOverride = true
                refreshStickerChips()
                d.dismiss()
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** 系统文件选择器（SAF，多选任意位置 FIT/GPX） */
    private val filePicker = registerForActivityResult(ActivityResultContracts.OpenMultipleDocuments()) { uris ->
        if (uris.isEmpty()) return@registerForActivityResult
        val names = ArrayList<String>()
        val bytes = ArrayList<ByteArray?>()
        lifecycleScope.launch {
            for (uri in uris) {
                val name = uri.lastPathSegment ?: "file"
                if (!name.endsWith(".fit", true) && !name.endsWith(".gpx", true)) continue
                val b = withContext(Dispatchers.IO) {
                    try { requireContext().contentResolver.openInputStream(uri)?.use { it.readBytes() } } catch (_: Exception) { null }
                }
                names.add(name); bytes.add(b)
            }
            if (names.isEmpty()) { toast("未选择到 FIT/GPX 文件"); return@launch }
            processLocalFiles(names, bytes)
        }
    }

    private fun launchFilePicker() {
        try {
            filePicker.launch(arrayOf("*/*"))
        } catch (e: Exception) {
            toast("无法打开文件选择器：${e.message}")
        }
    }

    /** 处理本地文件：单选=生成贴纸，多选=合并 */
    private fun processLocalFiles(names: List<String>, bytesList: List<ByteArray?>) {
        if (names.isEmpty()) { toast("未选择文件"); return }
        tvMergeHint.text = "正在解析 ${names.size} 个本地文件..."
        btnSaveMerge.isEnabled = false
        lifecycleScope.launch {
            val groups = ArrayList<List<GpxToFitConverter.TrackPoint>>()
            var parsedSport = -1
            var failCount = 0
            var lastErr = ""
            for (i in names.indices) {
                val bytes = bytesList.getOrNull(i) ?: run { failCount++; lastErr = "文件读取失败"; continue }
                val pts = withContext(Dispatchers.Default) { parseBytes(bytes) }
                if (pts.isNullOrEmpty()) {
                    failCount++
                    lastErr = "「${names[i]}」$lastErr"
                    continue
                }
                groups.add(pts)
                if (parsedSport < 0) parsedSport = TrackMerger.detectSportFromName(names[i])
            }
            btnSaveMerge.isEnabled = true
            if (groups.isEmpty()) {
                toast("所选文件均无法解析（$failCount 个失败）$lastErr")
                tvMergeHint.text = "处理失败：$failCount 个文件均无法解析\n$lastErr"
                return@launch
            }
            val isMerge = groups.size >= 2
            if (failCount > 0) tvMergeHint.text = "部分文件解析失败（${groups.size}/$names.size），继续处理剩余..."
            val result = try {
                withContext(Dispatchers.Default) {
                    TrackMerger.mergePointGroups(groups, forcedSport = if (!isMerge) parsedSport else -1)
                }
            } catch (e: Exception) {
                toast("处理失败：${e.message}"); return@launch
            }
            localMode = true
            mergedResult = result
            showPreview(result, groups.size)
        }
    }

    /** 解析 FIT/GPX；失败时返回 null，并附带可读原因 */
    private fun parseBytes(bytes: ByteArray): List<GpxToFitConverter.TrackPoint>? {
        return try {
            if (GpxToFitConverter.isFit(bytes)) {
                // v7.9.9 完整性诊断：FIT 头部声明的数据大小 > 实际文件大小 → 截断/损坏，给出明确原因
                if (bytes.size >= 12) {
                    val declared = (bytes[4].toLong() and 0xFF) or ((bytes[5].toLong() and 0xFF) shl 8) or
                        ((bytes[6].toLong() and 0xFF) shl 16) or ((bytes[7].toLong() and 0xFF) shl 24)
                    val actual = (bytes.size - 14 - 2).coerceAtLeast(0)
                    if (declared > actual) {
                        lastErr = "FIT 文件不完整（头部声明 $declared 字节，实际只有 $actual 字节）——下载中断或文件损坏，请重新下载"
                        return null
                    }
                }
                val fr = FitParser.parse(bytes)
                if (fr == null) { lastErr = "FIT 文件无法解析（${bytes.size} 字节，可能不是标准 FIT）"; null }
                else if (fr.points.isEmpty()) { lastErr = "FIT 无有效轨迹点（${bytes.size} 字节）"; null }
                else fr.points
            } else {
                val pts = GpxToFitConverter.parseGpxBytes(bytes)
                if (pts.isEmpty()) { lastErr = "GPX 无有效轨迹点（${bytes.size} 字节）"; null } else pts
            }
        } catch (e: Exception) {
            lastErr = "解析异常：${e.message}"
            null
        }
    }

    private fun refreshSourceSelection() {
        for (i in 0 until gridMergeSource.childCount) {
            val b = gridMergeSource.getChildAt(i) as? PlatformButton ?: continue
            val tag = b.tag as? String ?: continue
            val ds = DataSource.fromShortName(tag)
            // 未登录平台恒灰（强反差），不被选中态覆盖
            if (ds != null && !prefs.isLoggedIn(ds)) { b.setPlatformState(false, false); continue }
            if (tag == "local") b.setPlatformState(localMode, true)
            else b.setPlatformState((tag == source?.shortName) && !localMode, true)
        }
    }

    private fun platformColor(tag: String): Int = when (tag) {
        "igp" -> color(R.color.igp_green)
        "xz" -> color(R.color.xingzhe_blue)
        "mg" -> color(R.color.magene_blue)
        "bb" -> color(R.color.blackbird_green)
        "br" -> color(R.color.bryton_red)
        "gt" -> color(R.color.giant_blue)
        "gm", "gcn" -> color(R.color.garmin_blue)
        "cscn", "cs" -> color(R.color.coros_red)
        "wo" -> color(R.color.wahoo_red)
        "ob" -> color(R.color.outbase_orange)
        "mw" -> color(R.color.mywhoosh_orange)
        "zf" -> color(R.color.zwift_purple)
        "icu" -> color(R.color.intervals_icu_orange)
        "kp" -> color(R.color.keep_yellow)
        "cd" -> color(R.color.codoon_green)
        "zp" -> color(R.color.zepp_blue)
        "kt" -> color(R.color.komoot_red)
        "su" -> color(R.color.suunto_blue)
        else -> color(R.color.primary)
    }

    // ================= Step2 多选列表 =================
    /** 加载记录（v8.1.2 分页）：append=false 首屏预取 30 条；append=true 追加更早记录 */
    private fun loadActivities(append: Boolean = false) {
        val src = source ?: run { toast("请先选择来源平台"); return }
        if (pageLoading) return
        pageLoading = true
        if (!append) {
            btnMergeNext.isEnabled = false
            btnMergeNext.text = "加载中..."
        }
        tvMergeHint.text = if (append) "正在加载更早记录..." else "正在获取 ${src.displayName} 活动列表..."
        val btnMore = view?.findViewById<TextView>(R.id.btnLoadMore)
        btnMore?.isEnabled = false
        lifecycleScope.launch {
            val res = withTimeoutOrNull(25_000) {
                withContext(Dispatchers.IO) {
                    (activity as? MainActivity)?.fetchMergeActivities(src, fromDate, toDate, pageSkip)
                }
            }
            pageLoading = false
            btnMergeNext.isEnabled = true
            btnMergeNext.text = "下一步：选择记录"
            btnMore?.isEnabled = true
            if (res == null) {
                tvMergeHint.text = "加载超时：网络不佳或平台响应慢"
                toast("加载超时（网络慢或平台响应慢），可重试；也可改用本地文件合并/生成贴纸")
                return@launch
            }
            val records = res.records
            if (records.isEmpty()) {
                listHasMore = false
                btnMore?.visibility = android.view.View.GONE
                tvMergeHint.text = if (fromDate != null) "所选日期范围内没有记录" else "未获取到 ${src.displayName} 活动记录"
                if (!append) toast("未获取到活动记录：登录态可能失效或该平台接口异常；也可改用本地文件合并/生成贴纸")
                applyDateFilter()
                return@launch
            }
            allRecords = if (append) (allRecords + records) else records
            pageSkip += records.size
            listHasMore = res.hasMore
            btnMore?.visibility = if (listHasMore) android.view.View.VISIBLE else android.view.View.GONE
            selectedIndexes.clear(); rangeMode = false; rangeAnchor = -1
            applyDateFilter()
            refreshDateFilterViews()
            if (!append) showStep(2)
        }
    }

    /** 日期范围筛选：先选开始日期，再选结束日期（合并通常是跨好几天） */
    private fun pickDateFilter() {
        val cal = java.util.Calendar.getInstance()
        android.app.DatePickerDialog(requireContext(), { _, y, m, d ->
            val start = String.format(Locale.US, "%04d-%02d-%02d", y, m + 1, d)
            // 第二段：结束日期
            android.app.DatePickerDialog(requireContext(), { _, y2, m2, d2 ->
                val end = String.format(Locale.US, "%04d-%02d-%02d", y2, m2 + 1, d2)
                if (end < start) {
                    toast("结束日期不能早于开始日期")
                } else {
                    fromDate = start; toDate = end
                    pageSkip = 0; listHasMore = false   // v8.1.2: 日期跳转=重置分页重新拉取
                    refreshDateFilterViews()
                    loadActivities()
                }
            }, y, m, d).show()
        }, cal.get(java.util.Calendar.YEAR), cal.get(java.util.Calendar.MONTH), cal.get(java.util.Calendar.DAY_OF_MONTH)).show()
    }

    private fun refreshDateFilterViews() {
        val pick = view?.findViewById<TextView>(R.id.btnPickDate)
        val clear = view?.findViewById<TextView>(R.id.btnClearDate)
        if (fromDate == null) {
            pick?.text = "📅 日期范围"
            clear?.text = "最近记录"
            clear?.setTextColor(color(R.color.text_secondary))
        } else {
            pick?.text = "📅 ${fromDate!!.substring(5)} ~ ${toDate!!.substring(5)}"
            clear?.text = "✕ 清除"
            clear?.setTextColor(color(R.color.primary))
        }
    }

    /** 取记录所属日期（yyyy-MM-dd），兼容各平台 startTime 格式 */
    private fun dayOf(rec: ActivityRecord): String = rec.startTime.take(10)

    /** 应用当前筛选展示列表（拉取时已按范围过滤，这里兜底再滤一次） */
    private fun applyDateFilter() {
        val src = source ?: return
        val all = allRecords
        val filtered = if (fromDate == null) all else all.filter { val d = dayOf(it); d >= fromDate!! && d <= toDate!! }
        tvMergeHint.text = if (fromDate == null)
            "已加载最近 ${all.size} 条 · 点「📅 日期范围」可检索更早记录（合并通常跨好几天）"
        else
            "${fromDate!!.substring(5)} ~ ${toDate!!.substring(5)} 共 ${filtered.size} 条"
        if (filtered.isEmpty()) {
            tvMergeSelected.text = "已选 0 条"
            mergeAdapter = MergeAdapter(filtered)
            rvMergeList.adapter = mergeAdapter
            btnDoMerge.isEnabled = false
            btnDoMerge.text = "合并"
            return
        }
        selectedIndexes.clear(); rangeMode = false; rangeAnchor = -1
        mergeAdapter = MergeAdapter(filtered)
        rvMergeList.adapter = mergeAdapter
        refreshSelectionHint()
    }

    private fun onItemClick(pos: Int) {
        // 连续多选模式：第一次点=起点，第二次点=终点，自动选中区间
        if (rangeMode) {
            if (rangeAnchor < 0) {
                rangeAnchor = pos
                toast("起点已标记，请再点选终点")
            } else {
                val a = minOf(rangeAnchor, pos); val b = maxOf(rangeAnchor, pos)
                selectedIndexes.addAll(a..b)
                rangeMode = false; rangeAnchor = -1
                toast("已选择 ${b - a + 1} 条记录")
                updateRangeBtn()
            }
            mergeAdapter?.notifyDataSetChanged()
            refreshSelectionHint()
            return
        }
        if (!selectedIndexes.add(pos)) selectedIndexes.remove(pos)
        refreshSelectionHint()
    }

    private fun updateRangeBtn() {
        val btn = view?.findViewById<TextView>(R.id.btnMergeRange) ?: return
        btn.background = if (rangeMode) requireContext().getDrawable(R.drawable.merge_chip_white_on)
        else requireContext().getDrawable(R.drawable.merge_chip_white)
        btn.setTextColor(if (rangeMode) color(R.color.primary) else color(R.color.text_primary))
    }

    private fun selectToday() {
        val adapter = mergeAdapter ?: return
        val today = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
        var added = 0
        for (i in adapter.records.indices) {
            val rec = adapter.records[i]
            if (rec.startTime.startsWith(today)) { if (selectedIndexes.add(i)) added++ }
        }
        if (added == 0) toast("今天没有记录，已选其他记录试试")
        refreshSelectionHint()
    }

    private fun toggleRangeMode() {
        rangeMode = !rangeMode
        rangeAnchor = -1
        toast(if (rangeMode) "连续多选模式：先点起点记录，再点终点记录" else "已退出连续多选")
        updateRangeBtn()
        mergeAdapter?.notifyDataSetChanged()
    }

    private fun clearSelection() { selectedIndexes.clear(); rangeMode = false; rangeAnchor = -1; refreshSelectionHint() }

    private fun refreshSelectionHint() {
        mergeAdapter?.notifyDataSetChanged()
        val n = selectedIndexes.size
        tvMergeHint.text = "共 ${mergeAdapter?.records?.size ?: 0} 条记录 · 点按勾选（单选生成贴纸，多选合并）"
        tvMergeSelected.text = "已选 $n 条"
        btnDoMerge.text = when {
            n >= 2 -> "合并（$n 条）"
            n == 1 -> "生成贴纸（1 条）"
            else -> "合并"
        }
        btnDoMerge.isEnabled = n >= 1
    }

    // ================= 合并执行（单选=生成贴纸，多选=合并） =================
    private fun doMerge() {
        val src = source ?: return
        val adapter = mergeAdapter ?: return
        val chosen = adapter.records.filterIndexed { i, _ -> i in selectedIndexes }
        if (chosen.isEmpty()) { toast("请至少选择 1 条记录"); return }
        val isMerge = chosen.size >= 2
        btnSaveMerge.isEnabled = false
        tvMergeHint.text = if (isMerge) "正在合并 ${chosen.size} 条记录..." else "正在生成单条贴纸..."
        lifecycleScope.launch {
            val groups = ArrayList<List<GpxToFitConverter.TrackPoint>>()
            val main = activity as? MainActivity ?: return@launch
            var parsedSport = -1
            var fitFail = 0
            var downloadFail = 0
            var lastErr = ""
            for (rec in chosen) {
                val bytes = withContext(Dispatchers.IO) { main.downloadForMerge(src, rec) }
                if (bytes == null || bytes.isEmpty()) {
                    downloadFail++
                    lastErr = "下载返回为空（登录态可能失效）"
                    continue
                }
                if (GpxToFitConverter.isFit(bytes)) {
                    val fr = FitParser.parse(bytes)
                    if (fr != null && fr.points.isNotEmpty()) {
                        groups.add(fr.points)
                        if (parsedSport < 0 && fr.sport > 0) parsedSport = fr.sport
                    } else {
                        fitFail++
                        lastErr = "FIT 解析失败（${bytes.size} 字节，文件可能不完整或格式特殊）"
                    }
                } else {
                    try {
                        val pts = GpxToFitConverter.parseGpxBytes(bytes)
                        if (pts.isNotEmpty()) groups.add(pts)
                        else { fitFail++; lastErr = "GPX 无有效轨迹点（${bytes.size} 字节，室内运动如跑步机无GPS轨迹，请选室外记录）" }
                    } catch (e: Exception) {
                        fitFail++
                        lastErr = "GPX 解析异常：${e.message}"
                    }
                }
            }
            btnSaveMerge.isEnabled = true
            if (groups.isEmpty()) {
                val why = if (lastErr.isNotEmpty()) "\n原因：$lastErr" else ""
                tvMergeHint.text = "处理失败：下载失败 $downloadFail / 解析失败 $fitFail 条$why"
                toast("处理失败：无可解析的轨迹（下载失败 $downloadFail / 解析失败 $fitFail 条）$why")
                return@launch
            }
            if (groups.size < chosen.size && isMerge) {
                tvMergeHint.text = "部分记录无法解析（${groups.size}/${chosen.size}），继续处理剩余..."
            }
            val result = try {
                withContext(Dispatchers.Default) {
                    // 单选：强制用解析出的真实运动类型；多选：自动统一
                    TrackMerger.mergePointGroups(groups, forcedSport = if (!isMerge) parsedSport else -1)
                }
            } catch (e: Exception) {
                toast("处理失败：${e.message}"); return@launch
            }
            mergedResult = result
            showPreview(result, chosen.size)
        }
    }

    private fun showPreview(result: TrackMerger.MergedResult, mergedCount: Int) {
        previewTrack.points = result.points
        // v8.1.1c: 默认标题=运动类型+日期（原硬编码"RIDING·青岛"），用户可在贴纸面板修改为任意地址/文字
        try {
            val dd = java.text.SimpleDateFormat("MM-dd", java.util.Locale.US).format(java.util.Date(result.startTime))
            val sportCn = TrackMerger.sportName(result.sport).let { when (it) { "running" -> "跑步"; "hiking" -> "徒步"; else -> "骑行" } }
            previewTrack.titleOverride = "$sportCn · $dd"
            view?.findViewById<android.widget.EditText>(R.id.editStickerTitle)?.setText("$sportCn · $dd")
        } catch (e: Exception) {
            previewTrack.titleOverride = "RIDING"
        }
        previewTrack.stickerPreview = true
        syncPreviewParams()
        buildStats(result, mergedCount)
        mergeStepHint.text = if (mergedCount >= 2) "3/4 · $mergedCount 条已合并 → 1 条（可导出贴纸/GPX/FIT）" else "3/4 · 单条预览（可导出贴纸/GPX/FIT）"
        showStep(3)
        // 统计里展示段数
    }

    private fun buildStats(result: TrackMerger.MergedResult, mergedCount: Int) {
        gridMergeStats.removeAllViews()
        fun addStat(label: String, value: String) {
            val box = LinearLayout(requireContext()).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(0, (6 * dp).toInt(), 0, (6 * dp).toInt())
            }
            val lv = TextView(requireContext()).apply {
                text = label; textSize = 11f; setTextColor(color(R.color.text_secondary))
            }
            val vv = TextView(requireContext()).apply {
                text = value; textSize = 15f; setTextColor(color(R.color.text_primary)); setTypeface(null, android.graphics.Typeface.BOLD)
            }
            box.addView(lv); box.addView(vv)
            gridMergeStats.addView(box, GridLayout.LayoutParams().apply { columnSpec = GridLayout.spec(GridLayout.UNDEFINED, 1f) })
        }
        addStat("运动类型", TrackMerger.sportName(result.sport).let { when (it) { "running" -> "跑步"; "hiking" -> "徒步"; else -> "骑行" } })
        addStat(if (mergedCount >= 2) "合并段数" else "记录数", if (mergedCount >= 2) "$mergedCount 条 → 1 条" else "1 条（未合并）")
        addStat("总距离", String.format(Locale.US, "%.2f km", result.totalDistanceKm))
        addStat("总时长", formatDuration(result.totalDurationSec))
        addStat("累计爬升", String.format(Locale.US, "%.0f m", result.ascentM))
        addStat("平均心率", if (result.avgHr > 0) "${result.avgHr} bpm" else "—")
        addStat("平均踏频", if (result.avgCad > 0) "${result.avgCad} rpm" else "—")
        addStat("平均功率", if (result.avgPower > 0) "${result.avgPower} W" else "—")
    }

    private fun formatDuration(sec: Long): String {
        val h = sec / 3600; val m = (sec % 3600) / 60; val s = sec % 60
        return if (h > 0) String.format(Locale.US, "%d:%02d:%02d", h, m, s) else String.format(Locale.US, "%d:%02d", m, s)
    }

    /** 预览即贴纸：把全部贴纸参数同步到 previewTrack（所见即所得） */
    private fun syncPreviewParams() {
        previewTrack.dataStyle = stickerStyle
        previewTrack.include3d = sticker3d
        previewTrack.lineColorMode = stickerLineMode
        previewTrack.textColorMode = stickerTextMode
        previewTrack.items = stickerItems
        previewTrack.posMode = stickerPos
    }

    // ================= v8.0.4 模板画廊（21 预设横向滑动 + 最后一张自定义） =================

    private fun chipBg(selected: Boolean): GradientDrawable = GradientDrawable().apply {
        cornerRadius = 16 * dp
        setColor(if (selected) 0xFF2B8CFF.toInt() else 0xFFF1F4F8.toInt())
        if (!selected) setStroke((1 * dp).toInt(), 0xFFE3EEFA.toInt())
    }

    /** v8.0.5 分类 tab（效果图 UI）：5 类各一个胶囊 tab，点击跳到该类第一张预设 */
    private fun buildCategoryTabs() {
        categoryTabRow.removeAllViews()
        StickerCore.StickerTemplates.CATEGORIES.forEachIndexed { ci, cat ->
            val tab = TextView(requireContext()).apply {
                text = cat
                textSize = 12f
                gravity = Gravity.CENTER
                setPadding((16 * dp).toInt(), (8 * dp).toInt(), (16 * dp).toInt(), (8 * dp).toInt())
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply {
                    marginEnd = (8 * dp).toInt()
                }
            }
            tab.setOnClickListener {
                val first = StickerCore.StickerTemplates.ALL.indexOfFirst { it.category == cat }
                if (first >= 0) selectTemplate(first)
            }
            categoryTabRow.addView(tab)
        }
    }

    /** 选中第 idx 个预设（0-20），应用并收起组合面板 */
    private fun selectTemplate(idx: Int) {
        val t = StickerCore.StickerTemplates.ALL.getOrNull(idx) ?: return
        templateIdx = idx
        comboOverride = false
        comboPanelOpen = false
        comboPanel.visibility = View.GONE
        previewTrack.applyTemplate(t)
        refreshStickerChips()
        updateCategoryTabs()
    }

    /** v8.0.5-2 角标可见性：大卡左上「分类·模板名」+ 右上「N/24」（默认开，可关） */
    private fun updateBadgeVisibility() {
        stickerCardTitle.visibility = if (badgeOn) View.VISIBLE else View.GONE
        stickerCardPage.visibility = if (badgeOn) View.VISIBLE else View.GONE
        previewTrack.badgeOn = badgeOn   // v8.0.6 同步到同源 HTML 角标
    }

    /** v8.0.5-2 轨迹按钮带颜色点：一眼看出当前轨迹样式（橙焰/纯白/黑细/灰细/霓虹/热力/冰蓝3D/光绘 8 种可循环切换） */
    private fun trackLabel(t: StickerCore.StickerTrack): CharSequence {
        val dotColor = when (t) {
            StickerCore.StickerTrack.ORANGE_GRAD -> 0xFFFF6A00.toInt()
            StickerCore.StickerTrack.WHITE -> 0xFFE8EAED.toInt()
            StickerCore.StickerTrack.BLACK_FINE -> 0xFF111827.toInt()
            StickerCore.StickerTrack.GRAY_FINE -> 0xFF9AA0A6.toInt()
            StickerCore.StickerTrack.NEON -> 0xFFFF2EC4.toInt()
            StickerCore.StickerTrack.HEAT -> 0xFFFF3D00.toInt()
            StickerCore.StickerTrack.ICE_3D -> 0xFF00BFFF.toInt()
            StickerCore.StickerTrack.PHANTOM -> 0xFFFFC800.toInt()
        }
        val sp = SpannableString("轨迹:●${t.key}")
        sp.setSpan(ForegroundColorSpan(dotColor), 3, 4, android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        return sp
    }

    /** v8.0.5 打开自定义编辑面板：任何预设都可编辑；改动任一维度即变为自定义 */
    private fun openCombo() {
        comboPanelOpen = true
        comboPanel.visibility = View.VISIBLE
        previewTrack.useTemplate = true
        refreshStickerChips()
    }

    /** v8.0.5 分类 tab 选中态刷新：按当前预设所在类别高亮 */
    private fun updateCategoryTabs() {
        val curCat = if (templateIdx >= 0) StickerCore.StickerTemplates.ALL[templateIdx].category else null
        for (j in 0 until categoryTabRow.childCount) {
            val tab = categoryTabRow.getChildAt(j) as? TextView ?: continue
            val sel = tab.text.toString() == curCat
            tab.background = chipBg(selected = sel)
            tab.setTextColor(if (sel) color(R.color.white) else color(R.color.text_secondary))
        }
    }

    private fun refreshStickerChips() {
        val total = StickerCore.StickerTemplates.ALL.size
        stickerTemplateName.text = if (templateIdx >= 0) {
            val t = StickerCore.StickerTemplates.ALL[templateIdx]
            // 效果图 1:1：中间页码 N/24；角标显示「分类 · 模板名」+「N/24」
            stickerCardTitle.text = "${t.category} · ${t.name}"
            updateBadgeVisibility()
            stickerCardPage.text = "${templateIdx + 1}/$total"
            "${templateIdx + 1}/$total"
        } else {
            stickerCardTitle.text = "自定义组合"
            updateBadgeVisibility()
            stickerCardPage.text = "C/$total"
            "自定义组合 · ${StickerCore.StickerTemplates.COMBO_COUNT} 种"
        }
        btnStickerBadge.text = if (badgeOn) "角标:开" else "角标:关"
        btnStickerBadge.setTextColor(if (badgeOn) color(R.color.primary) else color(R.color.text_secondary))
        btnStickerTrack.text = if (previewTrack.trackOn) "轨迹:平面" else "轨迹:关"
        btnStickerTrack.setTextColor(if (previewTrack.trackOn) color(R.color.primary) else color(R.color.text_secondary))
        // v8.1.1 角标按钮只显示两种状态：鸡翅OB / 自定义（其余品牌不再出现）
        btnStickerBrand.text = if (previewTrack.brandIdx == TrackPreviewView.BRAND_CUSTOM) "角标:自定义" else "角标:鸡翅OB"
        btnStickerBrand.setTextColor(if (previewTrack.brandIdx == TrackPreviewView.BRAND_CUSTOM) color(R.color.primary) else color(R.color.text_secondary))
        btnStickerStyle.text = "背景:${previewTrack.bgType.key}"
        btnSticker3d.text = trackLabel(previewTrack.trackType)
        btnStickerColor.text = "布局:${previewTrack.layoutType.key}"
        btnStickerTextColor.text = "字色:${previewTrack.textType.key}"
        btnStickerItems.text = "数据:${stickerItems.size}项"
        btnStickerPos.text = "位置:${TrackPreviewView.posNames[stickerPos]}"
        btnStickerWidth.text = "粗细:${TrackPreviewView.trackWidthNames[previewTrack.trackWidth]}"
        btnStickerWidth.setTextColor(if (previewTrack.trackWidth != 3) color(R.color.primary) else color(R.color.text_secondary))
        btnStickerGlow.text = if (previewTrack.track3d) "发光:3D关" else if (previewTrack.glowOn) "发光:开" else "发光:关"
        btnSticker3dBand.text = if (previewTrack.show3dBand) "海拔:开" else "海拔:关"
        btnStickerTransparent.text = if (previewTrack.transparentBg) "透明:开" else "透明:关"
        btnStickerDataLayer.text = if (previewTrack.dataLayerOn) "数据层:开" else "数据层:关"
        btnStickerWatermark.text = if (previewTrack.watermarkOn) "水印:开" else "水印:关"
        btnStickerSummary.text = previewTrack.summaryStats?.let {
            "往期数据:${it.count}次 · ${it.fmtKm()}km"
        } ?: "往期数据:未填（点击录入）"
        btnStickerPhoto.text = if (previewTrack.overlayBitmap != null) {
            val onPhoto = previewTrack.bgType in photoBgs
            "🖼️ 照片:已选择 · ${if (onPhoto) "当前背景生效中" else "点此切换照片背景"}"
        } else {
            "🖼️ 选照片:未选择（透明叠加/磨砂玻璃/双图拼接用）"
        }
        val accent = color(R.color.primary)
        btnStickerStyle.setTextColor(if (previewTrack.bgType != StickerCore.StickerBg.DEEP_SPACE) accent else color(R.color.text_secondary))
        btnSticker3d.setTextColor(if (previewTrack.trackType != StickerCore.StickerTrack.ORANGE_GRAD) accent else color(R.color.text_secondary))
        btnStickerColor.setTextColor(if (previewTrack.layoutType != StickerCore.StickerLayout.TRIPLE) accent else color(R.color.text_secondary))
        btnStickerTextColor.setTextColor(if (previewTrack.textType != StickerCore.StickerText.WHITE) accent else color(R.color.text_secondary))
        btnStickerItems.setTextColor(if (stickerItems != StickerCore.ITEM_DEFAULT) accent else color(R.color.text_secondary))
        btnStickerPos.setTextColor(if (stickerPos != TrackPreviewView.POS_CENTER) accent else color(R.color.text_secondary))
        btnStickerGlow.setTextColor(if (previewTrack.track3d) color(R.color.text_secondary) else if (previewTrack.glowOn) accent else color(R.color.text_secondary))
        btnSticker3dBand.setTextColor(if (previewTrack.show3dBand) accent else color(R.color.text_secondary))
        btnStickerTransparent.setTextColor(if (previewTrack.transparentBg) accent else color(R.color.text_secondary))
        btnStickerDataLayer.setTextColor(if (previewTrack.dataLayerOn) accent else color(R.color.text_secondary))
        btnStickerWatermark.setTextColor(if (previewTrack.watermarkOn) accent else color(R.color.text_secondary))
        btnStickerSummary.setTextColor(if (previewTrack.summaryStats != null) accent else color(R.color.text_secondary))
        // v8.0.9 举一反三：任何按钮改完都统一触发一次同源重渲染，保证「点啥都实时反馈到预览」
        previewTrack.invalidate()
    }

    /** v8.1.0 背景选择条：22 种背景一次可见可点（修复"海报橙找不到/只能循环点"） */
    private val bgSwatches = mapOf(
        StickerCore.StickerBg.DEEP_SPACE to 0xFF0B0D1C.toInt(), StickerCore.StickerBg.CHECKER to 0xFF101014.toInt(),
        StickerCore.StickerBg.NEON to 0xFF0A0714.toInt(), StickerCore.StickerBg.PURE_BLACK to 0xFF08080A.toInt(),
        StickerCore.StickerBg.MINIMAL_WHITE to 0xFFFFFFFF.toInt(), StickerCore.StickerBg.CREAM to 0xFFF6F1E3.toInt(),
        StickerCore.StickerBg.LIGHT_GRAY to 0xFFECEFF2.toInt(), StickerCore.StickerBg.WARM_POSTER to 0xFFFFE1C2.toInt(),
        StickerCore.StickerBg.MAP_GRID to 0xFF182338.toInt(), StickerCore.StickerBg.SATELLITE to 0xFF0C1626.toInt(),
        StickerCore.StickerBg.LIGHT_MAP to 0xFFE0E6EC.toInt(), StickerCore.StickerBg.CONTOUR to 0xFFF8E3C8.toInt(),
        StickerCore.StickerBg.HEAT_BG to 0xFF2A0D10.toInt(), StickerCore.StickerBg.ORANGE_BAND to 0xFF1C1A18.toInt(),
        StickerCore.StickerBg.ICE_BAND to 0xFF123C55.toInt(), StickerCore.StickerBg.LIGHT_TRAIL to 0xFF080B16.toInt(),
        StickerCore.StickerBg.DUAL_DARK to 0xFF0D0F1A.toInt(), StickerCore.StickerBg.POSTER_ORANGE to 0xFFFC4C02.toInt(),
        StickerCore.StickerBg.RETRO_PURPLE to 0xFF2A1050.toInt(), StickerCore.StickerBg.ANNUAL_DARK to 0xFF16203C.toInt(),
        StickerCore.StickerBg.PHOTO_OVERLAY to 0xFF88A0B8.toInt(), StickerCore.StickerBg.FROSTED to 0xFFC9D2DC.toInt(),
        StickerCore.StickerBg.PHOTO_SPLIT to 0xFF0D0F1A.toInt(),
    )

    private fun buildBgChips() {
        bgChipRow.removeAllViews()
        val dp = resources.displayMetrics.density
        StickerCore.StickerBg.entries.forEach { bg ->
            val chip = LinearLayout(requireContext()).apply {
                orientation = LinearLayout.VERTICAL
                gravity = Gravity.CENTER
                setPadding((6 * dp).toInt(), 0, (6 * dp).toInt(), 0)
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply {
                    marginEnd = (7 * dp).toInt()
                }
                isClickable = true
                setOnClickListener {
                    previewTrack.bgType = bg
                    comboOverride = true
                    refreshStickerChips()
                    bgPickerRow.visibility = View.GONE
                }
            }
            val swatch = View(requireContext()).apply {
                val sw = bgSwatches[bg] ?: 0xFF0B0D1C.toInt()
                background = GradientDrawable().apply {
                    shape = GradientDrawable.RECTANGLE
                    cornerRadius = 10 * dp
                    if (bg == StickerCore.StickerBg.PHOTO_OVERLAY) setStroke((2 * dp).toInt(), 0xFF9DB4C8.toInt()) else setColor(sw)
                    setColor(sw)
                    if (bg == StickerCore.StickerBg.MINIMAL_WHITE || bg == StickerCore.StickerBg.CREAM ||
                        bg == StickerCore.StickerBg.LIGHT_GRAY || bg == StickerCore.StickerBg.WARM_POSTER ||
                        bg == StickerCore.StickerBg.LIGHT_MAP || bg == StickerCore.StickerBg.CONTOUR || bg == StickerCore.StickerBg.FROSTED)
                        setStroke((2 * dp).toInt(), 0xFFCCCCCC.toInt())
                }
                layoutParams = LinearLayout.LayoutParams((56 * dp).toInt(), (40 * dp).toInt())
            }
            val name = TextView(requireContext()).apply {
                text = bg.key
                textSize = 9f
                maxLines = 1
                setTextColor(if (bg == previewTrack.bgType) color(R.color.primary) else color(R.color.text_secondary))
                gravity = Gravity.CENTER
            }
            chip.addView(swatch)
            chip.addView(name)
            bgChipRow.addView(chip)
        }
    }

    // ================= 保存 / 导出 =================
    private fun saveMerge() {
        val result = mergedResult ?: return
        val name = mergeFileName()
        val dir = File(MainActivity.SAVE_DIR, "合并")
        if (!dir.exists()) dir.mkdirs()
        val fit = try { GpxToFitConverter.convertPoints(result.points, result.sport) } catch (e: Exception) { toast("FIT 生成失败：${e.message}"); return }
        val file = File(dir, "$name.fit")
        try {
            file.writeBytes(fit)
            savedFile = file
            tvMergeResultTitle.text = "✅ 合并成功"
            tvMergeResultFile.text = "$name.fit"
            tvMergeResultPath.text = file.absolutePath
            setupUploadGrid()
            showStep(4)
            toast("已保存：${file.absolutePath}")
        } catch (e: Exception) {
            toast("保存失败：${e.message}")
        }
    }

    private fun exportMerge(exportFit: Boolean) {
        val result = mergedResult ?: return
        val dir = File(MainActivity.SAVE_DIR, "合并")
        if (!dir.exists()) dir.mkdirs()
        val name = mergeFileName()
        try {
            val data = if (exportFit) {
                GpxToFitConverter.convertPoints(result.points, result.sport)
            } else {
                TrackMerger.buildGpx(result, "merged-${TrackMerger.sportName(result.sport)}")
            }
            val ext = if (exportFit) "fit" else "gpx"
            val file = File(dir, "$name.$ext")
            file.writeBytes(data)
            toast("已导出：${file.absolutePath}")
        } catch (e: Exception) {
            toast("导出失败：${e.message}")
        }
    }

    private fun mergeFileName(): String {
        val src = if (localMode) null else source
        val ts = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())
        return "${src?.shortName ?: "local"}_merged_$ts"
    }

    /** Outbase 式"可点选 N 个展示信息"：10 项指标多选（2~6 项，超出提示） */
    private fun pickStickerItems() {
        val all = StickerCore.ITEM_DEFS.entries.toList() // (id, (名称, 单位))
        val names = all.map { it.value.first }
        val checked = BooleanArray(all.size) { i -> stickerItems.contains(all[i].key) }
        com.google.android.material.dialog.MaterialAlertDialogBuilder(requireContext())
            .setTitle("可点选展示信息（2~6 项）")
            .setMultiChoiceItems(names.toTypedArray(), checked) { _, which, isChecked ->
                checked[which] = isChecked
            }
            .setPositiveButton("确认") { _, _ ->
                val sel = all.filterIndexed { i, _ -> checked[i] }.map { it.key }
                if (sel.size < 2) { toast("至少选择 2 项数据"); return@setPositiveButton }
                if (sel.size > 6) { toast("最多选择 6 项数据"); return@setPositiveButton }
                stickerItems = sel.toMutableList()
                previewTrack.items = stickerItems
                refreshStickerChips()
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** 手输数据编辑对话框（v8.1.1c）：FIT 里没有/不满意的数据可手输覆盖，空=恢复实际值 */
    private fun showDataEditDialog() {
        val fields = listOf(
            "distance" to "距离 (km)", "duration" to "时长 (如 1:00:33)", "avgSpeed" to "均速 (km/h)",
            "maxSpeed" to "最大速度", "climb" to "累计爬升 (m)", "hr" to "平均心率",
            "power" to "平均功率", "kcal" to "卡路里", "cad" to "平均踏频",
            "altMax" to "最高海拔 (m)", "altMin" to "最低海拔 (m)"
        )
        val box = android.widget.LinearLayout(requireContext()).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            val pad = (14 * dp).toInt()
            setPadding(pad, pad, pad, 0)
        }
        val inputs = mutableListOf<Pair<String, android.widget.EditText>>()
        fields.forEach { (key, label) ->
            val row = android.widget.LinearLayout(requireContext()).apply {
                orientation = android.widget.LinearLayout.HORIZONTAL
                gravity = android.view.Gravity.CENTER_VERTICAL
            }
            val lv = TextView(requireContext()).apply {
                text = label; textSize = 13f; setTextColor(color(R.color.text_primary))
                layoutParams = android.widget.LinearLayout.LayoutParams(0, android.widget.LinearLayout.LayoutParams.WRAP_CONTENT, 0.45f)
            }
            val ev = android.widget.EditText(requireContext()).apply {
                textSize = 13f
                setTextColor(color(R.color.text_primary))
                hint = "留空=用实际值"
                setHintTextColor(color(R.color.text_secondary))
                setSingleLine(true)
                val cur = previewTrack.currentDataOverride(key)
                if (cur != null) setText(cur)
                background = requireContext().getDrawable(R.drawable.input_box_bg)
                setPadding((8 * dp).toInt(), (6 * dp).toInt(), (8 * dp).toInt(), (6 * dp).toInt())
                layoutParams = android.widget.LinearLayout.LayoutParams(0, android.widget.LinearLayout.LayoutParams.WRAP_CONTENT, 0.55f).apply { marginStart = (8 * dp).toInt() }
            }
            row.addView(lv); row.addView(ev)
            box.addView(row, android.widget.LinearLayout.LayoutParams.MATCH_PARENT, android.widget.LinearLayout.LayoutParams.WRAP_CONTENT)
            box.getChildAt(box.childCount - 1).apply {
                (this.layoutParams as android.widget.LinearLayout.LayoutParams).bottomMargin = (8 * dp).toInt()
            }
            inputs.add(key to ev)
        }
        android.app.AlertDialog.Builder(requireContext())
            .setTitle("手输数据（可留空）")
            .setView(box)
            .setPositiveButton("保存") { _, _ ->
                inputs.forEach { (key, ev) ->
                    previewTrack.setDataOverride(key, ev.text?.toString()?.trim())
                }
                toast("数据已更新，预览实时刷新")
            }
            .setNeutralButton("清空手输") { _, _ ->
                previewTrack.clearDataOverrides()
                toast("已清空手输数据")
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** 导出贴纸 PNG（v8.0.6：走同源 WebView 渲染引擎，与预览/效果图 100% 一致；transparentBg=true 时导出真正透明背景 PNG） */
    private fun exportSticker() {
        val result = mergedResult ?: return
        previewTrack.points = result.points
        // 等一帧让预览刷新，再异步渲染导出（与预览同源）
        previewTrack.postDelayed({
            try {
                previewTrack.exportTemplatePngAsync(
                    1024,
                    watermark = previewTrack.watermarkOn,
                    items = stickerItems,
                    dx = previewTrack.dx, dy = previewTrack.dy, scale = previewTrack.scale,
                    transparentBg = previewTrack.transparentBg
                ) { bmp ->
                    val dir = File(MainActivity.SAVE_DIR, "合并")
                    if (!dir.exists()) dir.mkdirs()
                    val file = File(dir, "${mergeFileName()}_sticker.png")
                    try {
                        java.io.FileOutputStream(file).use { bmp.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, it) }
                        toast("贴纸已导出：${file.absolutePath}")
                    } catch (e: Exception) {
                        toast("贴纸保存失败：${e.message}")
                    }
                }
            } catch (e: Exception) {
                toast("贴纸生成失败：${e.message}")
            }
        }, 60)
    }

    // ================= Step4 上传 =================
    private fun setupUploadGrid() {
        gridMergeUpload.removeAllViews()
        selectedUploadTags.clear()
        val targets = DataSource.entries.filter { UploadSupport.fromDataSource(it).available }
        if (targets.isEmpty()) {
            val tv = TextView(requireContext()).apply {
                text = "暂无可用上传平台"
                textSize = 13f; setTextColor(color(R.color.text_secondary))
            }
            gridMergeUpload.addView(tv, GridLayout.LayoutParams().apply { columnSpec = GridLayout.spec(0, 4) })
            return
        }
        for (ds in targets) {
            val loggedIn = prefs.isLoggedIn(ds)
            val btn = PlatformButton(requireContext()).apply {
                tag = ds.shortName
                bind(platformColor(ds.shortName))
                buttonText = if (loggedIn) ds.displayName else "${ds.displayName}\n未登录"
                layoutParams = GridLayout.LayoutParams().apply {
                    width = 0; height = (48 * dp).toInt()
                    columnSpec = GridLayout.spec(GridLayout.UNDEFINED, 1f)
                    setMargins((2 * dp).toInt(), (2 * dp).toInt(), (2 * dp).toInt(), (2 * dp).toInt())
                }
                // v8.0.1: 未登录平台保持可点击（灰态下点击提示登录），与设置页一致
                setOnClickListener {
                    if (!prefs.isLoggedIn(ds)) { toast("请先登录 ${ds.displayName}"); return@setOnClickListener }
                    if (!selectedUploadTags.add(ds.shortName)) selectedUploadTags.remove(ds.shortName)
                    setPlatformState(ds.shortName in selectedUploadTags, true)
                }
            }
            // 未登录：设置页同款灰态（强反差）
            if (!loggedIn) btn.setPlatformState(false, false)
            gridMergeUpload.addView(btn)
        }
    }

    private fun uploadMerge() {
        val file = savedFile ?: run { toast("尚未保存合并文件"); return }
        if (selectedUploadTags.isEmpty()) { toast("未选择上传平台，文件已存本地"); return }
        val engine = com.jichi.ob.api.UploadEngine(requireContext())
        val result = mergedResult ?: return
        btnUploadMerge.isEnabled = false
        btnUploadMerge.text = "上传中..."
        lifecycleScope.launch {
            var ok = 0; var fail = 0
            val main = activity as? MainActivity ?: run { btnUploadMerge.isEnabled = true; return@launch }
            for (tag in selectedUploadTags.toList()) {
                val target = DataSource.fromShortName(tag) ?: continue
                val cred = prefs.getCredential(target) ?: continue
                val record = ActivityRecord(
                    id = "merged",
                    title = file.nameWithoutExtension,
                    startTime = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(Date(result.startTime * 1000)),
                    distance = result.totalDistanceKm,
                    duration = result.totalDurationSec.toInt(),
                    source = source ?: DataSource.IGPSPORT
                )
                val r = withContext(Dispatchers.IO) { engine.upload(target, cred, file.readBytes(), record) }
                main.runOnUiThread {
                    if (r.success) {
                        ok++
                        // v8.2.6: 合并上传成功 → 写平台日志 + 合并记录入库（首页登录卡/记录中心/平台日志立即可见）
                        try {
                            val cache = com.jichi.ob.util.ActivityCache.get(main)
                            cache.addPlatformLog(target.shortName, "导出",
                                "📤 合并上传: ${file.name} (${file.length()} 字节)")
                            cache.upsert(target.shortName, com.jichi.ob.util.ActivityCache.Entry(
                                id = "merged_" + System.currentTimeMillis(),
                                platform = target.shortName,
                                startTime = result.startTime * 1000,
                                type = "合并",
                                title = file.nameWithoutExtension,
                                distanceKm = result.totalDistanceKm,
                                durationSec = result.totalDurationSec.toInt(),
                                filename = file.name,
                                extra = ""
                            ))
                            main.runOnUiThread { main.refreshLoginCardsIfAny() }                        } catch (_: Exception) {}
                    } else fail++
                }
            }
            btnUploadMerge.isEnabled = true
            btnUploadMerge.text = "开始上传（未选平台则仅存本地）"
            tvMergeResultTitle.text = if (fail == 0) "✅ 合并+上传完成" else "✅ 合并完成（上传 $ok 成功 / $fail 失败）"
            toast(if (fail == 0) "已上传 $ok 个平台" else "上传完成：$ok 成功 / $fail 失败")
        }
    }

    private fun toast(msg: String) = Toast.makeText(requireContext(), msg, Toast.LENGTH_SHORT).show()

    // ================= Adapter =================
    inner class MergeAdapter(val records: List<ActivityRecord>) : RecyclerView.Adapter<MergeAdapter.VH>() {
        private val fmt = SimpleDateFormat("MM-dd HH:mm", Locale.US)
        private val dayFmt = SimpleDateFormat("yyyy-MM-dd", Locale.US)
        private val isoFmt = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US)

        /** 兼容 "yyyy-MM-dd HH:mm:ss" 与 ISO "yyyy-MM-dd'T'HH:mm:ss(.SSS)(Z)" 两种时间格式 */
        private fun parseTs(s: String): Long {
            return try {
                SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).parse(s)?.time
                    ?: isoFmt.parse(s)?.time
                    ?: 0L
            } catch (_: Exception) {
                try { isoFmt.parse(s)?.time ?: 0L } catch (_: Exception) { 0L }
            }
        }

        inner class VH(
            val root: LinearLayout,
            val dot: View,
            val tvTitle: TextView,
            val tvMeta: TextView,
            val tvCheck: TextView
        ) : RecyclerView.ViewHolder(root)

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
            val root = LinearLayout(parent.context).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = android.view.Gravity.CENTER_VERTICAL
                setPadding((14 * dp).toInt(), (10 * dp).toInt(), (14 * dp).toInt(), (10 * dp).toInt())
                background = itemBg(false)
                layoutParams = RecyclerView.LayoutParams(RecyclerView.LayoutParams.MATCH_PARENT, RecyclerView.LayoutParams.WRAP_CONTENT)
            }
            // 品牌小圆点
            val dot = View(parent.context).apply {
                background = GradientDrawable().apply { shape = GradientDrawable.OVAL; setColor(platformColor(source?.shortName ?: "")) }
                layoutParams = LinearLayout.LayoutParams((10 * dp).toInt(), (10 * dp).toInt()).apply { marginEnd = (10 * dp).toInt() }
            }
            // 中间文本
            val textBox = LinearLayout(parent.context).apply {
                orientation = LinearLayout.VERTICAL
                layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
            }
            val title = TextView(parent.context).apply {
                textSize = 14f; maxLines = 1
                setTextColor(color(R.color.text_primary)); setTypeface(null, android.graphics.Typeface.BOLD)
            }
            val meta = TextView(parent.context).apply {
                textSize = 11f; setTextColor(color(R.color.text_secondary))
            }
            textBox.addView(title); textBox.addView(meta)
            // 勾选状态
            val check = TextView(parent.context).apply {
                textSize = 20f
                setTextColor(color(R.color.primary))
            }
            root.addView(dot); root.addView(textBox); root.addView(check)
            return VH(root, dot, title, meta, check)
        }

        override fun onBindViewHolder(holder: VH, position: Int) {
            val rec = records[position]
            val ts = parseTs(rec.startTime)
            // v8.1.1: 咕咚室内跑（is_in_room=1）无GPS轨迹，列表标注🏠供用户避开
            val roomTag = if (rec.source == DataSource.CODOON && rec.extra == "room") "🏠" else ""
            holder.tvTitle.text = roomTag + (if (rec.title.isBlank()) "未命名运动" else rec.title)
            val day = if (ts > 0) dayFmt.format(Date(ts)) else rec.startTime.take(10)
            val t = if (ts > 0) fmt.format(Date(ts)) else "--:--"
            val dur = if (rec.duration > 0) formatDuration(rec.duration.toLong()) else "--:--"
            val dist = if (rec.distance > 0) String.format(Locale.US, "%.2f km", rec.distance) else "--"
            holder.tvMeta.text = "$day $t · $dist · $dur"
            val selected = position in selectedIndexes
            val isAnchor = rangeMode && position == rangeAnchor
            holder.tvCheck.text = when {
                isAnchor -> "①"
                selected -> "☑"
                else -> "○"
            }
            holder.tvCheck.setTextColor(if (selected || isAnchor) color(R.color.primary) else color(R.color.text_secondary))
            holder.root.background = itemBg(selected, isAnchor)
            holder.root.setOnClickListener { onItemClick(position) }
        }

        override fun getItemCount() = records.size

        private fun itemBg(selected: Boolean, isAnchor: Boolean = false): GradientDrawable {
            val g = GradientDrawable().apply {
                cornerRadius = 14 * dp
                setColor(if (selected || isAnchor) 0xFFEAF4FF.toInt() else Color.WHITE)
            }
            when {
                isAnchor -> g.setStroke((2 * dp).toInt(), 0xFFFC4C02.toInt()) // 起点：橙色描边
                selected -> g.setStroke((2 * dp).toInt(), platformColor(source?.shortName ?: ""))
                else -> g.setStroke((1 * dp).toInt(), 0xFFE8EEF4.toInt())
            }
            return g
        }
    }
}

app/src/main/java/com/jichi/ob/ui/PlatformButton.kt
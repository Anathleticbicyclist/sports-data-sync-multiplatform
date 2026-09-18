package com.jichi.ob.ui

import android.annotation.SuppressLint
import android.content.Intent
import android.graphics.Color
import android.net.Uri
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.jichi.ob.R
import com.jichi.ob.model.DataSource

import com.jichi.ob.util.ActivityCache
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

/**
 * v8.2.3.4: 记录中心——跨平台活动记录缓存检索（重构版）。
 * 改进：搜索框 / 日期档位扩展（今天·近7天·近30天·今年·全部）/ 平台全选清空 /
 * 按日期·按平台双视图 / 分页懒加载(50条) / 卡片详情弹窗(打开文件·删除记录) / 空态引导。
 * 数据精准性：库主键(platform,id)天然去重；时间毫秒直传；解析失败(startTime=0)记录在"全部"视图可见。
 */
class RecordCenterFragment : Fragment() {

    /** v8.2.5: 网格 chips 间距换算（Fragment 级） */
    private fun dpInt(v: Int): Int = (v * resources.displayMetrics.density).toInt()

    private var rvRecords: RecyclerView? = null
    private var tvEmpty: TextView? = null
    private var tvStat: TextView? = null
    private var dateChips: LinearLayout? = null
    private var platformChips: LinearLayout? = null
    private var etSearch: android.widget.EditText? = null
    private var tvGroupByDate: TextView? = null
    private var tvGroupByPlatform: TextView? = null

    private data class DateRange(val name: String, val idx: Int)
    private val dateRanges = listOf(
        DateRange("今天", 0), DateRange("近7天", 1), DateRange("近30天", 2),
        DateRange("今年", 3), DateRange("全部", 4)
    )
    private var selectedRange = 4   // 默认全部
    private val selectedPlatforms = HashSet<String>()  // shortName
    private var initPlatformFilterDone = false
    private var groupByPlatform = false
    private var keyword = ""

    // v8.2.6: 筛选区折叠
    private var llFilterArea: android.widget.LinearLayout? = null
    private var tvFilterArrow: TextView? = null
    private var tvFilterSummary: TextView? = null

    private var itemsAll = mutableListOf<Any>()
    private var visibleCount = 50
    private var adapter: RecordAdapter? = null

    companion object {
        /** v8.2.3.10: 完整时间显示——今天"HH:mm"，今年"MM-dd HH:mm"，往年"yyyy-MM-dd HH:mm"（时间纬度一眼可见，无需点开详情） */
        fun fullTimeFmt(ms: Long): String {
            if (ms <= 0) return ""
            return try {
                val cal = Calendar.getInstance()
                val todayStart = cal.clone() as Calendar
                todayStart.set(Calendar.HOUR_OF_DAY, 0); todayStart.set(Calendar.MINUTE, 0); todayStart.set(Calendar.SECOND, 0); todayStart.set(Calendar.MILLISECOND, 0)
                if (ms >= todayStart.timeInMillis) return SimpleDateFormat("HH:mm", Locale.getDefault()).format(Date(ms))
                val yearStart = Calendar.getInstance().apply {
                    set(Calendar.MONTH, Calendar.JANUARY); set(Calendar.DAY_OF_MONTH, 1)
                    set(Calendar.HOUR_OF_DAY, 0); set(Calendar.MINUTE, 0); set(Calendar.SECOND, 0); set(Calendar.MILLISECOND, 0)
                }
                if (ms >= yearStart.timeInMillis) return SimpleDateFormat("MM-dd HH:mm", Locale.getDefault()).format(Date(ms))
                SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault()).format(Date(ms))
            } catch (_: Exception) { "" }
        }

        /** 相对日期组头：今天 / 昨天 / M月d日 周X / yyyy年M月d日 */
        fun dayLabel(ms: Long): String {
            return try {
                val cal = Calendar.getInstance()
                val todayStart = cal.clone() as Calendar
                todayStart.set(Calendar.HOUR_OF_DAY, 0); todayStart.set(Calendar.MINUTE, 0); todayStart.set(Calendar.SECOND, 0); todayStart.set(Calendar.MILLISECOND, 0)
                val d = Calendar.getInstance().apply { timeInMillis = ms }
                d.set(Calendar.HOUR_OF_DAY, 0); d.set(Calendar.MINUTE, 0); d.set(Calendar.SECOND, 0); d.set(Calendar.MILLISECOND, 0)
                val diff = ((todayStart.timeInMillis - d.timeInMillis) / 86_400_000L).toInt()
                val fmt = SimpleDateFormat("M月d日 EEEE", Locale.getDefault())
                when {
                    diff <= 0 -> "今天"
                    diff == 1 -> "昨天"
                    diff in 2..6 -> fmt.format(Date(ms))
                    else -> SimpleDateFormat("yyyy年M月d日", Locale.getDefault()).format(Date(ms))
                }
            } catch (_: Exception) { "未知日期" }
        }

        /** 平台品牌色（记录卡片色点/平台名） */
        fun platColorRes(tag: String): Int = when (tag) {
            "igp" -> R.color.igp_green; "xz" -> R.color.xingzhe_blue; "mg" -> R.color.magene_blue
            "bb" -> R.color.blackbird_green; "br" -> R.color.bryton_red; "gt" -> R.color.giant_blue
            "gm", "gcn" -> R.color.garmin_blue; "cscn", "cs" -> R.color.coros_red; "wo" -> R.color.wahoo_red
            "ob" -> R.color.outbase_orange; "mw" -> R.color.mywhoosh_orange; "zf" -> R.color.zwift_purple
            "icu" -> R.color.intervals_icu_orange; "kp" -> R.color.keep_yellow; "cd" -> R.color.codoon_green
            "zp" -> R.color.zepp_blue; "kt" -> R.color.komoot_red; "su" -> R.color.suunto_blue
            else -> R.color.primary
        }
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? =
        inflater.inflate(R.layout.fragment_record_center, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        rvRecords = view.findViewById(R.id.rvRecords)
        tvEmpty = view.findViewById(R.id.tvEmpty)
        tvStat = view.findViewById(R.id.tvRecordStat)
        dateChips = view.findViewById(R.id.dateChips)
        platformChips = view.findViewById(R.id.platformChips)
        etSearch = view.findViewById(R.id.etSearch)
        tvGroupByDate = view.findViewById(R.id.tvGroupByDate)
        tvGroupByPlatform = view.findViewById(R.id.tvGroupByPlatform)

        // v8.2.6: 筛选区折叠——默认收起，点击"筛选"横条展开/收起（提高列表预览空间）
        llFilterArea = view.findViewById(R.id.llFilterArea)
        tvFilterArrow = view.findViewById(R.id.tvFilterArrow)
        tvFilterSummary = view.findViewById(R.id.tvFilterSummary)
        view.findViewById<android.widget.LinearLayout>(R.id.llFilterToggle)?.setOnClickListener {
            val area = llFilterArea ?: return@setOnClickListener
            val expand = area.visibility != android.view.View.VISIBLE
            area.visibility = if (expand) android.view.View.VISIBLE else android.view.View.GONE
            tvFilterArrow?.text = if (expand) "▴ 收起" else "▾ 展开"
        }
        updateFilterSummary()

        view.findViewById<TextView>(R.id.btnRecordClose)?.setOnClickListener {
            try { (activity as? com.jichi.ob.MainActivity)?.closeRecordCenter() } catch (_: Exception) {}
        }

        etSearch?.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, a: Int, b: Int, c: Int) {}
            override fun onTextChanged(s: CharSequence?, a: Int, b: Int, c: Int) {}
            override fun afterTextChanged(s: Editable?) {
                keyword = s?.toString()?.trim() ?: ""
                reload()
            }
        })

        view.findViewById<TextView>(R.id.btnSelectAll)?.setOnClickListener {
            DataSource.sourcePlatforms().forEach { selectedPlatforms.add(it.shortName) }
            buildPlatformChips()
            updateFilterSummary()
            reload()
        }
        view.findViewById<TextView>(R.id.btnClearAll)?.setOnClickListener {
            selectedPlatforms.clear()
            buildPlatformChips()
            updateFilterSummary()
            reload()
        }

        tvGroupByDate?.setOnClickListener { if (groupByPlatform) { groupByPlatform = false; updateGroupTabs(); reload() } }
        tvGroupByPlatform?.setOnClickListener { if (!groupByPlatform) { groupByPlatform = true; updateGroupTabs(); reload() } }

        rvRecords?.layoutManager = LinearLayoutManager(requireContext())
        adapter = RecordAdapter(requireContext())
        rvRecords?.adapter = adapter
        rvRecords?.addOnScrollListener(object : RecyclerView.OnScrollListener() {
            override fun onScrolled(rv: RecyclerView, dx: Int, dy: Int) {
                super.onScrolled(rv, dx, dy)
                val lm = rv.layoutManager as? LinearLayoutManager ?: return
                if (lm.itemCount - (lm.findLastVisibleItemPosition()) <= 6) loadMore()
            }
        })

        updateGroupTabs()
        buildDateChips()
        buildPlatformChips()
        reload()
    }

    private fun updateGroupTabs() {
        tvGroupByDate?.setTextColor(requireContext().getColor(if (!groupByPlatform) R.color.primary else R.color.text_secondary))
        tvGroupByPlatform?.setTextColor(requireContext().getColor(if (groupByPlatform) R.color.primary else R.color.text_secondary))
    }

    /** 页面显示/同步后刷新数据（保留用户筛选） */
    fun refresh() {
        buildDateChips()
        buildPlatformChips()
        updateFilterSummary()
        reload()
    }

    override fun onHiddenChanged(hidden: Boolean) {
        super.onHiddenChanged(hidden)
        if (!hidden) { buildDateChips(); buildPlatformChips(); updateFilterSummary(); reload() }
    }

    private fun buildDateChips() {
        val host = dateChips ?: return
        host.removeAllViews()
        for (r in dateRanges) {
            val chip = makeChip(r.name, selectedRange == r.idx)
            chip.setOnClickListener {
                selectedRange = r.idx
                buildDateChips()
                updateFilterSummary()
                reload()
            }
            host.addView(chip)
        }
    }

    private fun buildPlatformChips() {
        val host = platformChips ?: return
        host.removeAllViews()
        val platforms = DataSource.sourcePlatforms()
        if (!initPlatformFilterDone) platforms.forEach { selectedPlatforms.add(it.shortName) }
        initPlatformFilterDone = true
        // v8.2.5: 多列多行紧凑平铺（每行4个，weight均分），替代横向滑动，无需右滑
        val ctx = host.context
        val colCount = 4
        var row = LinearLayout(ctx).apply { orientation = LinearLayout.HORIZONTAL }
        var col = 0
        for (ds in platforms) {
            val chip = makeChip(ds.displayName, selectedPlatforms.contains(ds.shortName))
            chip.setOnClickListener {
                if (selectedPlatforms.contains(ds.shortName)) {
                    selectedPlatforms.remove(ds.shortName)
                    chip.setBackgroundColor(Color.parseColor("#EEEEEE"))
                    chip.setTextColor(Color.parseColor("#4B5563"))
                } else {
                    selectedPlatforms.add(ds.shortName)
                    chip.setBackgroundColor(Color.parseColor("#2B8CFF"))
                    chip.setTextColor(Color.WHITE)
                }
                updateFilterSummary()
                reload()
            }
            val lp = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
            lp.setMargins(0, 0, dpInt(6), dpInt(6))
            chip.layoutParams = lp
            row.addView(chip)
            col++
            if (col == colCount) { host.addView(row); row = LinearLayout(ctx).apply { orientation = LinearLayout.HORIZONTAL }; col = 0 }
        }
        if (col > 0) host.addView(row)
    }

    @SuppressLint("SetTextI18n")
    private fun makeChip(name: String, selected: Boolean): TextView {
        val tv = TextView(requireContext())
        tv.text = name
        tv.textSize = 12f
        tv.gravity = Gravity.CENTER
        // v8.2.6: 左右加 padding——日期按钮不再挤在一起
        tv.setPadding(dpInt(8), dpInt(8), dpInt(8), dpInt(8))
        tv.setTextColor(if (selected) Color.WHITE else Color.parseColor("#4B5563"))
        tv.setBackgroundColor(if (selected) Color.parseColor("#2B8CFF") else Color.parseColor("#EEEEEE"))
        return tv
    }

    @SuppressLint("SetTextI18n")
    private fun updateFilterSummary() {
        val t = tvFilterSummary ?: return
        val timeName = dateRanges.find { it.idx == selectedRange }?.name ?: "全部"
        val all = DataSource.sourcePlatforms().size
        val plat = when {
            selectedPlatforms.size >= all -> "全部平台"
            selectedPlatforms.isEmpty() -> "无平台"
            else -> selectedPlatforms.mapNotNull { DataSource.fromShortName(it)?.displayName }
                .take(3).joinToString("、") + if (selectedPlatforms.size > 3) " 等${selectedPlatforms.size}个" else ""
        }
        t.text = "$plat · $timeName"
    }

    @SuppressLint("SetTextI18n")
    fun reload() {
        lifecycleScope.launch(Dispatchers.IO) {
            val db = ActivityCache.get(requireContext())
            val (start, end) = rangeBounds(selectedRange)
            val kw = keyword.lowercase(Locale.getDefault())
            val all = selectedPlatforms.flatMap { p ->
                if (start == 0L && end == Long.MAX_VALUE) db.queryByPlatform(p)
                else db.queryByDateRange(p, start, end)
            }.filter { e ->
                kw.isEmpty() ||
                        e.title.lowercase(Locale.getDefault()).contains(kw) ||
                        (DataSource.fromShortName(e.platform)?.displayName ?: e.platform).lowercase(Locale.getDefault()).contains(kw)
            }.sortedByDescending { it.startTime }
            val totalAll = DataSource.sourcePlatforms().sumOf { db.count(it.shortName) }
            val totalFilter = DataSource.sourcePlatforms().filter { selectedPlatforms.contains(it.shortName) }
                .sumOf { db.count(it.shortName) }
            withContext(Dispatchers.Main) {
                itemsAll.clear()
                if (groupByPlatform) {
                    for (ds in DataSource.sourcePlatforms()) {
                        val group = all.filter { it.platform == ds.shortName }
                        if (group.isEmpty()) continue
                        itemsAll.add(ds.displayName)
                        itemsAll.addAll(group)
                    }
                } else {
                    var curDay = ""
                    for (e in all) {
                        val day = dayLabel(e.startTime)
                        if (day != curDay) { curDay = day; itemsAll.add(day) }
                        itemsAll.add(e)
                    }
                }
                visibleCount = 50
                adapter?.setItems(itemsAll, visibleCount)
                val groupTxt = if (groupByPlatform) "按平台" else "按日期"
                tvStat?.text = "共 $totalAll 条 · 筛选 ${all.size} 条（$groupTxt）"
                if (itemsAll.isEmpty()) {
                    tvEmpty?.visibility = View.VISIBLE
                    tvEmpty?.text = if (keyword.isEmpty())
                        "📭 暂无缓存记录\n（去同步页开始同步，记录会自动写入缓存库）"
                    else "📭 没有匹配的记录\n（试试调整日期/平台筛选或清空搜索词）"
                    rvRecords?.visibility = View.GONE
                } else {
                    tvEmpty?.visibility = View.GONE
                    rvRecords?.visibility = View.VISIBLE
                }
            }
        }
    }

    /** 懒加载：滚动到底追加 */
    private fun loadMore() {
        if (visibleCount >= itemsAll.size) return
        visibleCount = minOf(visibleCount + 50, itemsAll.size)
        adapter?.setItems(itemsAll, visibleCount)
    }

    /** 快捷范围 → [startMs, endMs]（全部用 0/Long.MAX_VALUE） */
    private fun rangeBounds(idx: Int): Pair<Long, Long> {
        val cal = Calendar.getInstance()
        return when (idx) {
            0 -> {  // 今天
                cal.set(Calendar.HOUR_OF_DAY, 0); cal.set(Calendar.MINUTE, 0); cal.set(Calendar.SECOND, 0); cal.set(Calendar.MILLISECOND, 0)
                cal.timeInMillis to (cal.timeInMillis + 24 * 3600 * 1000L)
            }
            1 -> {  // 近7天（含今天）
                val today = cal.clone() as Calendar
                today.set(Calendar.HOUR_OF_DAY, 0); today.set(Calendar.MINUTE, 0); today.set(Calendar.SECOND, 0); today.set(Calendar.MILLISECOND, 0)
                (today.timeInMillis - 6 * 86_400_000L) to (today.timeInMillis + 86_400_000L)
            }
            2 -> {  // 近30天
                val today = cal.clone() as Calendar
                today.set(Calendar.HOUR_OF_DAY, 0); today.set(Calendar.MINUTE, 0); today.set(Calendar.SECOND, 0); today.set(Calendar.MILLISECOND, 0)
                (today.timeInMillis - 29 * 86_400_000L) to (today.timeInMillis + 86_400_000L)
            }
            3 -> {  // 今年
                cal.set(Calendar.MONTH, Calendar.JANUARY); cal.set(Calendar.DAY_OF_MONTH, 1)
                cal.set(Calendar.HOUR_OF_DAY, 0); cal.set(Calendar.MINUTE, 0); cal.set(Calendar.SECOND, 0); cal.set(Calendar.MILLISECOND, 0)
                val start = cal.timeInMillis
                cal.add(Calendar.YEAR, 1)
                start to cal.timeInMillis
            }
            else -> 0L to Long.MAX_VALUE
        }
    }

    // ================= 适配器：分组头 + 卡片条目 =================

    private class RecordAdapter(private val ctx: android.content.Context) :
        RecyclerView.Adapter<RecyclerView.ViewHolder>() {

        private var items = mutableListOf<Any>()

        fun setItems(all: List<Any>, count: Int) {
            items = if (count >= all.size) all.toMutableList() else all.subList(0, count).toMutableList()
            notifyDataSetChanged()
        }

        override fun getItemCount(): Int = items.size
        override fun getItemViewType(position: Int): Int = if (items[position] is String) 0 else 1

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
            return if (viewType == 0) {
                val tv = TextView(parent.context)
                tv.setTextColor(Color.parseColor("#4B5563"))
                tv.textSize = 13f
                tv.setTypeface(null, android.graphics.Typeface.BOLD)
                tv.setPadding(0, 40, 0, 16)
                DayHolder(tv)
            } else {
                val card = LinearLayout(parent.context).apply {
                    orientation = LinearLayout.VERTICAL
                    setBackgroundResource(R.drawable.bg_note_card)
                    val lp = RecyclerView.LayoutParams(
                        RecyclerView.LayoutParams.MATCH_PARENT, RecyclerView.LayoutParams.WRAP_CONTENT)
                    lp.setMargins(0, 0, 0, 24)
                    layoutParams = lp
                }
                val row1 = LinearLayout(parent.context).apply {
                    orientation = LinearLayout.HORIZONTAL
                    gravity = Gravity.CENTER_VERTICAL
                }
                card.addView(row1)
                val row2 = LinearLayout(parent.context).apply {
                    orientation = LinearLayout.HORIZONTAL
                    gravity = Gravity.CENTER_VERTICAL
                    setPadding(0, dpInt(6), 0, 0)
                }
                card.addView(row2)
                EntryHolder(card, row1, row2)
            }
        }

        @SuppressLint("SetTextI18n")
        override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
            val item = items[position]
            when (holder) {
                is DayHolder -> holder.tv.text = "▪ $item"
                is EntryHolder -> {
                    val e = item as ActivityCache.Entry
                    val ds = DataSource.fromShortName(e.platform)
                    val platName = ds?.displayName ?: e.platform
                    val platColor = try { ctx.getColor(platColorRes(e.platform)) } catch (_: Exception) { Color.parseColor("#2B8CFF") }
                    // v8.2.5: 列表不显示类型——按 平台+距离·时长 / 标题+时间 展示，方便检索
                    val dist = if (e.distanceKm > 0) "%.1fkm".format(e.distanceKm) else ""
                    val dur = if (e.durationSec > 0) "${e.durationSec / 60}min" else ""
                    // v8.2.3.10: 完整时间（含日期），时间纬度列表直显
                    val time = fullTimeFmt(e.startTime)

                    holder.row1.removeAllViews()
                    val dot = TextView(ctx).apply {
                        val lp = LinearLayout.LayoutParams(dpInt(10), dpInt(10))
                        lp.setMargins(0, 0, dpInt(8), 0)
                        layoutParams = lp
                        background = android.graphics.drawable.GradientDrawable().apply {
                            shape = android.graphics.drawable.GradientDrawable.OVAL
                            setColor(platColor)
                        }
                    }
                    holder.row1.addView(dot)
                    holder.row1.addView(TextView(ctx).apply {
                        text = platName
                        textSize = 12f
                        setTypeface(null, android.graphics.Typeface.BOLD)
                        setTextColor(platColor)
                    })
                    // 上行右侧：距离 · 时长（灰小字）
                    val meta = listOf(dist, dur).filter { it.isNotEmpty() }.joinToString(" · ")
                    if (meta.isNotEmpty()) {
                        holder.row1.addView(TextView(ctx).apply {
                            text = meta
                            textSize = 11f
                            setTextColor(Color.parseColor("#6B7280"))
                            gravity = Gravity.END
                            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                        })
                    }
                    if (e.filename.isNotEmpty()) {
                        holder.row1.addView(TextView(ctx).apply {
                            text = "已下载"
                            textSize = 10f
                            setTextColor(Color.WHITE)
                            setBackgroundColor(Color.parseColor("#2B8CFF"))
                            setPadding(dpInt(8), dpInt(3), dpInt(8), dpInt(3))
                            val lp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT)
                            lp.setMargins(dpInt(6), 0, 0, 0)
                            layoutParams = lp
                        })
                    }

                    holder.row2.removeAllViews()
                    holder.row2.addView(TextView(ctx).apply {
                        text = e.title.ifBlank { "未命名活动" }
                        textSize = 15f
                        setTypeface(null, android.graphics.Typeface.BOLD)
                        setTextColor(Color.parseColor("#1F2937"))
                        maxLines = 1
                        layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                    })
                    // v8.2.3.10: 时间（含日期）与标题同行，右对齐——列表直接可见，无需点开
                    if (time.isNotEmpty()) {
                        holder.row2.addView(TextView(ctx).apply {
                            text = time
                            textSize = 12f
                            setTextColor(Color.parseColor("#4B5563"))
                            gravity = Gravity.END
                            val lp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT)
                            lp.setMargins(dpInt(10), 0, 0, 0)
                            layoutParams = lp
                        })
                    }
                    holder.card.setOnClickListener { showDetail(e) }
                }
            }
        }

        /** v8.2.3.4: 详情弹窗——完整元数据 + 打开本地文件 + 删除该条缓存 */
        private fun showDetail(e: ActivityCache.Entry) {
            val ds = DataSource.fromShortName(e.platform)
            val platName = ds?.displayName ?: e.platform
            val fullTime = try {
                SimpleDateFormat("yyyy年M月d日 HH:mm", Locale.getDefault()).format(Date(e.startTime))
            } catch (_: Exception) { "未知" }
            val dist = if (e.distanceKm > 0) "%.2f km".format(e.distanceKm) else "—"
            val dur = if (e.durationSec > 0) {
                val h = e.durationSec / 3600; val m = (e.durationSec % 3600) / 60; val s = e.durationSec % 60
                if (h > 0) "%d:%02d:%02d".format(h, m, s) else "%d:%02d".format(m, s)
            } else "—"

            val content = LinearLayout(ctx).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(dpInt(20), dpInt(16), dpInt(20), dpInt(16))
                setBackgroundResource(R.drawable.bg_disclaimer_dialog)
            }
            fun row(label: String, value: String) {
                content.addView(LinearLayout(ctx).apply {
                    orientation = LinearLayout.HORIZONTAL
                    setPadding(0, dpInt(4), 0, dpInt(4))
                    addView(TextView(ctx).apply {
                        text = label
                        textSize = 13f
                        setTextColor(Color.parseColor("#9CA3AF"))
                        layoutParams = LinearLayout.LayoutParams(dpInt(76), LinearLayout.LayoutParams.WRAP_CONTENT)
                    })
                    addView(TextView(ctx).apply {
                        text = value
                        textSize = 13f
                        setTextColor(Color.parseColor("#1F2937"))
                        layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                    })
                })
            }
            row("平台", platName)
            // v8.2.5: 类型字段历史错塞 extra 原始串，用户要求不显示，移除类型行
            row("标题", e.title.ifBlank { "未命名活动" })
            row("时间", fullTime)
            row("距离", dist)
            row("时长", dur)
            row("文件", if (e.filename.isNotEmpty()) e.filename.substringAfterLast('/') else "未下载到本地")

            val btnRow = LinearLayout(ctx).apply {
                orientation = LinearLayout.HORIZONTAL
                setPadding(0, dpInt(14), 0, 0)
            }
            content.addView(btnRow)
            val btnOpen = TextView(ctx).apply {
                // v8.2.3.10: 未下载→绿色「下载文件」；已下载→蓝色「打开文件」
                text = if (e.filename.isNotEmpty()) "打开文件" else "下载文件"
                textSize = 13f
                setTextColor(if (e.filename.isNotEmpty()) Color.WHITE else Color.WHITE)
                setBackgroundColor(if (e.filename.isNotEmpty()) Color.parseColor("#2B8CFF") else Color.parseColor("#16A34A"))
                gravity = Gravity.CENTER
                setPadding(0, dpInt(10), 0, dpInt(10))
                isEnabled = true
                layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
            }
            val btnDel = TextView(ctx).apply {
                text = "删除记录"
                textSize = 13f
                setTextColor(Color.WHITE)
                setBackgroundColor(Color.parseColor("#E04A4A"))
                gravity = Gravity.CENTER
                setPadding(0, dpInt(10), 0, dpInt(10))
                layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply { setMargins(dpInt(10), 0, 0, 0) }
            }
            val btnClose = TextView(ctx).apply {
                text = "关闭"
                textSize = 13f
                setTextColor(Color.parseColor("#4B5563"))
                setBackgroundColor(Color.parseColor("#EEEEEE"))
                gravity = Gravity.CENTER
                setPadding(0, dpInt(10), 0, dpInt(10))
                layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply { setMargins(dpInt(10), 0, 0, 0) }
            }
            btnRow.addView(btnOpen); btnRow.addView(btnDel); btnRow.addView(btnClose)

            val dialog = android.app.Dialog(ctx)
            dialog.requestWindowFeature(android.view.Window.FEATURE_NO_TITLE)
            dialog.setContentView(content)
            dialog.window?.setBackgroundDrawable(android.graphics.drawable.ColorDrawable(Color.TRANSPARENT))
            dialog.window?.setLayout((ctx.resources.displayMetrics.widthPixels * 0.9f).toInt(), android.view.ViewGroup.LayoutParams.WRAP_CONTENT)

            btnOpen.setOnClickListener {
                dialog.dismiss()
                if (e.filename.isNotEmpty()) {
                    val f = File(e.filename)
                    if (f.exists()) {
                        try {
                            val intent = Intent(Intent.ACTION_VIEW)
                            intent.setDataAndType(Uri.fromFile(f), "*/*")
                            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                            ctx.startActivity(intent)
                        } catch (_: Exception) { Toast.makeText(ctx, "无法打开文件", Toast.LENGTH_SHORT).show() }
                    } else Toast.makeText(ctx, "本地文件已不存在，请重新同步", Toast.LENGTH_SHORT).show()
                } else {
                    // v8.2.3.10: 未下载 → 从源平台单点下载 FIT/GPX
                    val act = (ctx as? androidx.fragment.app.FragmentActivity) as? com.jichi.ob.MainActivity
                    if (act != null) {
                        Toast.makeText(ctx, "正在从${com.jichi.ob.model.DataSource.fromShortName(e.platform)?.displayName ?: "平台"}下载...", Toast.LENGTH_SHORT).show()
                        act.downloadCacheEntry(e)
                    } else Toast.makeText(ctx, "无法下载：页面未就绪", Toast.LENGTH_SHORT).show()
                }
            }
            btnDel.setOnClickListener {
                dialog.dismiss()
                android.app.AlertDialog.Builder(ctx)
                    .setTitle("删除记录")
                    .setMessage("确定从缓存库删除「${e.title.ifBlank { "未命名活动" }}」吗？\n仅删除记录中心缓存，不影响各平台云端数据。")
                    .setPositiveButton("删除") { _, _ ->
                        kotlinx.coroutines.CoroutineScope(kotlinx.coroutines.Dispatchers.IO).launch {
                            ActivityCache.get(ctx).deleteEntry(e.platform, e.id)
                        }
                        Toast.makeText(ctx, "已删除缓存记录", Toast.LENGTH_SHORT).show()
                        try {
                            (ctx as? androidx.fragment.app.FragmentActivity)?.supportFragmentManager
                                ?.fragments?.filterIsInstance<RecordCenterFragment>()?.firstOrNull()?.reload()
                        } catch (_: Exception) {}
                    }
                    .setNegativeButton("取消", null)
                    .show()
            }
            btnClose.setOnClickListener { dialog.dismiss() }
            dialog.show()
        }

        private fun dpInt(v: Int): Int = (v * ctx.resources.displayMetrics.density).toInt()

        class DayHolder(val tv: TextView) : RecyclerView.ViewHolder(tv)
        class EntryHolder(val card: LinearLayout, val row1: LinearLayout, val row2: LinearLayout) : RecyclerView.ViewHolder(card)
    }
}

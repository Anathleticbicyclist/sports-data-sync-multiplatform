package com.jichi.ob.ui

import android.annotation.SuppressLint
import android.content.Intent
import android.graphics.Color
import android.net.Uri
import android.os.Bundle
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
 * v8.2.0: 记录中心——跨平台活动记录缓存检索。
 * 数据来自同步时写入 ActivityCache（SQLite），按日期范围 + 平台过滤，
 * 点击已下载记录可直接打开本地文件。
 */
class RecordCenterFragment : Fragment() {

    private var rvRecords: RecyclerView? = null
    private var tvEmpty: TextView? = null
    private var tvStat: TextView? = null
    private var dateChips: LinearLayout? = null
    private var platformChips: LinearLayout? = null

    private val dateRanges = listOf(
        "今天" to 0L, "本周" to 1L, "本月" to 2L, "全部" to 3L
    )
    private var selectedRange = 3L   // 默认全部
    private val selectedPlatforms = HashSet<String>()  // shortName
    private var allEntries: List<ActivityCache.Entry> = emptyList()

    companion object {
        private val dayFmt = SimpleDateFormat("yyyy-MM-dd", Locale.getDefault())
        private val timeFmt = SimpleDateFormat("HH:mm", Locale.getDefault())
        private val cache get() = ActivityCache
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
        // v8.2.1: 关于页横条入口进入（全屏覆盖页），顶部"返回"关闭
        view.findViewById<TextView>(R.id.btnRecordClose)?.setOnClickListener {
            try { (activity as? com.jichi.ob.MainActivity)?.closeRecordCenter() } catch (_: Exception) {}
        }
        rvRecords?.layoutManager = LinearLayoutManager(requireContext())
        buildDateChips()
        buildPlatformChips()
        reload()
    }

    /** 页面每次显示时刷新（同步后回来能立即看到新缓存） */
    override fun onResume() {
        super.onResume()
        reload()
    }

    /** v8.2.1: hide/show 切页不触发 onResume，MainActivity 切换到此页时调用 + onHiddenChanged 兜底。
     *  每次进入重置平台筛选为全选（避免上次取消选中状态残留导致刚同步的平台被过滤、显示无记录） */
    fun refresh() {
        selectedPlatforms.clear()
        selectedRange = 3L
        buildDateChips()
        buildPlatformChips()
        reload()
    }

    override fun onHiddenChanged(hidden: Boolean) {
        super.onHiddenChanged(hidden)
        if (!hidden) {
            selectedPlatforms.clear()
            selectedRange = 3L
            buildDateChips()
            buildPlatformChips()
            reload()
        }
    }

    private fun buildDateChips() {
        val host = dateChips ?: return
        host.removeAllViews()
        for ((name, idx) in dateRanges) {
            val chip = makeChip(name, selectedRange == idx)
            chip.setOnClickListener {
                selectedRange = idx
                buildDateChips()
                reload()
            }
            host.addView(chip)
        }
    }

    private fun buildPlatformChips() {
        val host = platformChips ?: return
        host.removeAllViews()
        // 只显示可作为来源的平台（与同步源一致）
        val platforms = DataSource.sourcePlatforms()
        // 默认全选（避免首次进入无筛选导致空列表困惑）；点击切换
        if (selectedPlatforms.isEmpty()) platforms.forEach { selectedPlatforms.add(it.shortName) }
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
                reload()
            }
            host.addView(chip)
        }
    }

    @SuppressLint("SetTextI18n")
    private fun makeChip(name: String, selected: Boolean): TextView {
        val tv = TextView(requireContext())
        tv.text = name
        tv.textSize = 12f
        tv.setPadding(36, 18, 36, 18)
        tv.setTextColor(if (selected) Color.WHITE else Color.parseColor("#4B5563"))
        tv.setBackgroundColor(if (selected) Color.parseColor("#2B8CFF") else Color.parseColor("#EEEEEE"))
        val lp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        lp.setMargins(0, 0, 24, 0)
        tv.layoutParams = lp
        return tv
    }

    @SuppressLint("SetTextI18n")
    private fun reload() {
        lifecycleScope.launch(Dispatchers.IO) {
            val cache = ActivityCache.get(requireContext())
            val (start, end) = rangeBounds(selectedRange)
            val all = if (start == 0L && end == Long.MAX_VALUE) {
                selectedPlatforms.flatMap { cache.queryByPlatform(it) }
            } else {
                selectedPlatforms.flatMap { cache.queryByDateRange(it, start, end) }
            }.sortedByDescending { it.startTime }
            val totalAll = DataSource.sourcePlatforms().sumOf { cache.count(it.shortName) }
            withContext(Dispatchers.Main) {
                allEntries = all
                tvStat?.text = "缓存 ${totalAll} 条 · 筛选出 ${all.size} 条"
                if (all.isEmpty()) {
                    tvEmpty?.visibility = View.VISIBLE
                    rvRecords?.visibility = View.GONE
                } else {
                    tvEmpty?.visibility = View.GONE
                    rvRecords?.visibility = View.VISIBLE
                    rvRecords?.adapter = RecordAdapter(all, requireContext())
                }
            }
        }
    }

    /** 快捷范围 → [startMs, endMs]（全部用 0/Long.MAX_VALUE） */
    private fun rangeBounds(idx: Long): Pair<Long, Long> {
        val cal = Calendar.getInstance()
        return when (idx) {
            0L -> {  // 今天
                cal.set(Calendar.HOUR_OF_DAY, 0); cal.set(Calendar.MINUTE, 0); cal.set(Calendar.SECOND, 0); cal.set(Calendar.MILLISECOND, 0)
                cal.timeInMillis to (cal.timeInMillis + 24 * 3600 * 1000L)
            }
            1L -> {  // 本周（周一为起点）
                val today = cal.get(Calendar.DAY_OF_WEEK)
                val diff = (today - Calendar.MONDAY + 7) % 7
                cal.add(Calendar.DAY_OF_MONTH, -diff)
                cal.set(Calendar.HOUR_OF_DAY, 0); cal.set(Calendar.MINUTE, 0); cal.set(Calendar.SECOND, 0); cal.set(Calendar.MILLISECOND, 0)
                cal.timeInMillis to (cal.timeInMillis + 7 * 24 * 3600 * 1000L)
            }
            2L -> {  // 本月
                cal.set(Calendar.DAY_OF_MONTH, 1)
                cal.set(Calendar.HOUR_OF_DAY, 0); cal.set(Calendar.MINUTE, 0); cal.set(Calendar.SECOND, 0); cal.set(Calendar.MILLISECOND, 0)
                val start = cal.timeInMillis
                cal.add(Calendar.MONTH, 1)
                start to cal.timeInMillis
            }
            else -> 0L to Long.MAX_VALUE
        }
    }

    // ================= 适配器：按日期分组 =================

    private class RecordAdapter(private val entries: List<ActivityCache.Entry>, private val ctx: android.content.Context) :
        RecyclerView.Adapter<RecyclerView.ViewHolder>() {

        private val itemsRef = mutableListOf<Any>()

        init {
            // 按日期分组：组头(日期字符串) + 条目(Entry)
            var curDay = ""
            for (e in entries) {
                val day = try { dayFmt.format(Date(e.startTime)) } catch (_: Exception) { "未知日期" }
                if (day != curDay) {
                    curDay = day
                    itemsRef.add(day)
                }
                itemsRef.add(e)
            }
        }

        override fun getItemCount(): Int = itemsRef.size
        override fun getItemViewType(position: Int): Int = if (itemsRef[position] is String) 0 else 1

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
            return if (viewType == 0) {
                val tv = TextView(parent.context)
                tv.setTextColor(Color.parseColor("#9CA3AF"))
                tv.textSize = 12f
                tv.setPadding(48, 40, 48, 24)
                DayHolder(tv)
            } else {
                val tv = TextView(parent.context)
                tv.setPadding(56, 56, 56, 56)
                tv.textSize = 14f
                EntryHolder(tv)
            }
        }

        override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
            val item = itemsRef[position]
            when (holder) {
                is DayHolder -> holder.tv.text = "📅 $item"
                is EntryHolder -> {
                    val e = item as ActivityCache.Entry
                    val ds = DataSource.fromShortName(e.platform)
                    val platName = ds?.displayName ?: e.platform
                    val type = e.type.ifBlank { "" }
                    val dist = if (e.distanceKm > 0) "%.1fkm".format(e.distanceKm) else ""
                    val dur = if (e.durationSec > 0) " · ${e.durationSec / 60}min" else ""
                    val time = try { timeFmt.format(Date(e.startTime)) } catch (_: Exception) { "" }
                    val fileMark = if (e.filename.isNotEmpty()) " 📄" else ""
                    holder.tv.text = "$time  [$platName] ${e.title.take(18)}  $dist$dur$fileMark"
                    holder.tv.setOnClickListener {
                        if (e.filename.isNotEmpty()) {
                            // v8.2.1: filename 存完整保存路径（MainActivity 下载后回填 saveToDownloads 完整路径）
                            val f = File(e.filename)
                            if (f.exists()) {
                                try {
                                    val intent = Intent(Intent.ACTION_VIEW)
                                    intent.setDataAndType(Uri.fromFile(f), "*/*")
                                    intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                                    ctx.startActivity(intent)
                                } catch (_: Exception) {
                                    Toast.makeText(ctx, "无法打开文件", Toast.LENGTH_SHORT).show()
                                }
                            } else {
                                Toast.makeText(ctx, "本地文件已不存在，请重新同步", Toast.LENGTH_SHORT).show()
                            }
                        } else {
                            Toast.makeText(ctx, "该记录未下载到本地（仅缓存了元数据）", Toast.LENGTH_SHORT).show()
                        }
                    }
                }
            }
        }

        class DayHolder(val tv: TextView) : RecyclerView.ViewHolder(tv)
        class EntryHolder(val tv: TextView) : RecyclerView.ViewHolder(tv)
    }
}

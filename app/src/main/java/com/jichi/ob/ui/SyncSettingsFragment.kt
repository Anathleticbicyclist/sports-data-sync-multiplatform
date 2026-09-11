package com.jichi.ob.ui

import android.graphics.Color
import android.os.Bundle
import android.text.Spannable
import android.text.SpannableString
import android.text.style.AbsoluteSizeSpan
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.GridLayout
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.slider.Slider
import com.google.android.material.switchmaterial.SwitchMaterial
import com.jichi.ob.R
import com.jichi.ob.model.DataSource
import com.jichi.ob.model.UploadSupport
import com.jichi.ob.util.PrefsManager

/**
 * v7.6.2: 四页面布局 - 页面2 数据同步设置页
 * 数据来源/目标网格 + 同步数量/跳过 + 迈金坐标转换
 */
class SyncSettingsFragment : Fragment() {

    private lateinit var prefs: PrefsManager
    private lateinit var gridSource: GridLayout
    private lateinit var gridTarget: GridLayout
    private var selectedSourceTag = "xz"
    private val selectedTargetTags = LinkedHashSet<String>()  // v7.6.7: 一对多多选

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_sync_settings, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        prefs = PrefsManager(requireContext())
        gridSource = view.findViewById(R.id.gridSource)
        gridTarget = view.findViewById(R.id.gridTarget)
        // v7.6.7: fragment可见时刷新登录状态（登录/注销后切回本页自动同步按钮可用性）
        lifecycle.addObserver(object : androidx.lifecycle.LifecycleEventObserver {
            override fun onStateChanged(source: androidx.lifecycle.LifecycleOwner, event: androidx.lifecycle.Lifecycle.Event) {
                if (event == androidx.lifecycle.Lifecycle.Event.ON_RESUME) refreshLoginState()
            }
        })

        val sliderCount = view.findViewById<Slider>(R.id.sliderCount)
        val tvCount = view.findViewById<TextView>(R.id.tvCount)
        val sliderSkip = view.findViewById<Slider>(R.id.sliderSkip)
        val tvSkip = view.findViewById<TextView>(R.id.tvSkip)
        val switchGcj02 = view.findViewById<SwitchMaterial>(R.id.switchGcj02)
        val switchForce = view.findViewById<SwitchMaterial>(R.id.switchForceRetransmit)

        // v7.7.5: 同步数量/跳过条数变化即保存，重启后保留上次设置
        sliderCount.addOnChangeListener { _, v, _ -> tvCount.text = v.toInt().toString(); prefs.setSyncCount(v.toInt()) }
        sliderSkip.addOnChangeListener { _, v, _ -> tvSkip.text = v.toInt().toString(); prefs.setSkipCount(v.toInt()) }
        // v7.6.2: 同步数量/跳过数量支持手动输入
        tvCount.setOnClickListener { showInputDialog("同步数量", sliderCount, tvCount, 1, 1000) }
        tvSkip.setOnClickListener { showInputDialog("跳过前N条", sliderSkip, tvSkip, 0, 10000) }
        switchGcj02.setOnCheckedChangeListener { _, checked -> prefs.setGcj02Convert(checked) }
        // v7.6.8: 忽略记忆，强制重传 —— 仅在单选(用户可控)时写偏好；多选时UI强制开但保留用户单选偏好
        switchForce.setOnCheckedChangeListener { _, checked ->
            if (switchForce.isEnabled) prefs.setForceRetransmit(checked)
            updateForceRetransmitState()
        }

        setupSourceButtons()
        setupTargetButtons()
        updateSourceChips()
        updateTargetChips()
        restoreSettings(view)
        updateForceRetransmitState()
    }

    // ===== 源/目标选择 =====
    private fun platformColor(tag: String): Int = when (tag) {
        "igp" -> requireContext().getColor(R.color.igp_green)
        "xz" -> requireContext().getColor(R.color.xingzhe_blue)
        "mg" -> requireContext().getColor(R.color.magene_blue)
        "bb" -> requireContext().getColor(R.color.blackbird_green)
        "br" -> requireContext().getColor(R.color.bryton_red)
        "gt" -> requireContext().getColor(R.color.giant_blue)
        "gm", "gcn" -> requireContext().getColor(R.color.garmin_blue)
        "cscn", "cs" -> requireContext().getColor(R.color.coros_red)
        "wo", "wahoo" -> requireContext().getColor(R.color.wahoo_red)
        "ob" -> requireContext().getColor(R.color.outbase_orange)
        else -> requireContext().getColor(R.color.primary)
    }

    private fun setButtonSelected(btn: PlatformButton, selected: Boolean, tag: String) {
        // v7.7.7: 统一状态——选中=亮绿描边+浅蓝底+文字主色加粗+圆点亮品牌色；未选中=浅灰+深字+圆点灰；禁用=置灰
        btn.setPlatformState(selected, btn.isEnabled)
    }

    private fun setupSourceButtons() {
        for (i in 0 until gridSource.childCount) {
            val btn = gridSource.getChildAt(i) as? PlatformButton ?: continue
            val tag = btn.tag as? String ?: continue
            val sds = DataSource.fromShortName(tag)
            btn.buttonText = sds?.displayName ?: tag
            btn.bind(platformColor(tag))
            btn.setOnClickListener {
                if (!btn.isEnabled) return@setOnClickListener
                val ds = DataSource.fromShortName(tag)
                // 未登录平台不可选
                if (ds == null || !prefs.isLoggedIn(ds)) {
                    Toast.makeText(requireContext(), "请先登录${ds?.displayName ?: "该平台"}", Toast.LENGTH_SHORT).show()
                    return@setOnClickListener
                }
                // 互斥：来源与目标不能为同一平台
                if (selectedTargetTags.contains(tag)) {
                    Toast.makeText(requireContext(), "选择同步来源不能相同，已从同步目标移除", Toast.LENGTH_SHORT).show()
                    selectedTargetTags.remove(tag)
                    refreshTargetButtons()
                }
                selectedSourceTag = tag
                // v7.7.5: 选择来源即保存，重启后保留
                prefs.setLastSource(tag)
                for (j in 0 until gridSource.childCount) {
                    val b = gridSource.getChildAt(j) as? PlatformButton ?: continue
                    setButtonSelected(b, (b.tag as? String) == tag, b.tag as? String ?: "")
                }
            }
        }
    }

    private fun setupTargetButtons() {
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? PlatformButton ?: continue
            val tag = btn.tag as? String ?: continue
            val tds = DataSource.fromShortName(tag)
            btn.buttonText = tds?.displayName ?: tag
            btn.bind(platformColor(tag))
            // v7.8.0: Outbase 独占行强调——字号加大1/2(11→16.5sp)并始终加粗
            btn.emphasize = tag == "ob"
            btn.setTextSizeDp(if (tag == "ob") 16.5f else 11f)
            btn.setOnClickListener {
                if (!btn.isEnabled) return@setOnClickListener
                val ds = DataSource.fromShortName(tag)
                // 未登录平台不可选
                if (ds == null || !prefs.isLoggedIn(ds)) {
                    Toast.makeText(requireContext(), "请先登录${ds?.displayName ?: "该平台"}", Toast.LENGTH_SHORT).show()
                    return@setOnClickListener
                }
                // 互斥：目标不能与来源为同一平台
                if (tag == selectedSourceTag) {
                    Toast.makeText(requireContext(), "选择同步来源不能相同", Toast.LENGTH_SHORT).show()
                    return@setOnClickListener
                }
                // v7.6.7: 一对多 - 点击toggle选中/取消
                if (selectedTargetTags.contains(tag)) selectedTargetTags.remove(tag)
                else selectedTargetTags.add(tag)
                refreshTargetButtons()
            }
        }
    }

    private fun refreshTargetButtons() {
        for (j in 0 until gridTarget.childCount) {
            val b = gridTarget.getChildAt(j) as? PlatformButton ?: continue
            setButtonSelected(b, (b.tag as? String)?.let { selectedTargetTags.contains(it) } == true, b.tag as? String ?: "")
        }
        updateTargetCountLabel()
        updateForceRetransmitState()
        // v7.7.5: 目标变化即保存，重启后保留上次目标
        prefs.setLastTargets(selectedTargetTags.toList())
    }

    /**
     * v7.6.8: 忽略记忆强制重传开关状态
     * - 多目标(>1)：强制开启且不可操作（同步逻辑按 targets.size>1 强制忽略记忆）
     * - 单选(1)：用户自选（prefs保存偏好）
     */
    private fun updateForceRetransmitState() {
        val sw = view?.findViewById<SwitchMaterial>(R.id.switchForceRetransmit) ?: return
        val hint = view?.findViewById<TextView>(R.id.tvForceRetransmitHint) ?: return
        val multi = selectedTargetTags.size > 1
        if (multi) {
            // v7.6.9: 必须先禁用再置勾选，否则 setChecked(true) 触发 listener 时 isEnabled 仍为 true，
            // 会把 prefs.isForceRetransmit 误写为 true（多目标污染单目标偏好，导致自动同步也一直强制重传）
            sw.isEnabled = false
            sw.isChecked = true
            hint.text = "多目标同步已自动开启强制重传：每次同步都会重新上传到所有目标"
        } else {
            sw.isEnabled = true
            sw.isChecked = prefs.isForceRetransmit()
            hint.text = if (sw.isChecked) "已开启：忽略同步记忆，本次同步将重新上传"
            else "已关闭：已在同步记忆中的记录将自动跳过"
        }
    }

    private fun updateTargetCountLabel() {
        view?.findViewById<TextView>(R.id.tvTargetHint)?.text =
            if (selectedTargetTags.isEmpty()) "同步目标 (可多选，点击切换):"
            else "同步目标 (可多选): 已选 ${selectedTargetTags.size} 个"
    }

    private fun restoreSettings(view: View) {
        val lastSrc = prefs.getLastSource()
        if (lastSrc.isNotBlank()) selectedSourceTag = lastSrc
        for (i in 0 until gridSource.childCount) {
            val btn = gridSource.getChildAt(i) as? PlatformButton ?: continue
            val tag = btn.tag as? String ?: continue
            setButtonSelected(btn, tag == selectedSourceTag, tag)
        }
        // v7.6.7: 一对多 - 恢复多个目标（过滤未登录和与来源相同的平台）
        selectedTargetTags.clear()
        selectedTargetTags.addAll(prefs.getLastTargets().filter { t ->
            t != selectedSourceTag && (DataSource.fromShortName(t)?.let { prefs.isLoggedIn(it) } ?: false)
        })
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? PlatformButton ?: continue
            val tag = btn.tag as? String ?: continue
            setButtonSelected(btn, selectedTargetTags.contains(tag), tag)
        }
        updateTargetChips()
        updateTargetCountLabel()
        view.findViewById<SwitchMaterial>(R.id.switchGcj02).isChecked = prefs.isGcj02Convert()
        // v7.7.5: 恢复同步数量/跳过条数/强制重传开关（保留上次设置）
        val sliderCount = view.findViewById<Slider>(R.id.sliderCount)
        val tvCount = view.findViewById<TextView>(R.id.tvCount)
        val sliderSkip = view.findViewById<Slider>(R.id.sliderSkip)
        val tvSkip = view.findViewById<TextView>(R.id.tvSkip)
        sliderCount.value = prefs.getSyncCount().coerceIn(1, 1000).toFloat()
        tvCount.text = sliderCount.value.toInt().toString()
        sliderSkip.value = prefs.getSkipCount().coerceIn(0, 10000).toFloat()
        tvSkip.text = sliderSkip.value.toInt().toString()
        view.findViewById<SwitchMaterial>(R.id.switchForceRetransmit)?.isChecked = prefs.isForceRetransmit()
        val saveDir = view.findViewById<TextView>(R.id.tvSaveDir)
        try {
            saveDir.text = com.jichi.ob.MainActivity.SAVE_DIR.absolutePath
        } catch (e: Exception) {
            saveDir.text = "下载/鸡翅幸哲迈进OB"
        }
        view.findViewById<TextView>(R.id.tvSyncedCount).text = "已同步: ${prefs.getSyncedCount()} 条"
        updateForceRetransmitState()
    }

    private fun updateTargetChips() {
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? PlatformButton ?: continue
            val ds = DataSource.fromShortName(btn.tag as? String ?: "") ?: continue
            val support = UploadSupport.fromDataSource(ds)
            // v7.6.7: 开发中平台优先标记（如百锐腾），无论登录与否都显示"开发中"且不可选
            if (!support.available) {
                btn.isEnabled = false
                val name = ds.displayName
                val spannable = SpannableString("$name\n开发中")
                spannable.setSpan(AbsoluteSizeSpan(11, true), 0, name.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                spannable.setSpan(AbsoluteSizeSpan(8, true), name.length + 1, spannable.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                btn.buttonText = spannable
                btn.maxLines = 2
                btn.setBackgroundColor(0xFFE8E8E8.toInt())
                btn.setTextColor(0xFFB0B0B0.toInt())
                btn.alpha = 0.7f
                continue
            }
            // v7.6.7: 未登录平台置灰不可点（点击有Toast提示"请先登录"）
            if (!prefs.isLoggedIn(ds)) {
                btn.isEnabled = false
                btn.setBackgroundColor(0xFFE8E8E8.toInt())
                btn.setTextColor(0xFFB0B0B0.toInt())
                btn.alpha = 0.7f
            }
        }
    }

    /** v7.6.7: 来源网格未登录平台置灰不可点 */
    private fun updateSourceChips() {
        for (i in 0 until gridSource.childCount) {
            val btn = gridSource.getChildAt(i) as? PlatformButton ?: continue
            val ds = DataSource.fromShortName(btn.tag as? String ?: "") ?: continue
            if (!prefs.isLoggedIn(ds)) {
                btn.isEnabled = false
                btn.setBackgroundColor(0xFFE8E8E8.toInt())
                btn.setTextColor(0xFFB0B0B0.toInt())
                btn.alpha = 0.7f
            } else {
                // 登录后恢复可点（重新应用选中态）
                btn.isEnabled = true
                btn.alpha = 1.0f
                setButtonSelected(btn, (btn.tag as? String) == selectedSourceTag, btn.tag as? String ?: "")
            }
        }
    }

    /**
     * v7.6.7: 登录状态变化后刷新设置页（MainActivity在切换页面时调用）
     * - 重新置灰未登录平台
     * - 恢复登录平台可点
     * - 自动清理目标中未登录/与来源相同的平台
     */
    fun refreshLoginState() {
        try {
            updateSourceChips()
            // 清理目标中未登录/与来源相同的平台
            selectedTargetTags.removeAll { t ->
                val ds = DataSource.fromShortName(t)
                ds == null || !prefs.isLoggedIn(ds) || t == selectedSourceTag
            }
            // 恢复目标网格按钮（重新应用选中态）
            for (i in 0 until gridTarget.childCount) {
                val btn = gridTarget.getChildAt(i) as? PlatformButton ?: continue
                val ds = DataSource.fromShortName(btn.tag as? String ?: "") ?: continue
                btn.isEnabled = prefs.isLoggedIn(ds) && UploadSupport.fromDataSource(ds).available
                btn.alpha = if (btn.isEnabled) 1.0f else 0.7f
                if (btn.isEnabled) setButtonSelected(btn, selectedTargetTags.contains(btn.tag as? String ?: ""), btn.tag as? String ?: "")
            }
            updateTargetChips()
            updateTargetCountLabel()
            updateForceRetransmitState()
        } catch (e: Exception) {
            // 忽略刷新异常
        }
    }

    // v7.6.2: 手动输入数值（滑块+输入框联动）
    private fun showInputDialog(title: String, slider: Slider, tv: TextView, min: Int, max: Int) {
        val input = android.widget.EditText(requireContext())
        input.inputType = android.text.InputType.TYPE_CLASS_NUMBER
        input.setText(slider.value.toInt().toString())
        input.selectAll()
        val pad = (16 * resources.displayMetrics.density).toInt()
        input.setPadding(pad, pad, pad, pad)
        androidx.appcompat.app.AlertDialog.Builder(requireContext())
            .setTitle(title)
            .setView(input)
            .setPositiveButton("确定") { _, _ ->
                val v = input.text.toString().toIntOrNull()
                if (v != null) {
                    val clamped = v.coerceIn(min, max)
                    slider.value = clamped.toFloat()
                    tv.text = clamped.toString()
                    // v7.7.5: 手动输入后也保存记忆
                    if (slider.id == R.id.sliderCount) prefs.setSyncCount(clamped)
                    else if (slider.id == R.id.sliderSkip) prefs.setSkipCount(clamped)
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    // ===== MainActivity调用 =====
    fun getSelectedSource(): DataSource = DataSource.fromShortName(selectedSourceTag) ?: DataSource.XINGZHE
    @Deprecated("v7.6.7改用getSelectedTargets")
    fun getSelectedTarget(): DataSource = getSelectedTargets().firstOrNull() ?: DataSource.OUTBASE
    /** v7.6.7: 一对多 - 返回所有勾选的目标 */
    fun getSelectedTargets(): List<DataSource> {
        val list = selectedTargetTags.mapNotNull { DataSource.fromShortName(it) }
        return if (list.isEmpty()) listOf(DataSource.OUTBASE) else list
    }
    fun getCount(): Int = requireView().findViewById<Slider>(R.id.sliderCount).value.toInt()
    fun getSkip(): Int = requireView().findViewById<Slider>(R.id.sliderSkip).value.toInt()
    fun setSyncedCount(n: Int) {
        view?.findViewById<TextView>(R.id.tvSyncedCount)?.text = "已同步: $n 条"
    }
    fun setSaveDir(path: String) {
        view?.findViewById<TextView>(R.id.tvSaveDir)?.text = path
    }
}

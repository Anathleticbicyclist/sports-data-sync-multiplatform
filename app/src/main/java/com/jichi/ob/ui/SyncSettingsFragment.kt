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
import com.google.android.material.button.MaterialButton
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

        sliderCount.addOnChangeListener { _, v, _ -> tvCount.text = v.toInt().toString() }
        sliderSkip.addOnChangeListener { _, v, _ -> tvSkip.text = v.toInt().toString() }
        // v7.6.2: 同步数量/跳过数量支持手动输入
        tvCount.setOnClickListener { showInputDialog("同步数量", sliderCount, tvCount, 1, 1000) }
        tvSkip.setOnClickListener { showInputDialog("跳过前N条", sliderSkip, tvSkip, 0, 10000) }
        switchGcj02.setOnCheckedChangeListener { _, checked -> prefs.setGcj02Convert(checked) }

        setupSourceButtons()
        setupTargetButtons()
        updateSourceChips()
        updateTargetChips()
        restoreSettings(view)
    }

    // ===== 源/目标选择 =====
    private fun platformColor(tag: String): Int = when (tag) {
        "igp" -> requireContext().getColor(R.color.igp_green)
        "xz" -> requireContext().getColor(R.color.xingzhe_blue)
        "mg" -> requireContext().getColor(R.color.magene_blue)
        "bb" -> requireContext().getColor(R.color.blackbird_dark)
        "br" -> requireContext().getColor(R.color.bryton_red)
        "gm", "gcn" -> requireContext().getColor(R.color.garmin_blue)
        "cscn", "cs" -> requireContext().getColor(R.color.coros_red)
        "wahoo" -> requireContext().getColor(R.color.wahoo_red)
        "ob" -> requireContext().getColor(R.color.outbase_orange)
        else -> requireContext().getColor(R.color.primary)
    }

    private fun setButtonSelected(btn: MaterialButton, selected: Boolean, tag: String) {
        if (!btn.isEnabled) {
            btn.setBackgroundColor(0xFFE8E8E8.toInt())
            btn.setTextColor(0xFFB0B0B0.toInt())
            btn.alpha = 0.6f
            return
        }
        btn.alpha = 1.0f
        if (selected) {
            btn.setBackgroundColor(platformColor(tag))
            btn.setTextColor(requireContext().getColor(R.color.white))
        } else {
            btn.setBackgroundColor(requireContext().getColor(R.color.grey_light))
            btn.setTextColor(requireContext().getColor(R.color.text_primary))
        }
    }

    private fun setupSourceButtons() {
        for (i in 0 until gridSource.childCount) {
            val btn = gridSource.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
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
                for (j in 0 until gridSource.childCount) {
                    val b = gridSource.getChildAt(j) as? MaterialButton ?: continue
                    setButtonSelected(b, (b.tag as? String) == tag, b.tag as? String ?: "")
                }
            }
        }
    }

    private fun setupTargetButtons() {
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
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
            val b = gridTarget.getChildAt(j) as? MaterialButton ?: continue
            setButtonSelected(b, (b.tag as? String)?.let { selectedTargetTags.contains(it) } == true, b.tag as? String ?: "")
        }
        updateTargetCountLabel()
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
            val btn = gridSource.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
            setButtonSelected(btn, tag == selectedSourceTag, tag)
        }
        // v7.6.7: 一对多 - 恢复多个目标（过滤未登录和与来源相同的平台）
        selectedTargetTags.clear()
        selectedTargetTags.addAll(prefs.getLastTargets().filter { t ->
            t != selectedSourceTag && (DataSource.fromShortName(t)?.let { prefs.isLoggedIn(it) } ?: false)
        })
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
            setButtonSelected(btn, selectedTargetTags.contains(tag), tag)
        }
        updateTargetChips()
        updateTargetCountLabel()
        view.findViewById<SwitchMaterial>(R.id.switchGcj02).isChecked = prefs.isGcj02Convert()
        val saveDir = view.findViewById<TextView>(R.id.tvSaveDir)
        try {
            saveDir.text = com.jichi.ob.MainActivity.SAVE_DIR.absolutePath
        } catch (e: Exception) {
            saveDir.text = "下载/鸡翅幸哲迈进OB"
        }
        view.findViewById<TextView>(R.id.tvSyncedCount).text = "已同步: ${prefs.getSyncedCount()} 条"
    }

    private fun updateTargetChips() {
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? MaterialButton ?: continue
            val ds = DataSource.fromShortName(btn.tag as? String ?: "") ?: continue
            val support = UploadSupport.fromDataSource(ds)
            // v7.6.7: 开发中平台优先标记（如百锐腾），无论登录与否都显示"开发中"且不可选
            if (!support.available) {
                btn.isEnabled = false
                val name = ds.displayName
                val spannable = SpannableString("$name\n开发中")
                spannable.setSpan(AbsoluteSizeSpan(11, true), 0, name.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                spannable.setSpan(AbsoluteSizeSpan(8, true), name.length + 1, spannable.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                btn.text = spannable
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
            val btn = gridSource.getChildAt(i) as? MaterialButton ?: continue
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
                val btn = gridTarget.getChildAt(i) as? MaterialButton ?: continue
                val ds = DataSource.fromShortName(btn.tag as? String ?: "") ?: continue
                btn.isEnabled = prefs.isLoggedIn(ds) && UploadSupport.fromDataSource(ds).available
                btn.alpha = if (btn.isEnabled) 1.0f else 0.7f
                if (btn.isEnabled) setButtonSelected(btn, selectedTargetTags.contains(btn.tag as? String ?: ""), btn.tag as? String ?: "")
            }
            updateTargetChips()
            updateTargetCountLabel()
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

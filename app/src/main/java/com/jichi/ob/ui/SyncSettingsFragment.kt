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
    private var selectedTargetTag = "ob"

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_sync_settings, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        prefs = PrefsManager(requireContext())
        gridSource = view.findViewById(R.id.gridSource)
        gridTarget = view.findViewById(R.id.gridTarget)

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
                selectedTargetTag = tag
                for (j in 0 until gridTarget.childCount) {
                    val b = gridTarget.getChildAt(j) as? MaterialButton ?: continue
                    setButtonSelected(b, (b.tag as? String) == tag, b.tag as? String ?: "")
                }
            }
        }
    }

    private fun restoreSettings(view: View) {
        val lastSrc = prefs.getLastSource()
        if (lastSrc.isNotBlank()) selectedSourceTag = lastSrc
        for (i in 0 until gridSource.childCount) {
            val btn = gridSource.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
            setButtonSelected(btn, tag == selectedSourceTag, tag)
        }
        val lastTgt = prefs.getLastTarget()
        selectedTargetTag = if (lastTgt.isNotBlank()) lastTgt else "ob"
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
            setButtonSelected(btn, tag == selectedTargetTag, tag)
        }
        updateTargetChips()
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
            }
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
    fun getSelectedTarget(): DataSource = DataSource.fromShortName(selectedTargetTag) ?: DataSource.OUTBASE
    fun getCount(): Int = requireView().findViewById<Slider>(R.id.sliderCount).value.toInt()
    fun getSkip(): Int = requireView().findViewById<Slider>(R.id.sliderSkip).value.toInt()
    fun setSyncedCount(n: Int) {
        view?.findViewById<TextView>(R.id.tvSyncedCount)?.text = "已同步: $n 条"
    }
    fun setSaveDir(path: String) {
        view?.findViewById<TextView>(R.id.tvSaveDir)?.text = path
    }
}

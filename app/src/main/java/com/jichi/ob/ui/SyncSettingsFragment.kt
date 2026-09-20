package com.jichi.ob.ui

import android.content.Intent
import android.graphics.Color
import android.net.Uri
import android.os.Bundle
import android.provider.DocumentsContract
import android.text.Spannable
import android.text.SpannableString
import android.text.style.AbsoluteSizeSpan
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.GridLayout
import android.widget.ImageView
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
    // v8.2.3.5: 同步模式（false=一对多：1来源×多目标；true=多对一：多来源×1目标，仅用于保存任务）
    private var multiSourceMode = false
    private val selectedSourceTags = LinkedHashSet<String>()   // 多对一时用
    private var selectedTargetTag = ""                          // 多对一时用

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
        val switchWellness = view.findViewById<SwitchMaterial>(R.id.switchGarminWellness)
        val switchForce = view.findViewById<SwitchMaterial>(R.id.switchForceRetransmit)

        // v7.7.5: 同步数量/跳过条数变化即保存，重启后保留上次设置
        sliderCount.addOnChangeListener { _, v, _ -> tvCount.text = v.toInt().toString(); prefs.setSyncCount(v.toInt()) }
        sliderSkip.addOnChangeListener { _, v, _ -> tvSkip.text = v.toInt().toString(); prefs.setSkipCount(v.toInt()) }
        // v7.6.2: 同步数量/跳过数量支持手动输入
        tvCount.setOnClickListener { showInputDialog("同步数量", sliderCount, tvCount, 1, 1000) }
        tvSkip.setOnClickListener { showInputDialog("跳过前N条", sliderSkip, tvSkip, 0, 10000) }
        switchGcj02.setOnCheckedChangeListener { _, checked -> prefs.setGcj02Convert(checked) }
        switchWellness.setOnCheckedChangeListener { _, checked -> prefs.setGarminWellnessSync(checked) }
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

        // v7.8.1: 点击文件夹按钮打开存储目录，查看已保存的FIT/GPX文件
        view.findViewById<ImageView>(R.id.btnOpenSaveDir)?.setOnClickListener { openSaveDir() }

        // v8.2.3.5: 保存为任务——设置页即任务配置页（来源/目标/参数 → 一键保存为任务，替代独立向导）
        // v8.2.3.8: 同步页已恢复「＋新建任务」二级向导，设置页保存任务卡隐藏；保留代码逻辑（findViewById 不崩）
        // view.findViewById<com.google.android.material.card.MaterialCardView>(R.id.cardCreateTask)?.setOnClickListener {
        //     saveCurrentAsTask(view)
        // }
        // view.findViewById<TextView>(R.id.btnSaveTask)?.setOnClickListener { saveCurrentAsTask(view) }

        // v8.2.3.5: 同步模式开关（一对多/多对一）
        // v8.2.3.8: 卡片已隐藏——强制复位为一对多（多对一仅走向导任务），避免残留多对一状态锁死设置页
        multiSourceMode = false
        prefs.setTaskModeMulti(false)
        applyTaskModeUI(view)
        view.findViewById<TextView>(R.id.btnModeOneToMany)?.setOnClickListener { setTaskMode(view, false) }
        view.findViewById<TextView>(R.id.btnModeManyToOne)?.setOnClickListener { setTaskMode(view, true) }

        // v8.2.6: 下载并发 + 上传并发 独立设置（默认1=串行最稳；佳明/Keep 强制串行不受影响）
        val sliderDl = view.findViewById<Slider>(R.id.sliderDlConcurrency)
        val tvDl = view.findViewById<TextView>(R.id.tvDlConcurrency)
        sliderDl?.value = prefs.getDownloadConcurrency().toFloat()
        tvDl?.text = prefs.getDownloadConcurrency().toString()
        sliderDl?.addOnChangeListener { _, v, _ ->
            val n = v.toInt().coerceIn(1, 4)
            tvDl.text = n.toString()
            prefs.setDownloadConcurrency(n)
        }
        val sliderUl = view.findViewById<Slider>(R.id.sliderUlConcurrency)
        val tvUl = view.findViewById<TextView>(R.id.tvUlConcurrency)
        sliderUl?.value = prefs.getUploadConcurrency().toFloat()
        tvUl?.text = prefs.getUploadConcurrency().toString()
        sliderUl?.addOnChangeListener { _, v, _ ->
            val n = v.toInt().coerceIn(1, 4)
            tvUl.text = n.toString()
            prefs.setUploadConcurrency(n)
        }
    }

    /** v8.2.2: MainActivity 任务状态变化回调（设置页无互斥按钮，保留占位供扩展） */
    fun refreshTaskState() {}

    /** v8.2.3.5: 当前是否为"多对一"模式（多对一时批量同步禁用，仅保存为任务） */
    fun isTaskModeMulti(): Boolean = multiSourceMode

    /** v8.2.3.5: 模式开关 UI 状态 */
    private fun applyTaskModeUI(view: View) {
        val one = view.findViewById<TextView>(R.id.btnModeOneToMany)
        val many = view.findViewById<TextView>(R.id.btnModeManyToOne)
        val hint = view.findViewById<TextView>(R.id.tvModeHint)
        if (multiSourceMode) {
            one?.setTextColor(requireContext().getColor(R.color.text_secondary))
            many?.setTextColor(requireContext().getColor(R.color.primary))
            hint?.text = "多对一：多个来源合并同步到 1 个目标（仅保存为任务后在同步页运行）"
        } else {
            one?.setTextColor(requireContext().getColor(R.color.primary))
            many?.setTextColor(requireContext().getColor(R.color.text_secondary))
            hint?.text = "一对多：批量同步/任务通用；多对一仅保存为任务后在同步页运行"
        }
    }

    /** v8.2.3.5: 切换同步模式（清空另一组选择，防止状态污染批量同步） */
    private fun setTaskMode(view: View, multi: Boolean) {
        if (multiSourceMode == multi) return
        multiSourceMode = multi
        selectedSourceTags.clear()
        selectedTargetTag = ""
        prefs.setTaskModeMulti(multi)
        // 重绘网格选中态
        refreshSourceButtons()
        for (j in 0 until gridTarget.childCount) {
            val b = gridTarget.getChildAt(j) as? PlatformButton ?: continue
            setButtonSelected(b, false, b.tag as? String ?: "")
        }
        updateTargetCountLabel()
        applyTaskModeUI(view)
    }

    /** v8.2.3.5: 重绘来源网格选中态（一对多单选 / 多对一多选） */
    private fun refreshSourceButtons() {
        for (j in 0 until gridSource.childCount) {
            val b = gridSource.getChildAt(j) as? PlatformButton ?: continue
            val tag = b.tag as? String ?: ""
            val sel = if (multiSourceMode) selectedSourceTags.contains(tag) else tag == selectedSourceTag
            setButtonSelected(b, sel, tag)
        }
        if (multiSourceMode) prefs.setLastSourceTags(selectedSourceTags.toList())
        else prefs.setLastSource(selectedSourceTag)
    }

    /** v8.2.3.5: 将当前设置（来源/目标/参数）保存为同步任务 */
    private fun saveCurrentAsTask(view: View) {
        // 多对一：多来源→1目标；一对多：1来源→多目标
        val sources: List<String>
        val targets: List<String>
        if (multiSourceMode) {
            sources = selectedSourceTags.filter { DataSource.fromShortName(it)?.let { ds -> prefs.isLoggedIn(ds) } == true }
            targets = if (selectedTargetTag.isBlank()) emptyList() else listOf(selectedTargetTag)
        } else {
            sources = if (selectedSourceTag.isBlank()) emptyList() else listOf(selectedSourceTag)
            targets = selectedTargetTags.toList()
        }
        if (sources.isEmpty()) {
            Toast.makeText(requireContext(), "请先在下方选择已登录的同步来源", Toast.LENGTH_SHORT).show()
            return
        }
        if (targets.isEmpty()) {
            Toast.makeText(requireContext(), "请至少选择一个同步目标", Toast.LENGTH_SHORT).show()
            return
        }
        val srcNames = sources.joinToString("、") { DataSource.fromShortName(it)?.displayName ?: it }
        val tgtNames = targets.joinToString("、") { DataSource.fromShortName(it)?.displayName ?: it }
        val nameInput = (view.findViewById<android.widget.EditText>(R.id.etTaskName)?.text?.toString()?.trim())
            ?.takeIf { it.isNotBlank() }
            ?: "$srcNames→$tgtNames"
        val task = com.jichi.ob.model.SyncTask(
            id = java.util.UUID.randomUUID().toString(),
            name = nameInput,
            sources = sources,
            targets = targets,
            count = prefs.getSyncCount(),
            skip = prefs.getSkipCount(),
            incremental = true,
            force = view.findViewById<com.google.android.material.switchmaterial.SwitchMaterial>(R.id.switchForceRetransmit)?.isChecked ?: false,
            coordinateConvert = view.findViewById<com.google.android.material.switchmaterial.SwitchMaterial>(R.id.switchGcj02)?.isChecked ?: false,
            autoSync = false
        )
        prefs.upsertTask(task)
        Toast.makeText(requireContext(), "任务已保存：$nameInput", Toast.LENGTH_SHORT).show()
        // 清空任务名输入，方便连续保存
        view.findViewById<android.widget.EditText>(R.id.etTaskName)?.text?.clear()
        (activity as? com.jichi.ob.MainActivity)?.refreshTasksFromSettings()
    }

    /** v8.2.3: 能力矩阵提示条（统计隐藏平台数） */
    private fun updateCapHint() {
        val tv = view?.findViewById<TextView>(R.id.tvCapHint) ?: return
        val hiddenSrc = (0 until gridSource.childCount).count {
            val b = gridSource.getChildAt(it) as? PlatformButton ?: return@count false
            b.visibility == android.view.View.GONE
        }
        val hiddenTgt = (0 until gridTarget.childCount).count {
            val b = gridTarget.getChildAt(it) as? PlatformButton ?: return@count false
            b.visibility == android.view.View.GONE
        }
        tv.text = if (hiddenSrc + hiddenTgt == 0)
            "未登录平台已自动隐藏，去「登录」页登录后自动出现"
        else "已隐藏 $hiddenSrc 个来源 / $hiddenTgt 个目标（未登录或不可用），登录后自动出现"
    }

    /**
     * v7.8.2: 打开存储目录（多级兼容，适配vivo等国产ROM）
     * ① content:// 目录URI + 目录MIME（分区存储标准方案）
     * ② file:// 目录 + 目录MIME（部分ROM/旧系统文件管理器）
     * ③ 系统文档选择器 DocumentsUI（所有设备兜底，尽量定位到目标目录）
     */
    private fun openSaveDir() {
        val dir = com.jichi.ob.MainActivity.SAVE_DIR
        try { if (!dir.exists()) dir.mkdirs() } catch (_: Exception) {}
        val mimeDir = DocumentsContract.Document.MIME_TYPE_DIR // vnd.android.document/directory
        val rel = dir.absolutePath.removePrefix("/storage/emulated/0/").trimStart('/')

        // ① 首选：content:// 目录URI + 目录MIME
        try {
            val uri = DocumentsContract.buildDocumentUri("com.android.externalstorage.documents", "primary:$rel")
            val intent = Intent(Intent.ACTION_VIEW).apply {
                data = uri
                type = mimeDir
                flags = Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
            }
            startActivity(intent); return
        } catch (_: Exception) {}

        // ② 回退：file:// 目录 + 目录MIME
        try {
            val intent = Intent(Intent.ACTION_VIEW).apply {
                setDataAndType(Uri.fromFile(dir), mimeDir)
                flags = Intent.FLAG_GRANT_READ_URI_PERMISSION
            }
            startActivity(intent); return
        } catch (_: Exception) {}

        // ③ 兜底：系统文档选择器 DocumentsUI（所有设备可用），尽量定位到目标目录
        try {
            val intent = Intent(Intent.ACTION_OPEN_DOCUMENT_TREE)
            if (android.os.Build.VERSION.SDK_INT >= 26) {
                intent.putExtra("android.intent.extra.INITIAL_URI", DocumentsContract.buildDocumentUri(
                    "com.android.externalstorage.documents", "primary:$rel"))
            }
            startActivity(intent); return
        } catch (_: Exception) {}

        Toast.makeText(requireContext(), "无法直接打开目录，请到文件管理器查看：\n${dir.absolutePath}", Toast.LENGTH_LONG).show()
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
        "mw" -> requireContext().getColor(R.color.mywhoosh_orange)
        "zf" -> requireContext().getColor(R.color.zwift_purple)
        "icu" -> requireContext().getColor(R.color.intervals_icu_orange)
        "kp" -> requireContext().getColor(R.color.keep_yellow)
        "cd" -> requireContext().getColor(R.color.codoon_green)
        "zp" -> requireContext().getColor(R.color.zepp_blue)
        "kt" -> requireContext().getColor(R.color.komoot_red)
        "su" -> requireContext().getColor(R.color.suunto_blue)
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
            // v8.2.3: 能力矩阵——未登录平台隐藏（登录后设置页才显示）
            btn.visibility = if (sds != null && !prefs.isLoggedIn(sds)) android.view.View.GONE else android.view.View.VISIBLE
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
                if (multiSourceMode) {
                    // v8.2.3.5: 多对一——来源多选
                    if (tag == selectedTargetTag) {
                        Toast.makeText(requireContext(), "选择同步来源不能相同，已从同步目标移除", Toast.LENGTH_SHORT).show()
                        selectedTargetTag = ""
                        refreshTargetButtons()
                    }
                    if (selectedSourceTags.contains(tag)) selectedSourceTags.remove(tag)
                    else selectedSourceTags.add(tag)
                    refreshSourceButtons()
                } else {
                    // 一对多（默认）：来源单选
                    // 互斥：来源与目标不能为同一平台
                    if (selectedTargetTags.contains(tag)) {
                        Toast.makeText(requireContext(), "选择同步来源不能相同，已从同步目标移除", Toast.LENGTH_SHORT).show()
                        selectedTargetTags.remove(tag)
                        refreshTargetButtons()
                    }
                    selectedSourceTag = tag
                    // v7.7.5: 选择来源即保存，重启后保留
                    prefs.setLastSource(tag)
                    refreshSourceButtons()
                }
            }
        }
    }

    private fun setupTargetButtons() {
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? PlatformButton ?: continue
            val tag = btn.tag as? String ?: continue
            val tds = DataSource.fromShortName(tag)
            // v8.2.3: 能力矩阵——未登录目标隐藏（Keep 半自动导入始终显示；开发中平台显示但不可选）
            val canShow = tds == null ||
                tds == DataSource.KEEP ||
                (UploadSupport.fromDataSource(tds).available && prefs.isLoggedIn(tds))
            btn.visibility = if (canShow) android.view.View.VISIBLE else android.view.View.GONE
            btn.buttonText = tds?.displayName ?: tag
            btn.bind(platformColor(tag))
            // v8.2.3.1: 移除 Outbase 独占强调（原 16.5sp 字号/独占行与其他平台不一致），全部统一 11sp
            btn.emphasize = false
            btn.setTextSizeDp(11f)
            btn.setOnClickListener {
                if (!btn.isEnabled) return@setOnClickListener
                val ds = DataSource.fromShortName(tag)
                // 未登录平台不可选（Keep 除外：半自动导入无需 Keep 登录态）
                if (ds == null || (!prefs.isLoggedIn(ds) && ds != DataSource.KEEP)) {
                    Toast.makeText(requireContext(), "请先登录${ds?.displayName ?: "该平台"}", Toast.LENGTH_SHORT).show()
                    return@setOnClickListener
                }
                if (multiSourceMode) {
                    // v8.2.3.5: 多对一——目标单选
                    if (selectedSourceTags.contains(tag)) {
                        Toast.makeText(requireContext(), "选择同步目标不能与来源相同", Toast.LENGTH_SHORT).show()
                        return@setOnClickListener
                    }
                    selectedTargetTag = tag
                    refreshTargetButtons()
                } else {
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
        // v8.2.1: 自动补位——隐藏平台释放格子，其余平台紧凑前移
        rebuildGrid(gridTarget)
    }

    private fun refreshTargetButtons() {
        for (j in 0 until gridTarget.childCount) {
            val b = gridTarget.getChildAt(j) as? PlatformButton ?: continue
            val tag = b.tag as? String ?: ""
            val sel = if (multiSourceMode) tag == selectedTargetTag else selectedTargetTags.contains(tag)
            setButtonSelected(b, sel, tag)
        }
        updateTargetCountLabel()
        updateForceRetransmitState()
        // v7.7.5: 目标变化即保存，重启后保留上次目标
        if (multiSourceMode) prefs.setLastTarget(selectedTargetTag)
        else prefs.setLastTargets(selectedTargetTags.toList())
    }

    /**
     * v7.6.8: 忽略记忆强制重传开关状态
     * - 多目标(>1)：强制开启且不可操作（同步逻辑按 targets.size>1 强制忽略记忆）
     * - 单选(1)：用户自选（prefs保存偏好）
     */
    private fun updateForceRetransmitState() {
        val sw = view?.findViewById<SwitchMaterial>(R.id.switchForceRetransmit) ?: return
        val hint = view?.findViewById<TextView>(R.id.tvForceRetransmitHint) ?: return
        val multi = if (multiSourceMode) false else selectedTargetTags.size > 1
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
        val tv = view?.findViewById<TextView>(R.id.tvTargetHint) ?: return
        tv.text = if (multiSourceMode) {
            if (selectedTargetTag.isEmpty()) "同步目标 (单选，点击选择):"
            else "同步目标: 已选 ${DataSource.fromShortName(selectedTargetTag)?.displayName ?: selectedTargetTag}"
        } else {
            if (selectedTargetTags.isEmpty()) "同步目标 (可多选，点击切换):"
            else "同步目标 (可多选): 已选 ${selectedTargetTags.size} 个"
        }
    }

    private fun restoreSettings(view: View) {
        if (multiSourceMode) {
            // v8.2.3.5: 多对一恢复（多来源 + 单目标）
            selectedSourceTags.clear()
            selectedSourceTags.addAll(prefs.getLastSourceTags().filter { t ->
                DataSource.fromShortName(t)?.let { ds -> prefs.isLoggedIn(ds) } == true
            })
            refreshSourceButtons()
            val lastTgt = prefs.getLastTargetRaw()
            if (lastTgt.isNotBlank() && lastTgt != selectedSourceTag &&
                (DataSource.fromShortName(lastTgt)?.let { ds -> ds == DataSource.KEEP || prefs.isLoggedIn(ds) } ?: false)) {
                selectedTargetTag = lastTgt
            }
            for (i in 0 until gridTarget.childCount) {
                val btn = gridTarget.getChildAt(i) as? PlatformButton ?: continue
                val tag = btn.tag as? String ?: continue
                setButtonSelected(btn, tag == selectedTargetTag, tag)
            }
            updateTargetCountLabel()
        } else {
            val lastSrc = prefs.getLastSource()
            if (lastSrc.isNotBlank()) selectedSourceTag = lastSrc
            refreshSourceButtons()
            // v7.6.7: 一对多 - 恢复多个目标（过滤未登录和与来源相同的平台；Keep 半自动导入始终可恢复）
            selectedTargetTags.clear()
            selectedTargetTags.addAll(prefs.getLastTargets().filter { t ->
                t != selectedSourceTag && (DataSource.fromShortName(t)?.let { ds -> ds == DataSource.KEEP || prefs.isLoggedIn(ds) } ?: false)
            })
            for (i in 0 until gridTarget.childCount) {
                val btn = gridTarget.getChildAt(i) as? PlatformButton ?: continue
                val tag = btn.tag as? String ?: continue
                setButtonSelected(btn, selectedTargetTags.contains(tag), tag)
            }
            updateTargetCountLabel()
        }
        updateTargetChips()
        updateForceRetransmitState()
        view.findViewById<SwitchMaterial>(R.id.switchGcj02).isChecked = prefs.isGcj02Convert()
        view.findViewById<SwitchMaterial>(R.id.switchGarminWellness)?.isChecked = prefs.isGarminWellnessSync()
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
            // v7.9.2: Keep 为半自动导入目标——始终可选（导入在 Keep App 内手动完成，无需本软件 Keep 登录态）
            if (ds == DataSource.KEEP) {
                btn.isEnabled = true
                btn.alpha = 1.0f
                val name = ds.displayName
                val spannable = SpannableString("$name\n半自动导入")
                spannable.setSpan(AbsoluteSizeSpan(11, true), 0, name.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                spannable.setSpan(AbsoluteSizeSpan(8, true), name.length + 1, spannable.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                btn.buttonText = spannable
                btn.maxLines = 2
                btn.bind(platformColor(btn.tag as? String ?: ""))
                continue
            }
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
            // v8.2.3: 能力矩阵——未登录目标隐藏（Keep 半自动导入除外）；登录后自动出现
            if (!prefs.isLoggedIn(ds)) {
                btn.visibility = android.view.View.GONE
                continue
            }
            btn.visibility = android.view.View.VISIBLE
        }
        rebuildGrid(gridTarget)
        updateCapHint()
    }

    /** v7.6.7: 来源网格——未登录平台隐藏（v8.2.3 能力矩阵：仅显示可下载且已登录的来源） */
    private fun updateSourceChips() {
        for (i in 0 until gridSource.childCount) {
            val btn = gridSource.getChildAt(i) as? PlatformButton ?: continue
            val ds = DataSource.fromShortName(btn.tag as? String ?: "") ?: continue
            // v8.2.3: 未登录平台整体隐藏（含实验室），登录后自动出现
            if (!prefs.isLoggedIn(ds)) {
                btn.visibility = android.view.View.GONE
                continue
            }
            btn.visibility = android.view.View.VISIBLE
            btn.isEnabled = true
            btn.alpha = 1.0f
            val tag = btn.tag as? String ?: ""
            val sel = if (multiSourceMode) selectedSourceTags.contains(tag) else tag == selectedSourceTag
            setButtonSelected(btn, sel, tag)
        }
        // v8.2.1: 自动补位——GONE 平台释放格子，其余平台紧凑前移（不留空洞、不出错行）
        rebuildGrid(gridSource)
        updateCapHint()
    }

    /**
     * v8.2.1: 自动补位重排网格。
     * GridLayout 对 GONE 子视图仍保留 grid cell（隐藏平台处会留空洞），追加占位卡会掉到下一行错位。
     * 因此不增删按钮，只把可见平台按原顺序连续重排坐标（列满换行），隐藏平台排到末尾虚拟位置；
     * 登录实验室平台后再调用本方法即可自动插回网格，实现"隐藏后自动补位"，无任何占位元素。
     */
    private fun rebuildGrid(grid: GridLayout) {
        var col = 0
        var row = 0
        var goneRow = 100
        for (i in 0 until grid.childCount) {
            val btn = grid.getChildAt(i) as? PlatformButton ?: continue
            val lp = btn.layoutParams as? GridLayout.LayoutParams ?: continue
            if (btn.visibility == android.view.View.VISIBLE) {
                lp.columnSpec = GridLayout.spec(col, 1f)
                lp.rowSpec = GridLayout.spec(row)
                col++
                if (col >= 4) { col = 0; row++ }
            } else {
                // 隐藏平台排到末尾虚拟行（不可见，不占布局）
                lp.columnSpec = GridLayout.spec(0, 1f)
                lp.rowSpec = GridLayout.spec(goneRow++)
            }
            // ⚠️ 不能执行 btn.layoutParams = lp：PlatformButton 是 FrameLayout，赋值会触发
            // checkLayoutParams 把 GridLayout.LayoutParams 转成 FrameLayout.LayoutParams，
            // 之后 GridLayout 布局强转回 GridLayout.LayoutParams 抛 ClassCastException 闪退。
            // 直接改 lp 字段（同引用）+ requestLayout 即可生效。
        }
        grid.requestLayout()
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
            if (multiSourceMode) {
                // v8.2.3.5: 多对一——清理未登录来源与冲突目标
                selectedSourceTags.removeAll { t ->
                    val ds = DataSource.fromShortName(t)
                    ds == null || !prefs.isLoggedIn(ds) || t == selectedTargetTag
                }
                if (selectedSourceTags.contains(selectedTargetTag)) selectedTargetTag = ""
                refreshSourceButtons()
                for (i in 0 until gridTarget.childCount) {
                    val b = gridTarget.getChildAt(i) as? PlatformButton ?: continue
                    setButtonSelected(b, (b.tag as? String) == selectedTargetTag, b.tag as? String ?: "")
                }
            } else {
                // 清理目标中未登录/与来源相同的平台
                selectedTargetTags.removeAll { t ->
                    val ds = DataSource.fromShortName(t)
                    ds == null || !prefs.isLoggedIn(ds) || t == selectedSourceTag
                }
                // 恢复目标网格按钮（重新应用选中态）
                for (i in 0 until gridTarget.childCount) {
                    val btn = gridTarget.getChildAt(i) as? PlatformButton ?: continue
                    val ds = DataSource.fromShortName(btn.tag as? String ?: "") ?: continue
                    // v8.2.3: 能力矩阵——未登录目标隐藏（Keep 半自动导入始终显示）
                    val canShow = ds == DataSource.KEEP ||
                        (UploadSupport.fromDataSource(ds).available && prefs.isLoggedIn(ds))
                    btn.visibility = if (canShow) android.view.View.VISIBLE else android.view.View.GONE
                    if (btn.visibility == android.view.View.GONE) continue
                    btn.isEnabled = prefs.isLoggedIn(ds) && UploadSupport.fromDataSource(ds).available
                    btn.alpha = if (btn.isEnabled) 1.0f else 0.7f
                    if (btn.isEnabled) setButtonSelected(btn, selectedTargetTags.contains(btn.tag as? String ?: ""), btn.tag as? String ?: "")
                }
            }
            updateTargetChips()
            updateTargetCountLabel()
            updateForceRetransmitState()
            // v8.2.1: 登录状态变化后重排（登录实验室平台 → 自动显示；注销 → 紧凑前移）
            rebuildGrid(gridTarget)
            updateCapHint()
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
        // v7.8.6: 修复"未选目标却兜底返回Outbase"的bug——未勾选时返回空列表，
        // 由 startSync 统一提示"请选择至少一个同步目标"
        return selectedTargetTags.mapNotNull { DataSource.fromShortName(it) }
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

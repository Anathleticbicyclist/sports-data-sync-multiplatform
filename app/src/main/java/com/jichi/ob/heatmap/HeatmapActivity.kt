package com.jichi.ob.heatmap

import android.app.Activity
import android.app.AlertDialog
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Typeface
import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.widget.Button
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.SeekBar
import android.widget.TextView
import android.widget.Toast
import androidx.core.view.GravityCompat
import java.io.File

/**
 * 来源：jadx 反编译 `HeatmapActivity.java`（classes2.dex）改写为地道 Kotlin。
 * 原始公开行为保持不变：标题/提示文案、平台下载对话框（方式B）、
 * 扫描路径（下载/鸡翅幸哲迈进OB、App 下载记录、已选文件夹）、
 * 每个文件需 > 5 个点才参与叠加、> 10 个点才生成、tileBounds 上限 64 瓦片、
 * 透明度/深浅底/在线底图/选择文件夹等控件原样保留。
 *
 * 已知问题（反编译原文如此，改写时按下述还原，见注释）：
 * 1. `onActivityResult` 在反编译中是 `requestCode==85 && resultCode==0 &&
 *    intent==null && intent.getData()==null`——恒假且会对 null 解引用，
 *    原意显然是“用户选完文件夹后刷新”；改写为
 *    `requestCode==85 && resultCode==RESULT_OK && intent?.data != null`。
 * 2. `scanLocal` 里反编译出现未定义的变量 `r1.getProgress()`，原意是
 *    `sigmaBar.getProgress() + 1`；改写后扫描改用下述线宽状态，不再读它。
 *
 * 线粗修复（本次核心改动）：
 * 旧逻辑：“平滑度”SeekBar max 8 默认 2，`regenerate(progress+1)` 把 f=3
 * 传给 HeatmapEngine.generate；Engine 里半径 = max(1, f.toInt()) = 3px、
 * 模糊 = max(1, f.roundToInt()) = 3 次，有效线宽约 13px，zoom 13 下约 110m+。
 * 新逻辑把半径与模糊拆成两个独立参数（见 [radiusPx] / [blurPasses]），
 * 并新增“线宽”SeekBar（范围 1~5，默认 2），映射见 [lineWidthToRadiusBlur]。
 * 原“平滑度”SeekBar 保留为可选高级控制：改动它时只改 [blurPasses]，不改半径。
 */
class HeatmapActivity : Activity() {

    private var alphaBar: SeekBar? = null
    private var btnBase: Button? = null
    private var btnDark: Button? = null
    private var btnDownload: Button? = null
    private var btnLight: Button? = null
    private var btnScan: Button? = null
    private var btnVector: Button? = null
    private var controlRow: LinearLayout? = null
    private var emptyLayout: LinearLayout? = null
    private var emptyView: TextView? = null
    private var loading: ProgressBar? = null
    private var mapView: HeatmapView? = null
    private var sigmaBar: SeekBar? = null
    private var lineWidthBar: SeekBar? = null
    private var lineWidthLabel: TextView? = null
    private var statusView: TextView? = null
    private var tipView: TextView? = null
    private val main = Handler(Looper.getMainLooper())

    @Volatile
    private var generating = false

    /**
     * 当前线宽档位（1~5，默认 [DEFAULT_LINE_WIDTH]）与由此导出的
     * splat 半径 / 模糊次数。改“线宽”时两者一起按档位表更新；
     * 改“平滑度”时只更新 [blurPasses]，[radiusPx] 不动。
     */
    private var lineWidthLevel: Int = DEFAULT_LINE_WIDTH
    private var radiusPx: Int = DEFAULT_RADIUS_PX
    private var blurPasses: Int = DEFAULT_BLUR_PASSES

    /** 最近一次成功扫描的全部轨迹点（传给 HeatmapView 画矢量细线）。 */
    private var lastTrackPoints: List<DoubleArray> = emptyList()

    private fun invalidateUiColors() {
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        // 见文件头已知问题 1：反编译的判断恒假且会 NPE，此处按原意还原。
        if (requestCode == FOLDER_REQUEST_CODE && resultCode == RESULT_OK) {
            val folderUri = data?.data ?: return
            HeatmapTrackStore.setFolderUri(this, folderUri)
            scanLocal()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        buildUi()
    }

    override fun onResume() {
        super.onResume()
        scanLocal()
    }

    private fun buildUi() {
        val padding = dp(12)
        val backgroundColor = if (isDarkTheme()) -15263458 else -657672
        val textColor = if (isDarkTheme()) -1249293 else -13947082
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(backgroundColor)
            setPadding(padding, dp(8), padding, padding)
        }
        val titleRow = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = 16
        }
        val backView = TextView(this).apply {
            text = "‹ 返回"
            textSize = 16f
            typeface = Typeface.DEFAULT_BOLD
            setTextColor(-1550068)
            setPadding(0, dp(8), dp(16), dp(8))
            setOnClickListener { finish() }
        }
        val titleView = TextView(this).apply {
            text = "热力图"
            textSize = 18f
            typeface = Typeface.DEFAULT_BOLD
            setTextColor(textColor)
        }
        val subtitleView = TextView(this).apply {
            text = "  仅叠加本地缓存过的轨迹文件"
            textSize = 12f
            setTextColor(-7696488)
            gravity = GravityCompat.END
        }
        titleRow.addView(backView)
        titleRow.addView(titleView)
        titleRow.addView(subtitleView, LinearLayout.LayoutParams(0, -2, 1f))
        root.addView(titleRow)

        tipView = TextView(this).apply {
            text = "⚠ 热力图叠加本地轨迹：自动读取「下载/鸡翅幸哲迈进OB」与 App 下载记录；可点下方「选择文件夹」手动指定目录。底图离线时热力照常显示。"
            textSize = 12f
            setTextColor(-4959479)
            setBackgroundColor(452962637)
            setPadding(dp(10), dp(8), dp(10), dp(8))
        }
        val tipParams = LinearLayout.LayoutParams(-1, -2).apply { topMargin = dp(8) }
        root.addView(tipView, tipParams)

        val mapFrame = FrameLayout(this).apply {
            setBackgroundColor(if (isDarkTheme()) -15987182 else -1512722)
        }
        mapView = HeatmapView(this)
        mapFrame.addView(mapView, FrameLayout.LayoutParams(-1, -1))
        emptyLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = 17
            setBackgroundColor(backgroundColor)
        }
        emptyView = TextView(this).apply {
            text = "📂 未找到本地轨迹文件\n\n已自动扫描：Download/鸡翅幸哲迈进OB、App 下载记录与已选文件夹\n可点「选择文件夹」手动指定 GPX/FIT/TCX 目录\n（每个文件需 ≥10 个轨迹点才参与热力叠加）"
            textSize = 14f
            gravity = 17
            setTextColor(-7696488)
            setPadding(dp(20), 0, dp(20), dp(16))
        }
        emptyLayout?.addView(emptyView)
        val goSyncButton = Button(this).apply {
            text = "去同步数据到文件夹"
            setTextColor(-1)
            setBackgroundColor(-1550068)
            setOnClickListener { openDownloadCenter() }
        }
        emptyLayout?.addView(goSyncButton)
        emptyLayout?.visibility = View.GONE
        mapFrame.addView(emptyLayout, FrameLayout.LayoutParams(-1, -1))
        loading = ProgressBar(this).apply { visibility = View.GONE }
        mapFrame.addView(loading, FrameLayout.LayoutParams(dp(48), dp(48), 17))
        val mapParams = LinearLayout.LayoutParams(-1, 0, 1f).apply { topMargin = dp(8) }
        root.addView(mapFrame, mapParams)

        statusView = TextView(this).apply {
            text = "未扫描"
            textSize = 12f
            setTextColor(-7696488)
            setPadding(dp(2), dp(6), dp(2), dp(4))
        }
        root.addView(statusView)

        // 第一排：透明度 + 平滑度（高级控制，只改模糊次数，不改半径）。
        val sliderRow = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = 16
        }
        val alphaLabel = TextView(this).apply {
            text = "透明度"
            textSize = 12f
            setTextColor(textColor)
        }
        alphaBar = SeekBar(this).apply {
            max = 100
            progress = 90
            setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
                override fun onStartTrackingTouch(seekBar: SeekBar) {}
                override fun onStopTrackingTouch(seekBar: SeekBar) {}
                override fun onProgressChanged(seekBar: SeekBar, progress: Int, fromUser: Boolean) {
                    mapView?.setHeatAlpha(progress / 100f)
                }
            })
        }
        val sigmaLabel = TextView(this).apply {
            text = "平滑度"
            textSize = 12f
            setTextColor(textColor)
        }
        sigmaBar = SeekBar(this).apply {
            max = 8
            progress = 2
            setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
                override fun onStartTrackingTouch(seekBar: SeekBar) {}
                override fun onStopTrackingTouch(seekBar: SeekBar) {}
                override fun onProgressChanged(seekBar: SeekBar, progress: Int, fromUser: Boolean) {
                    // 平滑度只改模糊次数（progress+1 = 1~9 次），半径保持不变。
                    blurPasses = progress + 1
                    regenerate()
                }
            })
        }
        sliderRow.addView(alphaLabel)
        sliderRow.addView(alphaBar, LinearLayout.LayoutParams(0, -2, 1f))
        sliderRow.addView(sigmaLabel)
        sliderRow.addView(sigmaBar, LinearLayout.LayoutParams(0, -2, 1f))
        root.addView(sliderRow)

        // 第二排：线宽（新增，范围 1~5，默认 2；线宽越小线越细）。
        val lineWidthRow = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = 16
        }
        lineWidthLabel = TextView(this).apply {
            text = lineWidthText(DEFAULT_LINE_WIDTH)
            textSize = 12f
            setTextColor(textColor)
        }
        lineWidthBar = SeekBar(this).apply {
            max = 4 // progress 0~4 对应线宽档位 1~5
            progress = DEFAULT_LINE_WIDTH - 1
            setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
                override fun onStartTrackingTouch(seekBar: SeekBar) {}
                override fun onStopTrackingTouch(seekBar: SeekBar) {}
                override fun onProgressChanged(seekBar: SeekBar, progress: Int, fromUser: Boolean) {
                    applyLineWidthLevel(progress + 1)
                    regenerate()
                }
            })
        }
        lineWidthRow.addView(lineWidthLabel)
        lineWidthRow.addView(lineWidthBar, LinearLayout.LayoutParams(0, -2, 1f))
        root.addView(lineWidthRow)

        val buttonRow = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = 16
            setPadding(0, dp(6), 0, 0)
        }
        btnDark = mkButton("深色底", isDarkTheme()).apply {
            setOnClickListener {
                setDark(true)
                btnDark?.setBackgroundColor(-1550068)
                btnLight?.setBackgroundColor(-12960444)
                btnDark?.setTextColor(-1)
                btnLight?.setTextColor(-1249293)
            }
        }
        btnLight = mkButton("浅色底", !isDarkTheme()).apply {
            setOnClickListener {
                setDark(false)
                btnLight?.setBackgroundColor(-1550068)
                btnDark?.setBackgroundColor(-12960444)
                btnLight?.setTextColor(-1)
                btnDark?.setTextColor(-1249293)
            }
        }
        btnScan = mkButton("扫描本地轨迹", false).apply {
            setOnClickListener { scanLocal() }
        }
        btnDownload = mkButton("平台下载", false).apply {
            setOnClickListener { showDownloadDialog() }
        }
        buttonRow.addView(btnDark)
        buttonRow.addView(btnLight)
        buttonRow.addView(btnScan, LinearLayout.LayoutParams(0, -2, 1f))
        buttonRow.addView(btnDownload, LinearLayout.LayoutParams(0, -2, 1f))
        root.addView(buttonRow)

        val bottomRow = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = 16
        }
        btnBase = mkButton("底图: 在线", false).apply {
            setOnClickListener {
                val view = mapView ?: return@setOnClickListener
                val enabled = !view.getOnlineTiles()
                view.setOnlineTiles(enabled)
                btnBase?.text = if (enabled) "底图: 在线" else "底图: 离线"
            }
        }
        bottomRow.addView(btnBase, LinearLayout.LayoutParams(0, -2, 1f))
        val folderButton = mkButton("选择文件夹", false).apply {
            setOnClickListener {
                try {
                    startActivityForResult(
                        Intent("android.intent.action.OPEN_DOCUMENT_TREE").addFlags(1),
                        FOLDER_REQUEST_CODE
                    )
                } catch (ignored: Exception) {
                    Toast.makeText(applicationContext, "无法打开文件选择器", Toast.LENGTH_SHORT).show()
                }
            }
        }
        bottomRow.addView(folderButton, LinearLayout.LayoutParams(0, -2, 1f))
        // 矢量细线叠加层开关（默认开）：关掉后只剩栅格热力图。
        btnVector = mkButton("细线: 开", false).apply {
            setOnClickListener {
                val view = mapView ?: return@setOnClickListener
                val enabled = !view.vectorOverlayEnabled
                view.setVectorOverlayEnabled(enabled)
                btnVector?.text = if (enabled) "细线: 开" else "细线: 关"
            }
        }
        bottomRow.addView(btnVector, LinearLayout.LayoutParams(0, -2, 1f))
        root.addView(bottomRow)

        setContentView(root)
    }

    private fun mkButton(text: String, active: Boolean): Button {
        return Button(this).apply {
            setText(text)
            textSize = 13f
            isAllCaps = false
            setPadding(dp(10), 0, dp(10), 0)
            if (active) {
                setBackgroundColor(-1550068)
                setTextColor(-1)
            } else {
                setBackgroundColor(if (isDarkTheme()) -12960444 else -1841686)
                setTextColor(if (isDarkTheme()) -1249293 else -13947082)
            }
        }
    }

    private fun isDarkTheme(): Boolean =
        (resources.configuration.uiMode and 48) == 32

    private fun setDark(dark: Boolean) {
        mapView?.setDark(dark)
        invalidateUiColors()
    }

    private fun openDownloadCenter() {
        try {
            startActivity(Intent(this, Class.forName("com.jichi.ob.MainActivity")))
        } catch (ignored: Exception) {
            Toast.makeText(this, "无法打开下载中心", Toast.LENGTH_SHORT).show()
        }
    }

    private fun showDownloadDialog() {
        val items = Array(PLATFORMS.size) { index -> "从 ${PLATFORMS[index]} 下载" }
        AlertDialog.Builder(this)
            .setTitle("平台下载（方式B）")
            .setItems(items) { _, which -> showCountDialog(PLATFORMS[which]) }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun showCountDialog(platform: String) {
        AlertDialog.Builder(this)
            .setTitle("从 $platform 下载数量")
            .setItems(arrayOf("最近 50 条", "最近 100 条", "全部")) { _, which ->
                val countText = when (which) {
                    0 -> "50"
                    1 -> "100"
                    else -> "全部"
                }
                Toast.makeText(
                    this,
                    "请在下载中心选择「$platform」下载 $countText 条，完成后返回热力图自动叠加",
                    Toast.LENGTH_LONG
                ).show()
                openDownloadCenter()
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /**
     * 线宽档位文案，UI 上注明“线宽越小线越细”。
     */
    private fun lineWidthText(level: Int): String = "线宽 $level（线宽越小线越细）"

    /**
     * 按档位表更新半径与模糊次数，并刷新线宽文案。
     * 档位表（写死，见文件头与 [lineWidthToRadiusBlur]）：
     * 1→(1,0)，2→(1,1)，3→(2,1)，4→(2,2)，5→(3,2)。
     */
    private fun applyLineWidthLevel(level: Int) {
        lineWidthLevel = level.coerceIn(1, 5)
        val (radius, blur) = lineWidthToRadiusBlur(lineWidthLevel)
        radiusPx = radius
        blurPasses = blur
        lineWidthLabel?.text = lineWidthText(lineWidthLevel)
    }

    /** 扫描本地轨迹并用当前线宽状态（半径/模糊）生成热力图。 */
    private fun scanLocal() {
        if (generating) return
        generating = true
        loading?.visibility = View.VISIBLE
        val currentRadius = radiusPx
        val currentBlur = blurPasses
        Thread {
            try {
                val (points, totalPoints, fileCount) = collectTrackPoints()
                val bounds = if (points.size > 10) HeatmapEngine.tileBounds(points, 64) else null
                if (bounds == null) {
                    main.post {
                        loading?.visibility = View.GONE
                        generating = false
                        statusView?.text = "未找到可用轨迹文件：请先在下载中心下载，或点「选择文件夹」指定轨迹目录（需 ≥10 个轨迹点）"
                        emptyLayout?.visibility = View.VISIBLE
                    }
                } else {
                    lastTrackPoints = points
                    val bitmap = HeatmapEngine.generate(
                        points, bounds, currentRadius, currentBlur,
                        maxOf(1, fileCount), isDarkTheme()
                    )
                    main.post {
                        loading?.visibility = View.GONE
                        generating = false
                        emptyLayout?.visibility = View.GONE
                        if (bitmap != null) {
                            mapView?.setHeatmap(
                                bitmap, bounds[0], bounds[1], bounds[2], bounds[3], bounds[4], points
                            )
                            statusView?.text = "已叠加 $fileCount 个文件 · $totalPoints 个轨迹点 · zoom ${bounds[0]}"
                        } else {
                            statusView?.text = "生成失败（数据量过大或异常）"
                        }
                    }
                }
            } catch (error: Throwable) {
                main.post {
                    loading?.visibility = View.GONE
                    generating = false
                    statusView?.text = "扫描失败: ${error.message ?: error.javaClass.simpleName}"
                }
            }
        }.start()
    }

    /** 用当前线宽状态重新生成热力图（平滑度/线宽 SeekBar 变化时调用）。 */
    private fun regenerate() {
        if (generating) return
        generating = true
        loading?.visibility = View.VISIBLE
        val currentRadius = radiusPx
        val currentBlur = blurPasses
        Thread {
            try {
                val (points, _, fileCount) = collectTrackPoints()
                val bounds = if (points.size > 10) HeatmapEngine.tileBounds(points, 64) else null
                if (bounds == null) {
                    main.post {
                        loading?.visibility = View.GONE
                        generating = false
                    }
                } else {
                    lastTrackPoints = points
                    val bitmap = HeatmapEngine.generate(
                        points, bounds, currentRadius, currentBlur,
                        maxOf(1, fileCount), isDarkTheme()
                    )
                    main.post {
                        loading?.visibility = View.GONE
                        generating = false
                        if (bitmap != null) {
                            mapView?.setHeatmap(
                                bitmap, bounds[0], bounds[1], bounds[2], bounds[3], bounds[4], points
                            )
                        }
                    }
                }
            } catch (ignored: Throwable) {
                main.post {
                    loading?.visibility = View.GONE
                    generating = false
                }
            }
        }.start()
    }

    /**
     * 扫描并解析全部本地轨迹：返回（全部轨迹点，轨迹点总数，参与叠加的文件数）。
     * 每个文件需 > 5 个点才参与叠加（原逻辑同）。
     */
    private fun collectTrackPoints(): Triple<List<DoubleArray>, Int, Int> {
        val points = ArrayList<DoubleArray>()
        var totalPoints = 0
        var fileCount = 0
        for (file in HeatmapTrackStore.scan(this)) {
            try {
                val parsed: List<DoubleArray> = TrackFileParser.parseFile(file)
                if (parsed.size > 5) {
                    points.addAll(parsed)
                    totalPoints += parsed.size
                    fileCount++
                }
            } catch (ignored: Exception) {
            }
        }
        return Triple(points, totalPoints, fileCount)
    }

    private fun dp(value: Int): Int =
        (value * resources.displayMetrics.density + 0.5f).toInt()

    companion object {
        private val PLATFORMS = arrayOf(
            "行者", "迈金", "佳明", "iGPSPORT", "高驰", "Wahoo", "百锐腾", "黑鸟单车",
            "Keep", "咕咚", "Zepp", "捷安特", "Outbase", "Suunto", "Komoot", "Strava"
        )

        private const val FOLDER_REQUEST_CODE = 85

        /** 线宽 SeekBar 默认档位 2。 */
        const val DEFAULT_LINE_WIDTH = 2

        /** 默认档位对应的半径与模糊次数（见档位表）。 */
        private const val DEFAULT_RADIUS_PX = 1
        private const val DEFAULT_BLUR_PASSES = 1

        /**
         * 线宽档位 →（splat 半径 px，模糊次数）映射表（写死）：
         * ```
         * 档位  半径  模糊  有效半宽约  线宽约
         *  1     1     0    1px         3px（= 2*1+1，不模糊）
         *  2     1     1    2px         3~4px（默认档）
         *  3     2     1    3px         5~6px
         *  4     2     2    4px         7~8px
         *  5     3     2    5px         9~10px
         * ```
         * 对照旧默认：f=3 → 半径 3、模糊 3、有效半宽约 6px、线宽约 13px，
         * zoom 13（约 19m/px）下约 110m+。新默认 2 档约 3~4px，明显变细；
         * 1 档再细也有栅格扩散，轨迹走向由矢量细线叠加层（2dp）保证。
         */
        @JvmStatic
        fun lineWidthToRadiusBlur(level: Int): Pair<Int, Int> = when (level.coerceIn(1, 5)) {
            1 -> 1 to 0
            2 -> 1 to 1
            3 -> 2 to 1
            4 -> 2 to 2
            else -> 3 to 2
        }
    }
}

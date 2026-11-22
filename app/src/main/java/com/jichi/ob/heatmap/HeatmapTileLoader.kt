package com.jichi.ob.heatmap

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.util.LruCache
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.io.InputStream
import java.net.HttpURLConnection
import java.net.URL

/**
 * 来源：jadx 反编译 `HeatmapTileLoader.java`（classes2.dex）改写为地道 Kotlin。
 * 原始公开 API 与行为保持不变：
 * - 瓦片 URL 原样保留：浅色先 OpenStreetMap 再 Carto light，深色先 Carto dark
 *   再 OpenStreetMap；User-Agent 为 "JichiOB-Dev/9.5.7 (Android heatmap)"；
 * - 磁盘缓存目录为 `<外部文件目录或内部文件目录>/heatmap_tiles`，
 *   文件名为 `<z>/<x>/<y>_l.png`（浅色）或 `<z>/<x>/<y>_d.png`（深色）；
 * - 内存缓存 LruCache(32)、单后台线程 "heatmap-tiles"（守护线程）、
 *   连接/读取超时各 2500ms、连续失败 4 次即标记离线。
 *
 * 已知问题（反编译原文如此，改写时原样保留，仅在此注明）：
 * - `handleResult()` 把下载成功的瓦片按 `"z/x/y/d|l"` 的 key 放入内存缓存，
 *   而 `getCachedTile()` 是按磁盘绝对路径查内存缓存，两者 key 不一致，
 *   因此经下载写入的瓦片在内存缓存里查不到（仍会走磁盘读取）。
 */
class HeatmapTileLoader(context: Context) {

    private val ctx: Context = context.applicationContext ?: context
    private val cacheDir: File = File(cacheRoot(), CACHE_DIR_NAME).also { it.mkdirs() }

    private val failed = HashSet<String>()
    private val queue = ArrayList<Runnable>()
    private val memCache = LruCache<String, Bitmap>(MEM_CACHE_SIZE)

    @Volatile
    private var online = true

    @Volatile
    private var offline = false

    @Volatile
    private var okTiles = 0

    @Volatile
    private var failTiles = 0

    @Volatile
    private var pendingTiles = 0

    private var worker: Thread? = null

    private fun cacheRoot(): String {
        val externalFilesDir = ctx.getExternalFilesDir(null)
        return externalFilesDir?.absolutePath ?: ctx.filesDir.absolutePath
    }

    /** 先查内存缓存，再读磁盘缓存；都没有返回 null。 */
    fun getCachedTile(zoom: Int, x: Int, y: Int, dark: Boolean): Bitmap? {
        val tileFile = tileFile(zoom, x, y, dark)
        val absolutePath = tileFile.absolutePath
        memCache.get(absolutePath)?.let { return it }
        if (!tileFile.exists()) return null
        return try {
            BitmapFactory.decodeFile(absolutePath)?.also { memCache.put(absolutePath, it) }
        } catch (e: Exception) {
            null
        }
    }

    /**
     * 异步请求一张瓦片：离线/已失败/队列中已有时直接返回；否则入队并
     * 确保后台线程在跑，下载完成后回调 [onDone]（调用方一般用它刷新视图）。
     */
    fun requestTile(zoom: Int, x: Int, y: Int, dark: Boolean, onDone: Runnable?) {
        if (!online || offline) return
        val key = "$zoom/$x/$y/${if (dark) "d" else "l"}"
        synchronized(queue) {
            if (key !in failed && !queueContains(key)) {
                queue.add(TileTask(key) {
                    var downloaded: Bitmap? = null
                    var file: File? = null
                    try {
                        downloaded = download(zoom, x, y, dark)
                        try {
                            file = tileFile(zoom, x, y, dark)
                        } catch (ignored: Throwable) {
                        }
                    } catch (ignored: Throwable) {
                    }
                    try {
                        handleResult(key, downloaded, file)
                    } catch (ignored: IOException) {
                    }
                    onDone?.run()
                })
                pendingTiles++
                val currentWorker = worker
                if (currentWorker == null || !currentWorker.isAlive) {
                    val thread = Thread({
                        while (true) {
                            val task: Runnable
                            synchronized(queue) {
                                if (queue.isEmpty()) {
                                    worker = null
                                    return@Thread
                                }
                                task = queue.removeAt(0)
                            }
                            try {
                                task.run()
                            } catch (ignored: Throwable) {
                            }
                        }
                    }, "heatmap-tiles")
                    worker = thread
                    thread.isDaemon = true
                    thread.start()
                }
            }
        }
    }

    fun setOnlineEnabled(enabled: Boolean) {
        online = enabled
        if (!enabled) return
        synchronized(this) {
            failed.clear()
            failTiles = 0
            offline = false
        }
    }

    fun getOnlineEnabled(): Boolean = online

    fun isOffline(): Boolean = offline

    fun getOkTiles(): Int = okTiles

    fun getFailTiles(): Int = failTiles

    fun getPendingTiles(): Int = pendingTiles

    fun resetTiles() {
        synchronized(this) {
            failed.clear()
            failTiles = 0
            okTiles = 0
            pendingTiles = 0
            offline = false
            memCache.evictAll()
        }
    }

    @Throws(IOException::class)
    private fun handleResult(key: String, bitmap: Bitmap?, file: File?) {
        if (bitmap != null) {
            if (file != null) save(file, bitmap)
            // 注意：此处 key 与 getCachedTile 的磁盘路径 key 不一致（见文件头已知问题）。
            memCache.put(key, bitmap)
            synchronized(this) {
                okTiles++
                if (pendingTiles > 0) pendingTiles--
            }
            return
        }
        synchronized(this) {
            failed.add(key)
            failTiles++
            if (pendingTiles > 0) pendingTiles--
            if (failTiles >= MAX_FAILURES) offline = true
        }
    }

    private fun queueContains(key: String): Boolean =
        queue.any { it is TileTask && it.key == key }

    private fun tileFile(zoom: Int, x: Int, y: Int, dark: Boolean): File =
        File(cacheDir, "$zoom/$x/$y${if (dark) "_d.png" else "_l.png"}")

    @Throws(IOException::class)
    private fun save(file: File, bitmap: Bitmap) {
        try {
            file.parentFile?.mkdirs()
            FileOutputStream(file).use { output ->
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, output)
            }
        } catch (ignored: Exception) {
        }
    }

    /**
     * 按 LIGHT/DARK_SOURCES 顺序逐个尝试下载；任一源返回 2xx/3xx 且能解码
     * 出 Bitmap 即返回，否则返回 null。失败的连接一律 disconnect。
     */
    private fun download(zoom: Int, x: Int, y: Int, dark: Boolean): Bitmap? {
        val sources = if (dark) DARK_SOURCES else LIGHT_SOURCES
        for (template in sources) {
            var connection: HttpURLConnection? = null
            var input: InputStream? = null
            try {
                connection = URL(String.format(template, zoom, x, y)).openConnection() as HttpURLConnection
                connection.connectTimeout = TILE_TIMEOUT_MS
                connection.readTimeout = TILE_TIMEOUT_MS
                connection.setRequestProperty("User-Agent", USER_AGENT)
                connection.setRequestProperty("Accept", "image/png,image/*")
                connection.instanceFollowRedirects = false
                val responseCode = connection.responseCode
                if (responseCode in 200..399) {
                    input = connection.inputStream
                    val bitmap = BitmapFactory.decodeStream(input)
                    if (bitmap != null) return bitmap
                }
            } catch (ignored: Exception) {
            } finally {
                try {
                    input?.close()
                } catch (ignored: Exception) {
                }
                try {
                    connection?.disconnect()
                } catch (ignored: Exception) {
                }
            }
        }
        return null
    }

    private class TileTask(val key: String, private val body: Runnable) : Runnable {
        override fun run() = body.run()
    }

    companion object {
        private const val MAX_FAILURES = 4
        private const val TILE_TIMEOUT_MS = 2500
        private const val MEM_CACHE_SIZE = 32
        private const val CACHE_DIR_NAME = "heatmap_tiles"
        private const val USER_AGENT = "JichiOB-Dev/9.5.7 (Android heatmap)"

        private val LIGHT_SOURCES = arrayOf(
            "https://tile.openstreetmap.org/%d/%d/%d.png",
            "https://basemaps.cartocdn.com/light_all/%d/%d/%d.png"
        )
        private val DARK_SOURCES = arrayOf(
            "https://basemaps.cartocdn.com/dark_all/%d/%d/%d.png",
            "https://tile.openstreetmap.org/%d/%d/%d.png"
        )
    }
}

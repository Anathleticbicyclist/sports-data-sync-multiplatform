package com.jichi.ob.heatmap

import android.content.ContentUris
import android.content.Context
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import androidx.documentfile.provider.DocumentFile
import java.io.File
import java.io.FileOutputStream

/**
 * 来源：jadx 反编译 `HeatmapTrackStore.java`（classes2.dex）改写为地道 Kotlin。
 * 原始公开 API 与行为保持不变：
 * - 扫描路径原样保留：① MediaStore（Download/鸡翅幸哲迈进OB%，API 29+ 才查），
 *   ② 直接读目录（下载/鸡翅幸哲迈进OB 与 App 外部文件目录），③ 用户在
 *   SAF 里选的文件夹树（递归深度上限 3 层）；
 * - 文件名去重（按文件名）、只收 .fit/.gpx/.tcx（不区分大小写）；
 * - 偏好设置名 `heatmap_prefs`、文件夹 key `folder_uri`、物化缓存目录
 *   `heatmap_tracks`、小于等于 16 字节的文件视为无效；
 * - 三路计数 mediaCount / rawCount / safCount 的口径原样保留。
 */
object HeatmapTrackStore {

    private const val KEY_FOLDER = "folder_uri"
    private const val PREFS = "heatmap_prefs"

    @Volatile
    private var mediaCount = 0

    @Volatile
    private var rawCount = 0

    @Volatile
    private var safCount = 0

    /** 轨迹保存目录：公共下载目录下的“鸡翅幸哲迈进OB”。 */
    @JvmStatic
    fun saveDir(): File = File(
        Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS),
        "鸡翅幸哲迈进OB"
    )

    /**
     * 按 MediaStore -> 直接读目录 -> SAF 树 的顺序扫描，返回去重后的文件列表。
     * 三路计数在每次扫描开始时清零。
     */
    @JvmStatic
    fun scan(context: Context): List<File> {
        val result = ArrayList<File>()
        val seenNames = HashSet<String>()
        mediaCount = 0
        rawCount = 0
        safCount = 0
        scanMediaStore(context, result, seenNames)
        val afterMedia = result.size
        addRaw(saveDir(), result, seenNames)
        addRaw(context.getExternalFilesDir(null), result, seenNames)
        rawCount = result.size - afterMedia
        val afterRaw = result.size
        scanTree(context, result, seenNames)
        safCount = result.size - afterRaw
        return result
    }

    private fun scanMediaStore(context: Context, result: MutableList<File>, seenNames: MutableSet<String>) {
        if (Build.VERSION.SDK_INT < 29) return
        try {
            val uri = MediaStore.Downloads.EXTERNAL_CONTENT_URI
            val cursor = context.contentResolver.query(
                uri,
                arrayOf("_id", "_display_name"),
                "relative_path LIKE ?",
                arrayOf("Download/鸡翅幸哲迈进OB%"),
                null
            ) ?: return
            cursor.use {
                val idColumn = it.getColumnIndex("_id")
                val nameColumn = it.getColumnIndex("_display_name")
                while (it.moveToNext()) {
                    val name = try {
                        it.getString(nameColumn)
                    } catch (ignored: Throwable) {
                        null
                    }
                    if (!isTrackName(name)) continue
                    val fileUri = ContentUris.withAppendedId(uri, it.getLong(idColumn))
                    val materialized = materialize(context, fileUri, name)
                    if (materialized != null && seenNames.add(materialized.name)) {
                        result.add(materialized)
                        mediaCount++
                    }
                }
            }
        } catch (ignored: Throwable) {
        }
    }

    private fun scanTree(context: Context, result: MutableList<File>, seenNames: MutableSet<String>) {
        val folderUri = getFolderUri(context) ?: return
        try {
            val root = DocumentFile.fromTreeUri(context, folderUri)
            if (root != null && root.isDirectory) {
                collect(context, root, result, seenNames, depth = 0)
            }
        } catch (ignored: Throwable) {
        }
    }

    private fun collect(
        context: Context,
        dir: DocumentFile,
        result: MutableList<File>,
        seenNames: MutableSet<String>,
        depth: Int
    ) {
        if (depth > 3) return
        try {
            val children = dir.listFiles() ?: return
            for (child in children) {
                if (child == null) continue
                if (child.isDirectory) {
                    collect(context, child, result, seenNames, depth + 1)
                } else {
                    val name = try {
                        child.name
                    } catch (ignored: Throwable) {
                        null
                    }
                    if (!isTrackName(name)) continue
                    val materialized = materialize(context, child.uri, name)
                    if (materialized != null && seenNames.add(materialized.name)) {
                        result.add(materialized)
                    }
                }
            }
        } catch (ignored: Throwable) {
        }
    }

    private fun addRaw(dir: File?, result: MutableList<File>, seenNames: MutableSet<String>) {
        if (dir == null) return
        try {
            val files = TrackFileParser.scanFiles(dir) ?: return
            for (file in files) {
                if (file != null && seenNames.add(file.name)) {
                    result.add(file)
                }
            }
        } catch (ignored: Throwable) {
        }
    }

    private fun isTrackName(name: String?): Boolean {
        if (name == null) return false
        val lower = name.lowercase()
        return lower.endsWith(".fit") || lower.endsWith(".gpx") || lower.endsWith(".tcx")
    }

    private fun cacheDir(context: Context): File =
        File(context.cacheDir, "heatmap_tracks").also { it.mkdirs() }

    /**
     * 把 content:// 的轨迹物化为缓存文件；已存在且 > 16 字节时直接复用，
     * 写完后仍 <= 16 字节则删除并返回 null。
     */
    private fun materialize(context: Context, uri: Uri?, name: String?): File? {
        if (uri == null || name == null) return null
        return try {
            val file = File(cacheDir(context), name)
            if (file.exists() && file.length() > 16) return file
            val input = context.contentResolver.openInputStream(uri) ?: return null
            FileOutputStream(file).use { output ->
                input.use { stream ->
                    val buffer = ByteArray(8192)
                    while (true) {
                        val read = stream.read(buffer)
                        if (read <= 0) break
                        output.write(buffer, 0, read)
                    }
                }
            }
            if (file.length() > 16) file else {
                file.delete()
                null
            }
        } catch (ignored: Throwable) {
            null
        }
    }

    @JvmStatic
    fun getFolderUri(context: Context): Uri? = try {
        val raw = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString(KEY_FOLDER, null)
        raw?.let { Uri.parse(it) }
    } catch (ignored: Throwable) {
        null
    }

    @JvmStatic
    fun getFolderName(context: Context): String {
        val folderUri = getFolderUri(context) ?: return ""
        return try {
            DocumentFile.fromTreeUri(context, folderUri)?.name ?: ""
        } catch (ignored: Throwable) {
            ""
        }
    }

    @JvmStatic
    fun setFolderUri(context: Context, uri: Uri) {
        try {
            context.contentResolver.takePersistableUriPermission(uri, IntentFlags.READ)
        } catch (ignored: Throwable) {
        }
        try {
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                .putString(KEY_FOLDER, uri.toString()).apply()
        } catch (ignored: Throwable) {
        }
    }

    @JvmStatic
    fun getMediaCount(): Int = mediaCount

    @JvmStatic
    fun getRawCount(): Int = rawCount

    @JvmStatic
    fun getSafCount(): Int = safCount

    /** `takePersistableUriPermission` 用的读权限位（原反编译中的字面量 1）。 */
    private object IntentFlags {
        const val READ = 1
    }
}

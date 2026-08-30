package com.jichi.ob.util

import android.content.ContentValues
import android.content.Context
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import android.util.Log
import java.io.File
import java.io.FileOutputStream

/**
 * 统一文件保存工具（v6.3.17）
 *
 * 背景：targetSdk=36 下 Environment.getExternalStoragePublicDirectory 直接写路径属于废弃用法，
 * 写入的文件不会被 MediaStore 索引，系统「文件/下载」App 里看不到；且当 App 运行在应用双开/
 * 工作资料空间(用户ID 999)时，物理路径 /storage/emulated/999/... 用户在主空间更难找到。
 *
 * 方案：Android 10+(API29) 一律走 MediaStore.Downloads，写入 公共下载/鸡翅幸哲迈进OB，
 * 写入后立即被系统索引，可直接在系统「文件」App 的下载目录看到/分享；API26-28 回退直接路径。
 */
object FileSaver {
    private const val TAG = "FileSaver"
    const val SUB_DIR = "鸡翅幸哲迈进OB"

    fun saveToDownloads(context: Context, fileName: String, bytes: ByteArray): String? {
        return try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                saveViaMediaStore(context, fileName, bytes)
            } else {
                saveViaLegacy(fileName, bytes)
            }
        } catch (e: Exception) {
            Log.w(TAG, "MediaStore保存失败，回退直接路径: ${e.message}")
            try { saveViaLegacy(fileName, bytes) } catch (e2: Exception) { null }
        }
    }

    /** Android 10+：MediaStore 写入公共下载子目录，返回用户可见的相对路径 */
    private fun saveViaMediaStore(context: Context, fileName: String, bytes: ByteArray): String? {
        val resolver = context.contentResolver
        val relPath = "${Environment.DIRECTORY_DOWNLOADS}/$SUB_DIR"
        val mime = mimeOf(fileName)

        // 同名先删，避免重复同步产生 xxx(1).gpx 副本
        try {
            val collection = MediaStore.Downloads.EXTERNAL_CONTENT_URI
            resolver.query(
                collection,
                arrayOf(MediaStore.Downloads._ID),
                "${MediaStore.Downloads.DISPLAY_NAME}=? AND ${MediaStore.Downloads.RELATIVE_PATH}=?",
                arrayOf(fileName, relPath),
                null
            )?.use { c ->
                val idCol = c.getColumnIndexOrThrow(MediaStore.Downloads._ID)
                while (c.moveToNext()) {
                    val id = c.getLong(idCol)
                    val u = Uri.withAppendedPath(collection, id.toString())
                    resolver.delete(u, null, null)
                }
            }
        } catch (_: Exception) { /* 忽略清理失败 */ }

        val values = ContentValues().apply {
            put(MediaStore.Downloads.DISPLAY_NAME, fileName)
            put(MediaStore.Downloads.MIME_TYPE, mime)
            put(MediaStore.Downloads.RELATIVE_PATH, relPath)
            put(MediaStore.Downloads.IS_PENDING, 1)
        }
        val uri: Uri = resolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, values)
            ?: throw IllegalStateException("MediaStore.insert 返回 null")
        resolver.openOutputStream(uri, "w")?.use { it.write(bytes) }
            ?: throw IllegalStateException("openOutputStream 返回 null")
        val done = ContentValues().apply { put(MediaStore.Downloads.IS_PENDING, 0) }
        resolver.update(uri, done, null, null)
        val shown = "下载/$SUB_DIR/$fileName"
        Log.d(TAG, "已通过MediaStore保存: $shown (${bytes.size}字节)")
        return shown
    }

    /** Android 8-9 回退：直接写公共下载路径 */
    private fun saveViaLegacy(fileName: String, bytes: ByteArray): String? {
        val dir = File(
            Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS),
            SUB_DIR
        )
        if (!dir.exists()) dir.mkdirs()
        val f = File(dir, fileName)
        FileOutputStream(f).use { it.write(bytes) }
        return f.absolutePath
    }

    private fun mimeOf(name: String): String = when {
        name.endsWith(".fit", true) -> "application/octet-stream"
        name.endsWith(".gpx", true) -> "application/gpx+xml"
        name.endsWith(".json", true) -> "application/json"
        else -> "application/octet-stream"
    }
}

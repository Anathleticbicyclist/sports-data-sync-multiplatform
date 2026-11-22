// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.store.TrackStore）。
// 改写说明：Java 类改写为 Kotlin 类，records/<yyyyMMdd>/<HHmmss>_track.json 的落盘结构与逐行 JSON 读写原样保留。
// 已知问题：readAll 遇异常时返回已读部分且不关闭 reader（原件行为，照搬未改）；
// 原件无 @Metadata，smali .source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.store

import android.content.Context
import com.jichi.bikecomputer.model.TrackPoint
import com.jichi.bikecomputer.model.TrackStats
import java.io.BufferedReader
import java.io.BufferedWriter
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException
import java.io.InputStreamReader
import java.io.OutputStreamWriter
import java.nio.charset.StandardCharsets
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class TrackStore(context: Context) {

    private val root = File(context.filesDir, "records")

    fun createRecord(startTimeMs: Long): RecordFile {
        val dayFormat = SimpleDateFormat("yyyyMMdd", Locale.US)
        val timeFormat = SimpleDateFormat("HHmmss", Locale.US)
        val dayDir = File(root, dayFormat.format(Date(startTimeMs)))
        if (!dayDir.exists()) dayDir.mkdirs()
        return RecordFile(File(dayDir, timeFormat.format(Date(startTimeMs)) + "_track.json"), true)
    }

    fun findUnfinished(): List<File> {
        val unfinished = ArrayList<File>()
        val dayDirs = root.listFiles() ?: return unfinished
        for (dayDir in dayDirs) {
            if (!dayDir.isDirectory) continue
            val files = dayDir.listFiles() ?: continue
            for (file in files) {
                if (file.name.endsWith("_track.json")) unfinished.add(file)
            }
        }
        return unfinished
    }

    class RecordFile internal constructor(val file: File, openForWrite: Boolean) {
        private var writer: BufferedWriter? = null

        var isOpen = false
            private set

        init {
            if (openForWrite) {
                try {
                    writer = BufferedWriter(
                        OutputStreamWriter(FileOutputStream(file, true), StandardCharsets.UTF_8)
                    )
                    isOpen = true
                } catch (_: Exception) {
                    isOpen = false
                }
            }
        }

        @Throws(IOException::class)
        fun append(point: TrackPoint) {
            if (isOpen) {
                try {
                    writer?.write(point.toJson())
                    writer?.newLine()
                    writer?.flush()
                } catch (_: Exception) {
                }
            }
        }

        @Throws(IOException::class)
        fun close() {
            if (isOpen) {
                try {
                    writer?.close()
                } catch (_: Exception) {
                }
                isOpen = false
            }
        }
    }

    companion object {
        @JvmStatic
        @Throws(IOException::class)
        fun readAll(file: File): List<TrackPoint> {
            val points = ArrayList<TrackPoint>()
            try {
                val reader = BufferedReader(
                    InputStreamReader(FileInputStream(file), StandardCharsets.UTF_8)
                )
                while (true) {
                    val line = reader.readLine() ?: break
                    val trimmed = line.trim()
                    if (trimmed.isNotEmpty()) {
                        val point = TrackPoint.fromJson(trimmed)
                        if (point.timestamp > 0) points.add(point)
                    }
                }
                reader.close()
            } catch (_: Exception) {
            }
            return points
        }

        @JvmStatic
        fun statsOf(points: List<TrackPoint>?): TrackStats = TrackStats.fromPoints(points)
    }
}

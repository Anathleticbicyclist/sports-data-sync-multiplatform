// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.export.GpxExporter）。
// 改写说明：Java 静态工具类改写为 Kotlin object，GPX 1.1 文本拼接格式与字段原样保留。
// 已知问题：时间格式串里的 'Z' 是字面量、SimpleDateFormat 未设时区，写出的是本地时间而非 UTC，照搬原件未改；
// 原件无 @Metadata，smali .source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.export

import android.util.Log
import com.jichi.bikecomputer.model.SportType
import com.jichi.bikecomputer.model.TrackPoint
import java.io.BufferedWriter
import java.io.FileOutputStream
import java.io.IOException
import java.io.OutputStreamWriter
import java.nio.charset.StandardCharsets
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

object GpxExporter {
    @JvmStatic
    @Throws(IOException::class)
    fun export(
        points: List<TrackPoint>?,
        sportType: SportType,
        startTimeMs: Long,
        path: String
    ): Boolean {
        if (points.isNullOrEmpty()) return false
        val dateFormat = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US)
        val type = sportType.name.lowercase(Locale.US)
        try {
            val writer = BufferedWriter(
                OutputStreamWriter(FileOutputStream(path), StandardCharsets.UTF_8)
            )
            writer.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
            writer.write("<gpx version=\"1.1\" creator=\"BikeComputer\"\n")
            writer.write("  xmlns=\"http://www.topografix.com/GPX/1/1\"\n")
            writer.write("  xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n")
            writer.write("  xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\">\n")
            writer.write("  <metadata>\n")
            writer.write("    <time>" + dateFormat.format(Date(startTimeMs)) + "</time>\n")
            writer.write("  </metadata>\n")
            writer.write("  <trk>\n")
            writer.write("    <name>" + sportType.label + " " + dateFormat.format(Date(startTimeMs)) + "</name>\n")
            writer.write("    <type>$type</type>\n")
            writer.write("    <trkseg>\n")
            for (point in points) {
                if (point.timestamp > 0) {
                    writer.write("      <trkpt lat=\"" + trim(point.lat) + "\" lon=\"" + trim(point.lon) + "\">\n")
                    if (!point.alt.isNaN()) {
                        writer.write("        <ele>" + trim(point.alt) + "</ele>\n")
                    }
                    writer.write("        <time>" + dateFormat.format(Date(point.timestamp)) + "</time>\n")
                    if (point.speed >= 0f) {
                        writer.write("        <speed>" + trim(point.speed.toDouble()) + "</speed>\n")
                    }
                    writer.write("      </trkpt>\n")
                }
            }
            writer.write("    </trkseg>\n")
            writer.write("  </trk>\n")
            writer.write("</gpx>\n")
            writer.close()
            return true
        } catch (e: Exception) {
            Log.e("GpxExporter", "导出失败", e)
        }
        return false
    }

    private fun trim(value: Double): String =
        (Math.round(value * 1000000.0) / 1000000.0).toString()
}

package com.jichi.ob.heatmap

import com.garmin.fit.ConnectivityCapabilities
import io.jenetics.jpx.Degrees
import java.io.File
import java.io.FileInputStream
import java.io.IOException

/**
 * 来源：jadx 反编译 `TrackFileParser.java`（classes2.dex）改写为地道 Kotlin。
 * 原始公开 API 与行为保持不变：
 * - 只收 .fit/.gpx/.tcx（[scanFiles] 只扫一层目录，不递归）；
 * - FIT：手写解析器，只认全局消息 20（record），字段 0=纬度、1=经度，
 *   半圆值 × 8.381903171539307E-8 转度；文件 > ConnectivityCapabilities.TRUE_UP
 *   时拒绝读取；压缩时间戳记录按原逻辑跳过；
 * - GPX：字符串查找 `<trkpt lat=".." lon=".."`，缺失记 1.0E99；
 * - TCX：按 `<LatitudeDegrees>` / `<LongitudeDegrees>` 出现的先后顺序配对。
 *
 * 已知问题（反编译原文如此，改写时原样保留，仅在此注明）：
 * - FIT 的 `readDataRecord` 里，无经纬度字段的记录会落到 (0.0, 0.0) 点
 *   （只有两值同时等于 Degrees.MIN_VALUE 才跳过，而字段缺失时初值是 0.0）；
 * - GPX/TCX 用字符串查找而非 XML 解析，属性顺序/命名空间异常时可能漏点。
 */
object TrackFileParser {

    /** 轨迹文件扩展名（小写比较）。 */
    private val TRACK_EXTENSIONS = listOf(".fit", ".gpx", ".tcx")

    /** 经纬度缺失时的哨兵值（原逻辑的 1.0E99）。 */
    private const val MISSING = 1.0E99

    /** 半圆（semicircle）转度的系数（原逻辑的字面量）。 */
    private const val SEMICIRCLE_TO_DEGREES = 8.381903171539307E-8

    /** 只扫 [dir] 下一层目录，返回 .fit/.gpx/.tcx 文件；目录非法时返回空列表。 */
    @JvmStatic
    fun scanFiles(dir: File?): List<File> {
        if (dir == null || !dir.isDirectory) return emptyList()
        val children = dir.listFiles() ?: return emptyList()
        return children.filter { it.isFile && TRACK_EXTENSIONS.any { ext -> it.name.lowercase().endsWith(ext) } }
    }

    /** 按扩展名分发；未知扩展名返回空列表。 */
    @JvmStatic
    @Throws(IOException::class)
    fun parseFile(file: File): List<DoubleArray> {
        val lower = file.name.lowercase()
        return when {
            lower.endsWith(".fit") -> parseFit(file)
            lower.endsWith(".gpx") -> parseGpx(file)
            lower.endsWith(".tcx") -> parseTcx(file)
            else -> emptyList()
        }
    }

    /**
     * 手写 FIT 解析。结构与反编译原文一致：
     * 文件头 >= 14 字节且首字节（头长）>= 12；16 个本地消息槽，定义消息
     * （header bit 6）记录全局消息号/字段号/字段长/字段类型；数据消息
     * （header bit 6 为 0）按已定义的字段表读取；压缩时间戳记录
     * （header bit 7）只读全局消息 20 的记录，其余按字段总长跳过。
     */
    @JvmStatic
    @Throws(IOException::class)
    fun parseFit(file: File): List<DoubleArray> {
        val result = ArrayList<DoubleArray>()
        val bytes = readAll(file) ?: return result
        if (bytes.size < 14) return result
        var offset = bytes[0].toInt() and 0xFF
        if (offset < 12 || offset >= bytes.size) return result
        val end = bytes.size - 2

        val globalMessage = IntArray(16) { -1 }
        val fieldNumbers = arrayOfNulls<IntArray>(16)
        val fieldSizes = arrayOfNulls<IntArray>(16)
        val fieldTypes = arrayOfNulls<ByteArray>(16)

        while (offset < end) {
            val headerOffset = offset
            offset++
            val header = bytes[headerOffset]
            val headerUnsigned = header.toInt() and 0xFF
            if (header.toInt() and 0x80 != 0) {
                // 压缩时间戳记录：高 2 位是本地消息号（bit 5-6）。
                val localMessage = (headerUnsigned shr 5) and 0x03
                if (localMessage < 16 && globalMessage[localMessage] == 20) {
                    fieldNumbers[localMessage]?.let { numbers ->
                        readDataRecord(bytes, offset, numbers, fieldSizes[localMessage]!!, fieldTypes[localMessage]!!, result, startField = 1)
                    }
                }
                val sizes = if (localMessage < 16) fieldSizes[localMessage] else null
                offset += skipCompressed(bytes, offset, sizes)
            } else {
                val localMessage = header.toInt() and 0x0F
                if (header.toInt() and 0x40 == 0) {
                    // 数据消息。
                    val sizes = if (localMessage < 16) fieldSizes[localMessage] else null
                    var dataLength = 0
                    if (sizes != null) {
                        dataLength = sizes.sum()
                        if (globalMessage[localMessage] == 20) {
                            fieldNumbers[localMessage]?.let { numbers ->
                                readDataRecord(bytes, offset, numbers, sizes, fieldTypes[localMessage]!!, result, startField = 0)
                            }
                        }
                    }
                    offset += dataLength
                } else {
                    // 定义消息：6 字节头 + 字段定义（每字段 3 字节）。
                    if (offset + 5 > end) break
                    // bytes[offset] 为保留字节，bytes[offset+1] 为大小端标志（原逻辑未使用）。
                    val messageNumber = (bytes[offset + 2].toInt() and 0xFF) or
                        ((bytes[offset + 3].toInt() and 0xFF) shl 8)
                    offset += 6
                    var fieldCount = bytes[offset - 1].toInt() and 0xFF
                    if (fieldCount > 32) fieldCount = 32
                    if (localMessage < 16) {
                        globalMessage[localMessage] = messageNumber
                        val numbers = IntArray(fieldCount)
                        val sizes = IntArray(fieldCount)
                        val types = ByteArray(fieldCount)
                        for (i in 0 until fieldCount) {
                            if (offset + 3 > end) {
                                numbers[i] = -1
                                sizes[i] = 0
                                types[i] = 0
                                break
                            }
                            numbers[i] = bytes[offset].toInt() and 0xFF
                            sizes[i] = bytes[offset + 1].toInt() and 0xFF
                            types[i] = bytes[offset + 2]
                            offset += 3
                        }
                        fieldNumbers[localMessage] = numbers
                        fieldSizes[localMessage] = sizes
                        fieldTypes[localMessage] = types
                    } else {
                        var skipped = 0
                        while (skipped < fieldCount) {
                            if (offset + 3 > end) break
                            skipped++
                            offset += 3
                        }
                    }
                }
            }
        }
        return result
    }

    /** 压缩时间戳记录要跳过的字节数：字段总长减去首字段长（原逻辑同）。 */
    private fun skipCompressed(bytes: ByteArray, offset: Int, sizes: IntArray?): Int {
        if (sizes == null || sizes.isEmpty()) return 0
        return sizes.sum() - sizes[0]
    }

    /**
     * 按字段表读一条 record：字段 0 且长 4 为纬度半圆值，字段 1 且长 4 为
     * 经度半圆值。[startField] 为 1 时跳过首字段（压缩时间戳记录的约定）。
     * 两值同时等于 Degrees.MIN_VALUE 时丢弃（见文件头已知问题）。
     */
    private fun readDataRecord(
        bytes: ByteArray,
        start: Int,
        fieldNumbers: IntArray,
        fieldSizes: IntArray,
        @Suppress("UNUSED_PARAMETER") fieldTypes: ByteArray,
        result: MutableList<DoubleArray>,
        startField: Int
    ) {
        var offset = start
        var lat = 0.0
        var lon = 0.0
        for (i in startField until fieldNumbers.size) {
            val fieldNumber = fieldNumbers[i]
            val fieldSize = fieldSizes[i]
            if (fieldNumber == 0 && fieldSize == 4) {
                lat = readSint32(bytes, offset) * SEMICIRCLE_TO_DEGREES
            } else if (fieldNumber == 1 && fieldSize == 4) {
                lon = readSint32(bytes, offset) * SEMICIRCLE_TO_DEGREES
            }
            offset += fieldSize
        }
        if (lat == Degrees.MIN_VALUE && lon == Degrees.MIN_VALUE) return
        result.add(doubleArrayOf(lat, lon))
    }

    private fun readSint32(bytes: ByteArray, offset: Int): Int =
        (bytes[offset].toInt() and 0xFF) or
            ((bytes[offset + 1].toInt() and 0xFF) shl 8) or
            ((bytes[offset + 2].toInt() and 0xFF) shl 16) or
            ((bytes[offset + 3].toInt() and 0xFF) shl 24)

    /** GPX：逐个找 `<trkpt ...>`，取 lat/lon 属性；缺失任一属性则跳过该点。 */
    @JvmStatic
    @Throws(IOException::class)
    fun parseGpx(file: File): List<DoubleArray> {
        val result = ArrayList<DoubleArray>()
        val text = readText(file) ?: return result
        var index = 0
        while (true) {
            val tagStart = text.indexOf("<trkpt", index)
            if (tagStart < 0) break
            val tagEnd = text.indexOf('>', tagStart)
            if (tagEnd < 0) break
            val tag = text.substring(tagStart, tagEnd)
            val lat = attr(tag, "lat")
            val lon = attr(tag, "lon")
            if (lat != MISSING && lon != MISSING) {
                result.add(doubleArrayOf(lat, lon))
            }
            index = tagEnd + 1
        }
        return result
    }

    /**
     * TCX：按 `<LatitudeDegrees>` / `<LongitudeDegrees>` 出现的先后顺序配对；
     * 先出现纬度则等经度，先出现经度则等纬度，配齐一对即产生一个点。
     * （反编译原文的配对状态机，含其“经度先到时暂存”的分支，原样保留。）
     */
    @JvmStatic
    @Throws(IOException::class)
    fun parseTcx(file: File): List<DoubleArray> {
        val result = ArrayList<DoubleArray>()
        val text = readText(file) ?: return result
        var pendingLat = MISSING
        var pendingLon = MISSING
        var index = 0
        while (index < text.length) {
            val latStart = text.indexOf("<LatitudeDegrees>", index)
            val lonStart = text.indexOf("<LongitudeDegrees>", index)
            if (latStart < 0 && lonStart < 0) break
            if (latStart >= 0 && (lonStart < 0 || latStart < lonStart)) {
                val latEnd = text.indexOf("</LatitudeDegrees>", latStart)
                if (latEnd < 0) break
                pendingLat = try {
                    text.substring(latStart + "<LatitudeDegrees>".length, latEnd).trim().toDouble()
                } catch (ignored: Exception) {
                    MISSING
                }
                index = latEnd + "</LatitudeDegrees>".length
                if (pendingLat != MISSING && pendingLon != MISSING) {
                    result.add(doubleArrayOf(pendingLat, pendingLon))
                    pendingLat = MISSING
                    pendingLon = MISSING
                }
            } else {
                val lonEnd = text.indexOf("</LongitudeDegrees>", lonStart)
                if (lonEnd < 0) break
                val lon = try {
                    text.substring(lonStart + "<LongitudeDegrees>".length, lonEnd).trim().toDouble()
                } catch (ignored: Exception) {
                    MISSING
                }
                index = lonEnd + "</LongitudeDegrees>".length
                if (pendingLat == MISSING || lon == MISSING) {
                    pendingLon = lon
                } else {
                    result.add(doubleArrayOf(pendingLat, lon))
                    pendingLat = MISSING
                    pendingLon = MISSING
                }
            }
        }
        return result
    }

    private fun attr(tag: String, name: String): Double {
        val prefix = "$name=\""
        val valueStart = tag.indexOf(prefix)
        if (valueStart < 0) return MISSING
        val valueEnd = tag.indexOf('"', valueStart + prefix.length)
        if (valueEnd < 0) return MISSING
        return try {
            tag.substring(valueStart + prefix.length, valueEnd).toDouble()
        } catch (ignored: Exception) {
            MISSING
        }
    }

    private fun readAll(file: File?): ByteArray? {
        if (file == null || !file.isFile || file.length() > ConnectivityCapabilities.TRUE_UP) return null
        val length = file.length().toInt()
        val bytes = ByteArray(length)
        FileInputStream(file).use { input ->
            var readTotal = 0
            while (readTotal < length) {
                val read = input.read(bytes, readTotal, length - readTotal)
                if (read < 0) break
                readTotal += read
            }
        }
        return bytes
    }

    private fun readText(file: File?): String? {
        if (file == null || !file.isFile || file.length() > ConnectivityCapabilities.TRUE_UP) return null
        val bytes = readAll(file) ?: return null
        return String(bytes, Charsets.UTF_8)
    }
}

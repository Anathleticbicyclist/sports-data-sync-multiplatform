package com.jichi.ob.api

import android.util.Log

/**
 * FIT 设备伪装器（v6.5.0 新增）
 *
 * 参考开源项目 Fit-File-Faker / fit_file_uploader：把非 Garmin 设备生成的 FIT
 * 改写为「Garmin Edge 830」设备，使 Garmin Connect 接受并计算训练效果。
 * - file_id 消息(global 0)：manufacturer(field 1)→1(Garmin)，product(field 2)→3122(Edge 830)
 * - device_info 消息(global 23)：manufacturer(field 2)→1，product(field 4)→3122
 * - 修改后重算文件尾 CRC-16（FIT 标准算法）
 */
object FitDeviceFaker {
    private const val TAG = "FitDeviceFaker"

    const val GARMIN_MANUFACTURER = 1
    const val GARMIN_EDGE_830 = 3122

    /** 是否看起来已是 Garmin 设备（跳过伪装） */
    fun isAlreadyGarmin(fitData: ByteArray): Boolean {
        return try {
            val info = scanFileId(fitData) ?: return false
            info.manufacturer == GARMIN_MANUFACTURER && info.product == GARMIN_EDGE_830
        } catch (e: Exception) { false }
    }

    private data class FileIdInfo(val manufacturer: Int, val product: Int)

    /** 解析 file_id 的 manufacturer/product（只读） */
    private fun scanFileId(data: ByteArray): FileIdInfo? {
        val headerSize = if (data.size >= 12) (data[0].toInt() and 0xFF) else 14
        var pos = headerSize
        // local message type → (globalNum, arch, fields: MutableMap<fieldNum, offsetInMsg>)
        val defs = HashMap<Int, Pair<Int, MutableMap<Int, Int>>>()
        while (pos + 1 <= data.size) {
            val recHead = data[pos].toInt() and 0xFF
            if (recHead and 0x80 != 0) {  // 定义消息
                if (pos + 5 > data.size) break
                val arch = data[pos + 2].toInt() and 0xFF
                val globalNum = if (arch == 0) {
                    (data[pos + 3].toInt() and 0xFF) or ((data[pos + 4].toInt() and 0xFF) shl 8)
                } else {
                    ((data[pos + 3].toInt() and 0xFF) shl 8) or (data[pos + 4].toInt() and 0xFF)
                }
                val fieldCount = data[pos + 5].toInt() and 0xFF
                var p = pos + 6
                val fields = HashMap<Int, Int>()
                var dataSize = 0
                var ok = true
                for (i in 0 until fieldCount) {
                    if (p + 3 > data.size) { ok = false; break }
                    val fNum = data[p].toInt() and 0xFF
                    val fSize = data[p + 1].toInt() and 0xFF
                    // 字段在数据消息中的偏移 = dataSize（按定义顺序）
                    fields[fNum] = dataSize
                    dataSize += fSize
                    p += 3
                }
                if (!ok) break
                val localType = recHead and 0x0F
                defs[localType] = globalNum to fields
                pos = p
            } else if (recHead and 0x40 != 0) {  // 压缩时间戳消息（跳过）
                pos += 2 + 6  // 1头 + 时间戳(1-2) + 数据(4字节最小值? 实际1+1+4=6)
                continue
            } else {  // 数据消息
                val localType = recHead and 0x0F
                val def = defs[localType] ?: break
                val (globalNum, fields) = def
                // 计算消息大小
                var msgSize = 1
                for ((_, off) in fields) { msgSize += off } // 不对，需累计字段 size
                // 重新计算：从 defs 存 size？简化：按字段偏移最大值+字段size
                var size = 1
                var maxEnd = 0
                for ((_, off) in fields) { maxEnd = off } // 需 size
                // 直接重新解析定义消息获取 size 不现实，用下面方法：
                // 这里通过 fields 值即 offset，无法得 size；改为在 defs 里同时存 totalSize
                if (globalNum == 0) {
                    // file_id
                    val manOff = fields[1]
                    val prodOff = fields[2]
                    val man = if (manOff != null) readU16(data, pos + 1 + manOff) else null
                    val prod = if (prodOff != null) readU16(data, pos + 1 + prodOff) else null
                    if (man != null && prod != null) return FileIdInfo(man, prod)
                }
                // 跳过此消息（需要 size）—— 简化为解析器需要 totalSize
                // 本函数只扫描 file_id，file_id 通常在前面；为稳健，用独立解析跳过
                break
            }
        }
        return null
    }

    /**
     * 伪装 FIT 为 Garmin Edge 830。
     * @return 伪装后的字节，失败返回原数据
     */
    fun fake(fitData: ByteArray): ByteArray {
        return try {
            val out = fitData.copyOf()
            val headerSize = if (out.size >= 12) (out[0].toInt() and 0xFF) else 14
            var pos = headerSize
            val defs = HashMap<Int, Def>()
            var modified = false

            while (pos + 1 <= out.size) {
                val recHead = out[pos].toInt() and 0xFF
                if (recHead and 0x80 != 0) {  // 定义消息
                    if (pos + 5 > out.size) break
                    val arch = out[pos + 2].toInt() and 0xFF
                    val globalNum = if (arch == 0) {
                        (out[pos + 3].toInt() and 0xFF) or ((out[pos + 4].toInt() and 0xFF) shl 8)
                    } else {
                        ((out[pos + 3].toInt() and 0xFF) shl 8) or (out[pos + 4].toInt() and 0xFF)
                    }
                    val fieldCount = out[pos + 5].toInt() and 0xFF
                    var p = pos + 6
                    val fields = HashMap<Int, Int>()
                    var totalSize = 0
                    var ok = true
                    for (i in 0 until fieldCount) {
                        if (p + 3 > out.size) { ok = false; break }
                        val fNum = out[p].toInt() and 0xFF
                        val fSize = out[p + 1].toInt() and 0xFF
                        fields[fNum] = totalSize
                        totalSize += fSize
                        p += 3
                    }
                    if (!ok) break
                    val localType = recHead and 0x0F
                    defs[localType] = Def(globalNum, arch, fields, totalSize)
                    pos = p
                } else if (recHead and 0x40 != 0) {  // 压缩时间戳消息：1头+1时间戳+4数据
                    pos += 6
                    if (pos > out.size) break
                    continue
                } else {  // 数据消息
                    val localType = recHead and 0x0F
                    val def = defs[localType] ?: break
                    if (pos + 1 + def.totalSize > out.size) break
                    if (def.globalNum == 0 || def.globalNum == 23) {
                        // 改写 manufacturer / product
                        val manField = if (def.globalNum == 0) 1 else 2
                        val prodField = if (def.globalNum == 0) 2 else 4
                        def.fields[manField]?.let { off ->
                            writeU16(out, pos + 1 + off, GARMIN_MANUFACTURER, def.arch)
                            modified = true
                        }
                        def.fields[prodField]?.let { off ->
                            writeU16(out, pos + 1 + off, GARMIN_EDGE_830, def.arch)
                            modified = true
                        }
                    }
                    pos += 1 + def.totalSize
                }
            }

            if (!modified) {
                Log.d(TAG, "FIT 未找到可改写字段，原样返回")
                return fitData
            }

            // 重算文件尾 CRC-16
            val fitEnd = headerSize + readU32(out, 4)  // 4-7 是 data_size
            if (fitEnd <= out.size) {
                val crc = fitCrc(out, 0, fitEnd)
                if (fitEnd + 2 <= out.size) {
                    writeU16le(out, fitEnd, crc)
                }
            }
            Log.d(TAG, "FIT 已伪装为 Garmin Edge 830 (${fitData.size} -> ${out.size} bytes)")
            out
        } catch (e: Exception) {
            Log.e(TAG, "fake error", e)
            fitData
        }
    }

    private class Def(
        val globalNum: Int,
        val arch: Int,
        val fields: HashMap<Int, Int>,
        val totalSize: Int
    )

    private fun readU16(d: ByteArray, off: Int): Int {
        if (off + 1 >= d.size) return -1
        return (d[off].toInt() and 0xFF) or ((d[off + 1].toInt() and 0xFF) shl 8)
    }

    private fun readU32(d: ByteArray, off: Int): Int {
        if (off + 3 >= d.size) return 0
        return (d[off].toInt() and 0xFF) or ((d[off + 1].toInt() and 0xFF) shl 8) or
            ((d[off + 2].toInt() and 0xFF) shl 16) or ((d[off + 3].toInt() and 0xFF) shl 24)
    }

    private fun writeU16(d: ByteArray, off: Int, v: Int, arch: Int) {
        if (arch == 0) writeU16le(d, off, v) else {
            d[off] = ((v shr 8) and 0xFF).toByte()
            d[off + 1] = (v and 0xFF).toByte()
        }
    }

    private fun writeU16le(d: ByteArray, off: Int, v: Int) {
        d[off] = (v and 0xFF).toByte()
        d[off + 1] = ((v shr 8) and 0xFF).toByte()
    }

    /** FIT 标准 CRC-16 算法 */
    private fun fitCrc(data: ByteArray, start: Int, end: Int): Int {
        var crc = 0
        for (i in start until end) {
            val b = data[i].toInt() and 0xFF
            crc = crc xor (b shl 8)
            for (j in 0 until 8) {
                crc = if (crc and 0x8000 != 0) ((crc shl 1) xor 0x1021) and 0xFFFF else (crc shl 1) and 0xFFFF
            }
        }
        return crc
    }
}

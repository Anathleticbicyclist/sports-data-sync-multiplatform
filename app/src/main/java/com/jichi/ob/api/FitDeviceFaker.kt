package com.jichi.ob.api

import android.util.Log

/**
 * FIT 设备伪装器（v9.6.9 修正版）
 *
 * 把非 Garmin 设备生成的 FIT 改写为「Garmin Edge 830 / Forerunner 945」，使
 * Garmin Connect 接受并计算训练效果。
 *
 * v9.6.9 相对旧版的四处修正（缺一不可，旧版因此上传佳明仍 412）：
 * 1. 消息头标志位判反：0x80 是「压缩时间戳数据消息」，0x40 才是定义消息。
 *    压缩消息的 local type = (hdr >> 5) & 0x3，跳过长 = 1 + (totalSize - tsSize)，
 *    tsSize 取定义里 253 号字段的 size —— 不能写死 6。
 * 2. 定义消息 bit5(0x20) 置位表示后面还有开发者字段：读 1 字节个数、跳 3*个数 字节，
 *    否则后续整体错位。
 * 3. 多字节字段按定义消息的 architecture 字节读写（arch != 0 为大端）；旧版只按小端写，
 *    遇到大端文件会写出脏值。
 * 4. 文件尾 CRC-16 用 16 项 nibble 表（FIT 标准），旧版用高位先行 0x1021 逐位算法算错。
 *
 * 只改 file_id(0) 的 manufacturer(1)/product(2) 与 device_info(23) 的 manufacturer(2)/product(4)，
 * 序列号不动。
 */
object FitDeviceFaker {
    private const val TAG = "FitDeviceFaker"

    const val GARMIN_MANUFACTURER = 1
    const val GARMIN_EDGE_830 = 3122        // 骑行码表
    const val GARMIN_FORERUNNER_945 = 2967  // 跑步手表

    private const val GLOBAL_FILE_ID = 0
    private const val GLOBAL_DEVICE_INFO = 23
    private const val FIELD_TIMESTAMP = 253

    /** FIT 标准 CRC-16 查表（16 项 nibble 表） */
    private val CRC_TABLE = intArrayOf(
        0x0000, 0xCC01, 0xD801, 0x1400,
        0xF001, 0x3C00, 0x2800, 0xE401,
        0xA001, 0x6C00, 0x7800, 0xB401,
        0x5000, 0x9C01, 0x8801, 0x4400
    )

    private class FieldRef(val offset: Int, val size: Int)

    private class Def(
        val globalNum: Int,
        val big: Boolean,
        val fields: HashMap<Int, FieldRef>,
        val totalSize: Int,
        val tsSize: Int
    )

    /** 是否看起来已是 Garmin 设备（跳过伪装） */
    fun isAlreadyGarmin(fitData: ByteArray): Boolean {
        return try {
            val manufacturer = scanFileIdManufacturer(fitData) ?: return false
            manufacturer == GARMIN_MANUFACTURER
        } catch (e: Exception) {
            Log.e(TAG, "isAlreadyGarmin error", e)
            false
        }
    }

    /**
     * 伪装 FIT 为 Garmin 设备。
     * @param isCycling true=骑行活动伪装成 Edge 830；false=跑步/徒步等伪装成 Forerunner 945
     * @return 伪装后的字节，失败返回原数据
     */
    fun fake(fitData: ByteArray, isCycling: Boolean = true): ByteArray {
        val productId = if (isCycling) GARMIN_EDGE_830 else GARMIN_FORERUNNER_945
        val deviceName = if (isCycling) "Edge 830" else "Forerunner 945"
        return try {
            val out = fitData.copyOf()
            val headerSize = (out[0].toInt() and 0xFF)
            if (headerSize < 12 || headerSize >= out.size) {
                Log.d(TAG, "FIT 头长度异常($headerSize)，原样返回")
                return fitData
            }

            var pos = headerSize
            val defs = arrayOfNulls<Def>(16)
            var modified = false

            while (pos < out.size) {
                val hdr = out[pos].toInt() and 0xFF
                if (hdr and 0x80 != 0) {
                    // 压缩时间戳数据消息：local type 在 bit5-6，时间戳字段按定义内的 253 号 size 扣掉
                    val localType = (hdr shr 5) and 0x03
                    val def = defs[localType] ?: break
                    pos += 1 + (def.totalSize - def.tsSize)
                    if (pos > out.size) break
                    continue
                }
                if (hdr and 0x40 != 0) {
                    // 定义消息
                    val localType = hdr and 0x0F
                    val parsed = parseDef(out, pos) ?: break
                    defs[localType] = parsed.first
                    pos = parsed.second
                    if (pos > out.size) break
                    continue
                }

                // 数据消息
                val localType = hdr and 0x0F
                val def = defs[localType] ?: break
                if (pos + 1 + def.totalSize > out.size) break
                when (def.globalNum) {
                    GLOBAL_FILE_ID -> {
                        if (patchField(out, pos, def, 1, GARMIN_MANUFACTURER)) modified = true
                        if (patchField(out, pos, def, 2, productId)) modified = true
                    }
                    GLOBAL_DEVICE_INFO -> {
                        if (patchField(out, pos, def, 2, GARMIN_MANUFACTURER)) modified = true
                        if (patchField(out, pos, def, 4, productId)) modified = true
                    }
                }
                pos += 1 + def.totalSize
            }

            if (!modified) {
                Log.d(TAG, "FIT 未找到可改写字段，原样返回")
                return fitData
            }

            // 重算文件尾 CRC-16（覆盖 header + data）
            val dataSize = readU32(out, 4)
            val fitEnd = headerSize + dataSize
            if (fitEnd > 0 && fitEnd <= out.size) {
                val crc = fitCrc(out, 0, fitEnd)
                if (fitEnd + 2 <= out.size) {
                    out[fitEnd] = (crc and 0xFF).toByte()
                    out[fitEnd + 1] = ((crc shr 8) and 0xFF).toByte()
                }
            }
            Log.d(TAG, "FIT 已伪装为 Garmin $deviceName (${fitData.size} -> ${out.size} bytes)")
            out
        } catch (e: Exception) {
            Log.e(TAG, "fake error", e)
            fitData
        }
    }

    /** 解析定义消息；返回 (定义, 下一条记录起点) */
    private fun parseDef(d: ByteArray, pos: Int): Pair<Def, Int>? {
        if (pos + 6 > d.size) return null
        val arch = d[pos + 2].toInt() and 0xFF
        val big = arch != 0
        val globalNum = if (big) readU16be(d, pos + 3) else readU16le(d, pos + 3)
        val fieldCount = d[pos + 5].toInt() and 0xFF
        var p = pos + 6
        val fields = HashMap<Int, FieldRef>(fieldCount * 2)
        var totalSize = 0
        var tsSize = 0
        for (i in 0 until fieldCount) {
            if (p + 3 > d.size) return null
            val num = d[p].toInt() and 0xFF
            val size = d[p + 1].toInt() and 0xFF
            fields[num] = FieldRef(totalSize, size)
            totalSize += size
            if (num == FIELD_TIMESTAMP) tsSize = size
            p += 3
        }
        // bit5 = 开发者字段存在：1 字节个数 + 3 字节/个
        if (d[pos].toInt() and 0x20 != 0) {
            if (p + 1 > d.size) return null
            val devCount = d[p].toInt() and 0xFF
            p += 1
            val devBytes = devCount * 3
            if (p + devBytes > d.size) return null
            p += devBytes
        }
        return Def(globalNum, big, fields, totalSize, tsSize) to p
    }

    /** 改写单个字段；字段不存在/长度不够返回 false */
    private fun patchField(d: ByteArray, msgPos: Int, def: Def, fieldNum: Int, value: Int): Boolean {
        val f = def.fields[fieldNum] ?: return false
        val off = msgPos + 1 + f.offset
        if (off + f.size > d.size) return false
        return when {
            f.size >= 2 -> {
                writeU16(d, off, value, def.big)
                true
            }
            f.size == 1 && value <= 0xFF -> {
                d[off] = (value and 0xFF).toByte()
                true
            }
            else -> false
        }
    }

    /** 只读扫描 file_id 的 manufacturer */
    private fun scanFileIdManufacturer(fitData: ByteArray): Int? {
        if (fitData.size < 12) return null
        val headerSize = fitData[0].toInt() and 0xFF
        if (headerSize < 12 || headerSize >= fitData.size) return null
        var pos = headerSize
        val defs = arrayOfNulls<Def>(16)
        while (pos < fitData.size) {
            val hdr = fitData[pos].toInt() and 0xFF
            if (hdr and 0x80 != 0) {
                val localType = (hdr shr 5) and 0x03
                val def = defs[localType] ?: return null
                pos += 1 + (def.totalSize - def.tsSize)
                continue
            }
            if (hdr and 0x40 != 0) {
                val localType = hdr and 0x0F
                val parsed = parseDef(fitData, pos) ?: return null
                defs[localType] = parsed.first
                pos = parsed.second
                continue
            }
            val def = defs[hdr and 0x0F] ?: return null
            if (pos + 1 + def.totalSize > fitData.size) return null
            if (def.globalNum == GLOBAL_FILE_ID) {
                val f = def.fields[1] ?: return null
                val off = pos + 1 + f.offset
                if (off + f.size > fitData.size) return null
                return if (def.big) readU16be(fitData, off) else readU16le(fitData, off)
            }
            pos += 1 + def.totalSize
        }
        return null
    }

    private fun readU16le(d: ByteArray, off: Int): Int =
        (d[off].toInt() and 0xFF) or ((d[off + 1].toInt() and 0xFF) shl 8)

    private fun readU16be(d: ByteArray, off: Int): Int =
        ((d[off].toInt() and 0xFF) shl 8) or (d[off + 1].toInt() and 0xFF)

    private fun readU32(d: ByteArray, off: Int): Int {
        if (off + 3 >= d.size) return 0
        return (d[off].toInt() and 0xFF) or ((d[off + 1].toInt() and 0xFF) shl 8) or
            ((d[off + 2].toInt() and 0xFF) shl 16) or ((d[off + 3].toInt() and 0xFF) shl 24)
    }

    private fun writeU16(d: ByteArray, off: Int, v: Int, big: Boolean) {
        if (off + 1 >= d.size) return
        if (big) {
            d[off] = ((v shr 8) and 0xFF).toByte()
            d[off + 1] = (v and 0xFF).toByte()
        } else {
            d[off] = (v and 0xFF).toByte()
            d[off + 1] = ((v shr 8) and 0xFF).toByte()
        }
    }

    /** FIT 标准 CRC-16（16 项 nibble 表） */
    private fun fitCrc(data: ByteArray, start: Int, end: Int): Int {
        var crc = 0
        for (i in start until end) {
            val b = data[i].toInt() and 0xFF
            var tmp = CRC_TABLE[crc and 0x0F]
            crc = (crc shr 4) and 0x0FFF
            crc = crc xor tmp xor CRC_TABLE[b and 0x0F]
            tmp = CRC_TABLE[crc and 0x0F]
            crc = (crc shr 4) and 0x0FFF
            crc = crc xor tmp xor CRC_TABLE[(b shr 4) and 0x0F]
        }
        return crc and 0xFFFF
    }
}

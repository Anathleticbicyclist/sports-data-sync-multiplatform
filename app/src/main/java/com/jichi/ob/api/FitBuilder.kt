package com.jichi.ob.api

import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.zip.CRC32

/**
 * FIT 文件二进制构建器（手动构建，无需外部SDK）
 *
 * FIT 格式参考：https://developer.garmin.com/fit/protocol/
 * - 文件头14字节 + Definition Messages + Data Messages + CRC2字节
 * - 小端序
 * - 时间基准：1989-12-31T00:00:00Z (FIT epoch = Unix 631065600)
 * - 坐标：semicircles = degrees * 2^31 / 180
 * - 距离：厘米(uint32)
 * - 海拔：米+500偏移(uint16) 或 0.01米+500(uint32 enhanced)
 * - 速度：m/s*1000(uint16/uint32 enhanced)
 */
class FitBuilder {

    companion object {
        const val FIT_EPOCH = 631065600L // 1989-12-31 UTC
        const val SEMICIRCLE_FACTOR = 0x80000000L / 180.0 // 2^31/180

        // FIT base types
        const val TYPE_ENUM = 0x00
        const val TYPE_SINT8 = 0x01
        const val TYPE_UINT8 = 0x02
        const val TYPE_SINT16 = 0x83
        const val TYPE_UINT16 = 0x84
        const val TYPE_SINT32 = 0x85
        const val TYPE_UINT32 = 0x86
        const val TYPE_STRING = 0x07
        const val TYPE_FLOAT32 = 0x88
        const val TYPE_UINT8Z = 0x0A
        const val TYPE_UINT16Z = 0x8B
        const val TYPE_UINT32Z = 0x8C
        const val TYPE_BYTE = 0x0D

        // Global message numbers
        const val MSG_FILE_ID = 0
        const val MSG_ACTIVITY = 34
        const val MSG_SESSION = 18
        const val MSG_LAP = 19
        const val MSG_RECORD = 20

        fun unixToFitTimestamp(unixSec: Long): Long = unixSec - FIT_EPOCH

        fun degToSemicircles(deg: Double): Int = (deg * SEMICIRCLE_FACTOR).toInt()
    }

    private val buffer = ByteArrayOutputStream()
    var localMsgNum = 0

    /** 写一个 Definition Message */
    fun writeDefinition(globalMsgNum: Int, fields: List<Triple<Int, Int, Int>>) {
        val bb = ByteBuffer.allocate(6 + fields.size * 3).order(ByteOrder.LITTLE_ENDIAN)
        bb.put((0x40 or (localMsgNum and 0x0F)).toByte()) // header: definition + local num
        bb.put(0.toByte()) // reserved
        bb.put(0.toByte()) // architecture: 0=little endian
        bb.putShort(globalMsgNum.toShort())
        bb.put(fields.size.toByte())
        for ((defNum, size, baseType) in fields) {
            bb.put(defNum.toByte())
            bb.put(size.toByte())
            bb.put(baseType.toByte())
        }
        buffer.write(bb.array())
    }

    /** 写一个 Data Message 头 */
    fun writeDataHeader() {
        buffer.write(0x00 or (localMsgNum and 0x0F))
    }

    fun writeEnum(v: Int) { buffer.write(v and 0xFF) }
    fun writeSint8(v: Int) { buffer.write(v and 0xFF) }
    fun writeUint8(v: Int) { buffer.write(v and 0xFF) }
    fun writeUint8z(v: Int) { buffer.write(v and 0xFF) }
    fun writeSint16(v: Int) {
        val bb = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN).putShort(v.toShort())
        buffer.write(bb.array())
    }
    fun writeUint16(v: Int) {
        val bb = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN).putShort((v and 0xFFFF).toShort())
        buffer.write(bb.array())
    }
    fun writeUint16z(v: Int) {
        val bb = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN).putShort((v and 0xFFFF).toShort())
        buffer.write(bb.array())
    }
    fun writeSint32(v: Int) {
        val bb = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(v)
        buffer.write(bb.array())
    }
    fun writeUint32(v: Long) {
        val bb = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt((v and 0xFFFFFFFF).toInt())
        buffer.write(bb.array())
    }
    fun writeUint32z(v: Long) {
        val bb = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt((v and 0xFFFFFFFF).toInt())
        buffer.write(bb.array())
    }
    fun writeFloat32(v: Float) {
        val bb = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(v)
        buffer.write(bb.array())
    }
    fun writeString(s: String, maxLen: Int) {
        val bytes = s.toByteArray(Charsets.UTF_8)
        val len = minOf(bytes.size, maxLen - 1)
        buffer.write(bytes, 0, len)
        for (i in len until maxLen) buffer.write(0) // null padding
    }

    /** 构建完整 FIT 文件（加文件头和CRC） */
    fun build(): ByteArray {
        val data = buffer.toByteArray()
        val header = ByteBuffer.allocate(14).order(ByteOrder.LITTLE_ENDIAN)
        header.put(14) // header size
        header.put(0x20) // protocol version 2.0
        header.putShort(2172.toShort()) // profile version 21.72
        header.putInt(data.size) // data size
        header.put(".FIT".toByteArray(Charsets.US_ASCII)) // signature
        val headerCrc = crc16(header.array(), 0, 12)
        header.putShort(headerCrc.toShort())

        // 文件CRC = 文件头(14字节) + data
        val headerAndData = ByteArray(14 + data.size)
        System.arraycopy(header.array(), 0, headerAndData, 0, 14)
        System.arraycopy(data, 0, headerAndData, 14, data.size)
        val fileCrc = crc16(headerAndData, 0, headerAndData.size)
        val result = ByteArray(14 + data.size + 2)
        System.arraycopy(header.array(), 0, result, 0, 14)
        System.arraycopy(data, 0, result, 14, data.size)
        val crcBb = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN).putShort(fileCrc.toShort())
        System.arraycopy(crcBb.array(), 0, result, 14 + data.size, 2)
        return result
    }

    /** CRC-16/ARC (poly 0x8005, init 0x0000, 输入输出反转) — FIT标准CRC */
    private fun crc16(data: ByteArray, offset: Int, length: Int): Int {
        var crc = 0
        for (i in offset until offset + length) {
            crc = crc xor (data[i].toInt() and 0xFF)
            for (j in 0 until 8) {
                crc = if ((crc and 1) != 0) (crc ushr 1) xor 0xA001 else crc ushr 1
            }
        }
        return crc and 0xFFFF
    }
}

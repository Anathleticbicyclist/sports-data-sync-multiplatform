package com.jichi.ob.util

import android.util.Log
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * FIT文件时间戳修正工具（v7.0.4）
 *
 * 问题：行者导出的FIT文件中时间戳是北京时间（UTC+8），不符合FIT标准（应为UTC）。
 * iGPSPORT按标准UTC解析后转北京时间显示，导致活动时间比行者晚8小时。
 *
 * 修复：将行者FIT中所有timestamp字段（field_num=253）的值减去28800秒（8小时），
 * 使其成为正确的UTC时间戳。
 *
 * 仅对行者→iGPSPORT的FIT文件执行，其他场景不调用。
 */
object FitTimeFixer {
    private const val TAG = "FitTimeFixer"

    // FIT时间戳字段号
    private const val TIMESTAMP_FIELD_NUM = 253

    // 8小时对应的秒数
    private const val OFFSET_SECONDS = 8 * 3600L

    /**
     * 修正行者FIT文件中的时间戳：所有timestamp字段减8小时
     * @param fitBytes 原始FIT文件字节数组
     * @return 修正后的FIT文件字节数组，失败返回原始数组
     */
    fun fixXingzheFitTime(fitBytes: ByteArray): ByteArray {
        return try {
            if (!isFitFile(fitBytes)) {
                Log.w(TAG, "不是FIT文件，跳过时间修正")
                return fitBytes
            }

            val result = fixTimestamps(fitBytes)
            Log.d(TAG, "行者FIT时间修正完成: ${fitBytes.size} -> ${result.size} bytes")
            result
        } catch (e: Exception) {
            Log.e(TAG, "行者FIT时间修正失败: ${e.message}", e)
            fitBytes // 失败返回原始文件，不影响上传
        }
    }

    /** 判断是否为FIT文件 */
    private fun isFitFile(data: ByteArray): Boolean {
        if (data.size < 14) return false
        // FIT文件头第8-11字节是 ".FIT"
        return data[8] == '.'.code.toByte() &&
               data[9] == 'F'.code.toByte() &&
               data[10] == 'I'.code.toByte() &&
               data[11] == 'T'.code.toByte()
    }

    /**
     * 解析并修正FIT文件中的所有时间戳
     *
     * FIT文件结构：
     * - 文件头：12或14字节（含CRC）
     * - 数据区：定义消息 + 数据消息交替
     * - 文件末尾：2字节CRC（数据区的CRC）
     */
    private fun fixTimestamps(data: ByteArray): ByteArray {
        val headerSize = data[0].toInt() and 0xFF
        val dataSize = ByteBuffer.wrap(data, 4, 4).order(ByteOrder.LITTLE_ENDIAN).int
        val dataStart = headerSize
        // v7.0.5修复: data_size包括末尾2字节CRC，解析数据消息时排除CRC
        val dataEnd = dataStart + dataSize - 2

        Log.d(TAG, "FIT头: headerSize=$headerSize, dataSize=$dataSize (含CRC), 数据区内容长度=${dataSize - 2}")

        // 输出流：文件头 + 修改后的数据区 + 末尾CRC
        val output = ByteArrayOutputStream()
        output.write(data, 0, headerSize) // 文件头原样保留

        var pos = dataStart
        var fixedCount = 0
        var totalTimestamps = 0

        // 本地消息号 -> 字段定义列表
        val localDefs = mutableMapOf<Int, FieldDef>()

        while (pos < dataEnd) {
            val recordHeader = data[pos].toInt() and 0xFF
            pos++

            val isDefinition = (recordHeader and 0x40) != 0
            val localMesgNum = recordHeader and 0x0F

            if (isDefinition) {
                // 解析定义消息
                pos++ // reserved byte
                val architecture = data[pos].toInt() and 0xFF
                pos++
                val globalMesgNum = if (architecture == 0) {
                    ByteBuffer.wrap(data, pos, 2).order(ByteOrder.LITTLE_ENDIAN).short.toInt() and 0xFFFF
                } else {
                    ByteBuffer.wrap(data, pos, 2).order(ByteOrder.BIG_ENDIAN).short.toInt() and 0xFFFF
                }
                pos += 2
                val numFields = data[pos].toInt() and 0xFF
                pos++

                val fields = mutableListOf<FieldInfo>()
                var hasTimestamp = false
                var timestampOffset = 0
                var timestampSize = 0

                for (i in 0 until numFields) {
                    val fieldNum = data[pos].toInt() and 0xFF
                    val size = data[pos + 1].toInt() and 0xFF
                    val baseType = data[pos + 2].toInt() and 0xFF
                    pos += 3

                    if (fieldNum == TIMESTAMP_FIELD_NUM && size == 4) {
                        hasTimestamp = true
                        timestampOffset = i
                        timestampSize = size
                    }
                    fields.add(FieldInfo(fieldNum, size, baseType))
                }

                localDefs[localMesgNum] = FieldDef(globalMesgNum, architecture, fields, hasTimestamp, timestampOffset, timestampSize)

                // 定义消息原样写入输出
                output.write(recordHeader)
                output.write(data, pos - (1 + 1 + 2 + 1 + numFields * 3), 1 + 1 + 2 + 1 + numFields * 3)
            } else {
                // 数据消息
                val def = localDefs[localMesgNum]
                if (def == null) {
                    // 没有对应的定义消息，原样写入
                    output.write(recordHeader)
                    // 跳过这条消息（无法知道长度，保守处理：找下一个记录头）
                    // 实际上这种情况不应该发生，如果发生了就原样复制到数据区末尾
                    output.write(data, pos, dataEnd - pos)
                    pos = dataEnd
                    break
                }

                val msgSize = def.fields.sumOf { it.size }
                val msgStart = pos

                if (def.hasTimestamp) {
                    totalTimestamps++
                    // 计算timestamp字段在消息中的偏移
                    var tsOffsetInMsg = 0
                    for (i in 0 until def.timestampOffset) {
                        tsOffsetInMsg += def.fields[i].size
                    }

                    // 读取当前时间戳值
                    val tsPos = msgStart + tsOffsetInMsg
                    val currentTs = if (def.architecture == 0) {
                        ByteBuffer.wrap(data, tsPos, 4).order(ByteOrder.LITTLE_ENDIAN).int.toLong() and 0xFFFFFFFFL
                    } else {
                        ByteBuffer.wrap(data, tsPos, 4).order(ByteOrder.BIG_ENDIAN).int.toLong() and 0xFFFFFFFFL
                    }

                    // 减去8小时
                    val newTs = currentTs - OFFSET_SECONDS
                    if (newTs > 0) {
                        // 写入新的时间戳值
                        val tsBytes = if (def.architecture == 0) {
                            ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(newTs.toInt()).array()
                        } else {
                            ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(newTs.toInt()).array()
                        }
                        System.arraycopy(tsBytes, 0, data, tsPos, 4)
                        fixedCount++
                    }
                }

                // 写入记录头和消息数据
                output.write(recordHeader)
                output.write(data, msgStart, msgSize)
                pos += msgSize
            }
        }

        Log.d(TAG, "时间戳统计: 共找到 $totalTimestamps 个，修正 $fixedCount 个")

        // 写入数据区末尾的2字节CRC（FIT标准：数据区最后2字节是CRC）
        // 由于我们修改了数据区内容，需要重新计算CRC
        val modifiedData = output.toByteArray()
        val dataRegion = modifiedData.copyOfRange(headerSize, modifiedData.size)
        val crc = calculateFitCrc(dataRegion)
        output.write((crc and 0xFF).toInt())
        output.write(((crc shr 8) and 0xFF).toInt())

        return output.toByteArray()
    }

    /**
     * 计算FIT文件的CRC16（CCITT标准，多项式0x1021）
     */
    private fun calculateFitCrc(data: ByteArray): Int {
        var crc = 0
        for (b in data) {
            crc = crc xor (b.toInt() and 0xFF)
            for (i in 0 until 8) {
                crc = if ((crc and 1) != 0) {
                    (crc shr 1) xor 0x8408 // 反向多项式
                } else {
                    crc shr 1
                }
            }
        }
        return crc and 0xFFFF
    }

    // 内部数据类
    private data class FieldInfo(
        val fieldNum: Int,
        val size: Int,
        val baseType: Int
    )

    private data class FieldDef(
        val globalMesgNum: Int,
        val architecture: Int, // 0=小端, 1=大端
        val fields: List<FieldInfo>,
        val hasTimestamp: Boolean,
        val timestampOffset: Int, // timestamp在fields列表中的索引
        val timestampSize: Int
    )
}

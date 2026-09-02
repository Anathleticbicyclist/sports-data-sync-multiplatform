package com.jichi.ob.util

import android.util.Log
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * FIT文件时间戳修正工具（v7.0.6）
 *
 * 问题：行者导出的FIT文件中时间戳是北京时间（UTC+8），不符合FIT标准（应为UTC）。
 * iGPSPORT按标准UTC解析后转北京时间显示，导致活动时间比行者晚8小时。
 *
 * 修复：将行者FIT中所有timestamp字段（field_num=253）的值减去28800秒（8小时），
 * 使其成为正确的UTC时间戳。
 *
 * v7.0.6修复：改用直接修改原始数组的方式，避免重新构建输出流导致的文件结构损坏。
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

            // 直接复制原始数组，在副本上修改
            val data = fitBytes.copyOf()

            val headerSize = data[0].toInt() and 0xFF
            val dataSize = ByteBuffer.wrap(data, 4, 4).order(ByteOrder.LITTLE_ENDIAN).int
            val dataStart = headerSize
            // 数据区内容不包括末尾2字节CRC
            val dataEnd = dataStart + dataSize - 2

            Log.d(TAG, "FIT头: headerSize=$headerSize, dataSize=$dataSize, 数据区内容长度=${dataSize - 2}")

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

                    for (i in 0 until numFields) {
                        val fieldNum = data[pos].toInt() and 0xFF
                        val size = data[pos + 1].toInt() and 0xFF
                        val baseType = data[pos + 2].toInt() and 0xFF
                        pos += 3

                        if (fieldNum == TIMESTAMP_FIELD_NUM && size == 4) {
                            hasTimestamp = true
                            timestampOffset = i
                        }
                        fields.add(FieldInfo(fieldNum, size, baseType))
                    }

                    localDefs[localMesgNum] = FieldDef(globalMesgNum, architecture, fields, hasTimestamp, timestampOffset, 4)
                } else {
                    // 数据消息
                    val def = localDefs[localMesgNum]
                    if (def == null) {
                        // 没有对应的定义消息，跳过这条消息（无法知道长度）
                        Log.w(TAG, "数据消息没有对应的定义: local=$localMesgNum, pos=$pos")
                        break
                    }

                    val msgSize = def.fields.sumOf { it.size }
                    val msgStart = pos

                    // 安全检查：消息超出data_end时停止（行者FIT可能有额外数据，不修改超出部分）
                    if (msgStart + msgSize > dataEnd) {
                        Log.w(TAG, "数据消息超出数据区，停止遍历: msgStart=$msgStart, msgSize=$msgSize, dataEnd=$dataEnd")
                        break
                    }

                    if (def.hasTimestamp) {
                        totalTimestamps++
                        // 计算timestamp字段在消息中的偏移
                        var tsOffsetInMsg = 0
                        for (i in 0 until def.timestampOffset) {
                            tsOffsetInMsg += def.fields[i].size
                        }

                        val tsPos = msgStart + tsOffsetInMsg
                        val currentTs = if (def.architecture == 0) {
                            ByteBuffer.wrap(data, tsPos, 4).order(ByteOrder.LITTLE_ENDIAN).int.toLong() and 0xFFFFFFFFL
                        } else {
                            ByteBuffer.wrap(data, tsPos, 4).order(ByteOrder.BIG_ENDIAN).int.toLong() and 0xFFFFFFFFL
                        }

                        // 减去8小时
                        val newTs = currentTs - OFFSET_SECONDS
                        if (newTs > 0) {
                            val tsBytes = if (def.architecture == 0) {
                                ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(newTs.toInt()).array()
                            } else {
                                ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(newTs.toInt()).array()
                            }
                            System.arraycopy(tsBytes, 0, data, tsPos, 4)
                            fixedCount++
                        }
                    }

                    pos += msgSize
                }
            }

            Log.d(TAG, "时间戳统计: 共找到 $totalTimestamps 个，修正 $fixedCount 个")

            // v7.0.8: 不重新计算CRC，不碰文件其他部分。
            // 行者FIT文件本身不符合标准（data_size不正确，文件末尾有额外消息数据），
            // 重新计算CRC并写入会覆盖原始消息内容导致文件结构损坏。
            // iGPSPORT不检查CRC（原始文件CRC也不对但能解析），只修改时间戳即可。

            data
        } catch (e: Exception) {
            Log.e(TAG, "行者FIT时间修正失败: ${e.message}", e)
            fitBytes // 失败返回原始文件，不影响上传
        }
    }

    /** 判断是否为FIT文件 */
    private fun isFitFile(data: ByteArray): Boolean {
        if (data.size < 14) return false
        return data[8] == '.'.code.toByte() &&
               data[9] == 'F'.code.toByte() &&
               data[10] == 'I'.code.toByte() &&
               data[11] == 'T'.code.toByte()
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

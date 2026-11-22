// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.export.FitExporter）。
// 改写说明：Java 静态工具类改写为 Kotlin object，FileId/Activity/Session/Lap/Record/Event 消息组装顺序与字段原样保留。
// 已知问题：无。原件无 @Metadata，smali .source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.export

import android.util.Log
import com.garmin.fit.Activity
import com.garmin.fit.ActivityMesg
import com.garmin.fit.DateTime
import com.garmin.fit.Event
import com.garmin.fit.EventMesg
import com.garmin.fit.EventType
import com.garmin.fit.FileEncoder
import com.garmin.fit.FileIdMesg
import com.garmin.fit.LapMesg
import com.garmin.fit.RecordMesg
import com.garmin.fit.SessionMesg
import com.garmin.fit.Sport
import com.jichi.bikecomputer.model.SportType
import com.jichi.bikecomputer.model.TrackPoint
import com.jichi.bikecomputer.model.TrackStats
import java.io.File

object FitExporter {
    const val MANUFACTURER_DEV = 1
    const val PRODUCT_DEV = 3122

    @JvmStatic
    fun export(
        points: List<TrackPoint>?,
        sportType: SportType,
        startTimeMs: Long,
        stats: TrackStats,
        path: String
    ): Boolean {
        if (points.isNullOrEmpty()) return false
        var encoder: FileEncoder? = null
        return try {
            encoder = FileEncoder(File(path))
            val first = points.first()
            val last = points.last()
            val endTime = DateTime(last.timestamp / 1000)

            val fileId = FileIdMesg().apply {
                type = com.garmin.fit.File.ACTIVITY
                manufacturer = MANUFACTURER_DEV
                product = PRODUCT_DEV
                timeCreated = DateTime(startTimeMs / 1000)
            }
            encoder.write(fileId)

            val activity = ActivityMesg().apply {
                timestamp = endTime
                totalTimerTime = (stats.durationMs / 1000.0).toFloat()
                numSessions = 1
                type = Activity.MANUAL
                event = Event.ACTIVITY
                eventType = EventType.STOP_ALL
                localTimestamp = last.timestamp / 1000
            }
            encoder.write(activity)

            val session = SessionMesg().apply {
                timestamp = endTime
                startTime = DateTime(startTimeMs / 1000)
                startPositionLat = semicircle(first.lat)
                startPositionLong = semicircle(first.lon)
                endPositionLat = semicircle(last.lat)
                endPositionLong = semicircle(last.lon)
                totalElapsedTime = (stats.elapsedMs / 1000.0).toFloat()
                totalTimerTime = (stats.durationMs / 1000.0).toFloat()
                totalDistance = stats.distanceM.toFloat()
                totalAscent = stats.ascentM.toInt()
                totalDescent = stats.descentM.toInt()
                avgSpeed = stats.avgSpeedMs().toFloat()
                maxSpeed = stats.maxSpeedMs
                sport = Sport.getByValue(sportType.fitSport.toShort())
            }
            encoder.write(session)

            val lap = LapMesg().apply {
                timestamp = endTime
                startTime = DateTime(startTimeMs / 1000)
                startPositionLat = semicircle(first.lat)
                startPositionLong = semicircle(first.lon)
                endPositionLat = semicircle(last.lat)
                endPositionLong = semicircle(last.lon)
                totalElapsedTime = (stats.elapsedMs / 1000.0).toFloat()
                totalTimerTime = (stats.durationMs / 1000.0).toFloat()
                totalDistance = stats.distanceM.toFloat()
                totalAscent = stats.ascentM.toInt()
                totalDescent = stats.descentM.toInt()
                avgSpeed = stats.avgSpeedMs().toFloat()
                maxSpeed = stats.maxSpeedMs
                sport = Sport.getByValue(sportType.fitSport.toShort())
                event = Event.LAP
                eventType = EventType.STOP
            }
            encoder.write(lap)

            var prevLat = first.lat
            var prevLon = first.lon
            var cumulativeDistanceM = 0f
            for (point in points) {
                if (point.timestamp <= 0) continue
                cumulativeDistanceM =
                    (cumulativeDistanceM + TrackStats.haversineM(prevLat, prevLon, point.lat, point.lon)).toFloat()
                prevLat = point.lat
                prevLon = point.lon
                val record = RecordMesg().apply {
                    timestamp = DateTime(point.timestamp / 1000)
                    positionLat = semicircle(point.lat)
                    positionLong = semicircle(point.lon)
                    if (!point.alt.isNaN()) {
                        altitude = point.alt.toFloat()
                        enhancedAltitude = point.alt.toFloat()
                    }
                    if (point.speed >= 0f) {
                        speed = point.speed
                        enhancedSpeed = point.speed
                    }
                    distance = cumulativeDistanceM
                    if (point.heartRate > 0) heartRate = point.heartRate.toShort()
                    if (point.cadence > 0) cadence = point.cadence.toShort()
                    if (point.power > 0) power = point.power
                }
                encoder.write(record)
            }

            val startEvent = EventMesg().apply {
                timestamp = DateTime(startTimeMs / 1000)
                event = Event.TIMER
                eventType = EventType.START
            }
            encoder.write(startEvent)
            val stopEvent = EventMesg().apply {
                timestamp = endTime
                event = Event.TIMER
                eventType = EventType.STOP_ALL
            }
            encoder.write(stopEvent)

            encoder.close()
            true
        } catch (e: Exception) {
            Log.e("FitExporter", "导出失败", e)
            try {
                encoder?.close()
            } catch (_: Exception) {
            }
            false
        }
    }

    private fun semicircle(degrees: Double): Int =
        Math.round(degrees * 2.147483648E9 / 180.0).toInt()
}

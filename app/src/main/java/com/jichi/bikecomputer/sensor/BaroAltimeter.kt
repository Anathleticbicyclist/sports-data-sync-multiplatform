// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.sensor.BaroAltimeter）。
// 改写说明：Java 类改写为 Kotlin 类，SensorEventListener 改为对象表达式，5 点滑动均值与气压高度公式原样保留。
// 已知问题：resolve() 两个参数的业务角色（GPS/气压）无法从反编译确定，只按“主值优先、偏差超 30m 取参考值”的逻辑命名为 primary/fallback；
// 原件无 @Metadata，smali .source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.sensor

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import kotlin.math.abs
import kotlin.math.pow

class BaroAltimeter(context: Context) {

    interface Callback {
        fun onBaroReading(meanPressureHpa: Float, altitudeM: Double)
    }

    private val sensorManager: SensorManager? =
        context.getSystemService(SensorManager::class.java)
    private val pressureSensor: Sensor? =
        sensorManager?.getDefaultSensor(Sensor.TYPE_PRESSURE)
    private var callback: Callback? = null

    private val listener = object : SensorEventListener {
        override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) = Unit

        override fun onSensorChanged(event: SensorEvent?) {
            if (event?.sensor?.type != Sensor.TYPE_PRESSURE) return
            addSample(event.values[0])
        }
    }

    private val buffer = FloatArray(5)
    private var bufferIndex = 0
    private var bufferCount = 0
    private var seaLevelPressureHpa = 1013.25
    private var calibrated = false
    private var running = false
    private var registerFailed = false

    fun hasBarometer(): Boolean = pressureSensor != null

    fun setCallback(callback: Callback?) {
        this.callback = callback
    }

    fun calibrate(altitudeM: Double, pressureHpa: Float) {
        if (altitudeM.isNaN() || pressureHpa <= 500f) return
        seaLevelPressureHpa = pressureHpa / (1.0 - altitudeM / 44330.8).pow(5.255)
        calibrated = true
    }

    fun start() {
        val sensor = pressureSensor ?: return
        if (running) return
        running = true
        registerFailed = false
        try {
            sensorManager?.registerListener(listener, sensor, SensorManager.SENSOR_DELAY_NORMAL)
        } catch (_: Exception) {
            running = false
            registerFailed = true
        }
    }

    fun stop() {
        if (running) {
            running = false
            try {
                sensorManager?.unregisterListener(listener)
            } catch (_: Exception) {
            }
        }
    }

    fun hasData(): Boolean = bufferCount >= 3

    fun isRegisterFailed(): Boolean = registerFailed

    fun lastPressureHpa(): Float {
        if (bufferCount == 0) return 0f
        val sum = (0 until bufferCount).sumOf { buffer[it].toDouble() }
        return (sum / bufferCount).toFloat()
    }

    private fun addSample(pressureHpa: Float) {
        buffer[bufferIndex] = pressureHpa
        bufferIndex = (bufferIndex + 1) % buffer.size
        bufferCount = minOf(bufferCount + 1, buffer.size)
        if (bufferCount < 3) return
        val meanPressure = lastPressureHpa()
        val altitude = (1.0 - (meanPressure / seaLevelPressureHpa).pow(0.19029495718363465)) * 44330.8
        callback?.onBaroReading(meanPressure, altitude)
    }

    fun resolve(primary: Double, fallback: Double): Double = when {
        primary.isNaN() -> fallback
        fallback.isNaN() || abs(primary - fallback) <= 30.0 -> primary
        else -> fallback
    }

    fun isRunning(): Boolean = running

    fun isCalibrated(): Boolean = calibrated
}

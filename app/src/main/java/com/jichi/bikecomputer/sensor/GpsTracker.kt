// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.sensor.GpsTracker）。
// 改写说明：Java 类改写为 Kotlin 类，LocationListener 改为对象表达式，GPS/网络双 provider 与精度过滤逻辑原样保留。
// 已知问题：原件网络定位间隔用的是 CoroutineLiveDataKt.DEFAULT_TIMEOUT（smali 证实为 5000ms），该常量为 internal，
// 故直接写成 5000L；原件无 @Metadata，smali .source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.sensor

import android.content.Context
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import android.location.LocationProvider
import android.os.Bundle
import android.os.Looper

class GpsTracker(context: Context) {

    interface Callback {
        fun onGpsStatus(hasFix: Boolean, accuracyM: Float)
        fun onLocation(location: Location)
    }

    private val locationManager: LocationManager? =
        context.getSystemService(LocationManager::class.java)
    private var callback: Callback? = null
    private var running = false
    private var haveFix = false
    private var lastAccuracy = 999f

    private val listener = object : LocationListener {
        override fun onProviderDisabled(provider: String) = Unit

        override fun onProviderEnabled(provider: String) = Unit

        override fun onLocationChanged(location: Location) {
            if (isValid(location)) {
                haveFix = true
                lastAccuracy = location.accuracy
                callback?.onLocation(location)
                callback?.onGpsStatus(true, lastAccuracy)
            }
        }

        override fun onStatusChanged(provider: String?, status: Int, extras: Bundle?) {
            if (provider != LocationManager.GPS_PROVIDER || status == LocationProvider.AVAILABLE) return
            haveFix = false
            callback?.onGpsStatus(false, lastAccuracy)
        }
    }

    fun setCallback(callback: Callback?) {
        this.callback = callback
    }

    private fun isValid(location: Location): Boolean =
        location.hasAccuracy() && location.accuracy <= 50f

    fun start() {
        if (running) return
        running = true
        haveFix = false
        try {
            if (locationManager?.isProviderEnabled(LocationManager.GPS_PROVIDER) == true) {
                locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1000L, 0f, listener)
            }
            if (locationManager?.isProviderEnabled(LocationManager.NETWORK_PROVIDER) == true) {
                locationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 5000L, 10f, listener)
            }
            if (!haveFix) {
                locationManager?.requestSingleUpdate(LocationManager.GPS_PROVIDER, listener, null as Looper?)
            }
        } catch (_: SecurityException) {
        } catch (_: Exception) {
        }
    }

    fun stop() {
        if (running) {
            running = false
            try {
                locationManager?.removeUpdates(listener)
            } catch (_: Exception) {
            }
        }
    }

    fun isRunning(): Boolean = running

    fun hasFix(): Boolean = haveFix

    fun getLastAccuracy(): Float = lastAccuracy
}

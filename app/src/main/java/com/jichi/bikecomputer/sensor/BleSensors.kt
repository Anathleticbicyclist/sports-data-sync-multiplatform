// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.sensor.BleSensors）。
// 改写说明：Java 类改写为 Kotlin 类，回调/设备类型/扫描与 GATT 处理原样保留；parseCsc 的 jadx 坏代码已按 smali 修复（见该函数注释）。
// 已知问题：rscCadence() 已按 BLE RSC 规范修（2026-11-22，审查 P1-4）：步频恒取偏移 3，不看 flags bit0；
// 原件按 bit0 选偏移 1 或 3 是错的，bit0 清除时读到的是速度低字节。bit0 只决定其后有无步幅，bit1 决定有无总距离。
// 原件无 @Metadata，smali .source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.sensor

import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothGatt
import android.bluetooth.BluetoothGattCallback
import android.bluetooth.BluetoothGattCharacteristic
import android.bluetooth.BluetoothGattDescriptor
import android.bluetooth.BluetoothManager
import android.bluetooth.le.BluetoothLeScanner
import android.bluetooth.le.ScanCallback
import android.bluetooth.le.ScanResult
import android.bluetooth.le.ScanSettings
import android.content.Context
import android.os.Handler
import android.os.Looper
import com.jichi.ob.ui.LoginWebActivity
import java.util.UUID
import kotlin.math.roundToInt

class BleSensors(context: Context) {

    interface Callback {
        fun onCadence(cadenceRpm: Int)
        fun onHeartRate(bpm: Int)
        fun onPower(watts: Int)
        fun onRunCadence(stepsPerMinute: Int)
        fun onScannedDevice(name: String, mac: String, type: DeviceType, rssi: Int)
        fun onSensorStatus(mac: String?, message: String)
        fun onWheelSpeed(speedMps: Float)
    }

    enum class DeviceType(@JvmField val label: String, @JvmField val serviceUuid: String?) {
        HEART_RATE("心率计", "0000180d-0000-1000-8000-00805f9b34fb"),
        POWER("功率计", "00001818-0000-1000-8000-00805f9b34fb"),
        CADENCE("踏频计", "00001816-0000-1000-8000-00805f9b34fb"),
        SPEED("速度计", "00001816-0000-1000-8000-00805f9b34fb"),
        CADENCE_RUN("步频计", "00001814-0000-1000-8000-00805f9b34fb"),
        UNKNOWN("未知设备", null)
    }

    private class BleDevice {
        var connected: Boolean = false
        var gatt: BluetoothGatt? = null
        var lastCrankRev: Long = -1L
        var lastCrankTime: Long = -1L
        var lastWheelRev: Long = -1L
        var lastWheelTime: Long = -1L
        var name: String? = null
        var type: DeviceType = DeviceType.UNKNOWN
    }

    companion object {
        private val HR_SERVICE = UUID.fromString("0000180d-0000-1000-8000-00805f9b34fb")
        private val HR_MEASURE = UUID.fromString("00002a37-0000-1000-8000-00805f9b34fb")
        private val CP_SERVICE = UUID.fromString("00001818-0000-1000-8000-00805f9b34fb")
        private val CP_POWER = UUID.fromString("00002a63-0000-1000-8000-00805f9b34fb")
        private val CSC_SERVICE = UUID.fromString("00001816-0000-1000-8000-00805f9b34fb")
        private val CSC_MEASURE = UUID.fromString("00002a5b-0000-1000-8000-00805f9b34fb")
        private val RSC_SERVICE = UUID.fromString("00001814-0000-1000-8000-00805f9b34fb")
        private val RSC_MEASURE = UUID.fromString("00002a53-0000-1000-8000-00805f9b34fb")
        private val CCCD_UUID = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb")

        private const val DEFAULT_WHEEL_CIRCUMFERENCE_M = 2.096

        /** 踏频（rpm）：圈数差 revs、时间差 1/1024 秒；非法返回 -1。 */
        @JvmStatic
        fun crankRpm(revDelta: Long, timeDelta: Long): Float {
            if (revDelta < 0 || timeDelta <= 0) return -1f
            val rpm = revDelta * 1024.0 / timeDelta * 60.0
            if (rpm <= 0.0 || rpm > 300.0) return -1f
            return rpm.toFloat()
        }

        /** 轮速（m/s）：圈数差 revs、时间差 1/1024 秒、轮周长 circumferenceM；非法返回 -1。 */
        @JvmStatic
        fun wheelMps(revDelta: Long, timeDelta: Long, circumferenceM: Double): Float {
            if (revDelta < 0 || timeDelta <= 0 || timeDelta >= 61440) return -1f
            val speed = revDelta / 1000.0 * circumferenceM / (timeDelta / 1024.0)
            if (speed < 0.0 || speed > 60.0) return -1f
            return speed.toFloat()
        }

        @JvmStatic
        fun parsePowerBytes(data: ByteArray?): Int {
            if (data != null && data.size >= 4) {
                val watts = (data[2].toInt() and 0xFF) or ((data[3].toInt() and 0xFF) shl 8)
                if (watts in 0..4000) return watts
            }
            return -1
        }

        @JvmStatic
        fun rscCadence(data: ByteArray?): Int {
            if (data == null || data.size < 4) return -1
            // 已按 BLE RSC 规范修（审查 P1-4）：步频字节恒在偏移 3（标志 1 字节 + 瞬时速度 2 字节之后），
            // 与 flags bit0 无关；bit0 只决定其后有无步幅（uint16），bit1 决定有无总距离（uint32）。
            // 原件按 bit0 选偏移 1 或 3 是错的：bit0 清除时读到的是速度的低字节，再 ×2 当步频。
            val stepsPerMinute = (data[3].toInt() and 0xFF) * 2
            if (stepsPerMinute <= 0 || stepsPerMinute > 300) return -1
            return stepsPerMinute
        }

        @JvmStatic
        fun detectTypeByName(name: String?): DeviceType {
            if (name == null) return DeviceType.UNKNOWN
            val lower = name.lowercase()
            if (lower.contains("power") || lower.contains("pwr") || lower.contains("quarq") ||
                lower.contains("power2max") || lower.contains("assioma") || lower.contains("4iiii") ||
                lower.contains("stages") || lower.contains("favero") || lower.contains("vector") ||
                lower.contains("p2m") || lower.contains("功率")
            ) {
                return DeviceType.POWER
            }
            if (lower.contains("heart") || lower.contains("tickr") || lower.contains("magene h") ||
                lower.contains("mooch") || lower.contains("beats") || lower.contains("chest") ||
                lower.contains("心率") || lower.contains("h10") || lower.contains("h9") ||
                lower.contains("h7") || lower.contains("dual") || lower.contains("verity") ||
                lower.contains("hr-") || lower.contains("-hr") || lower.contains("hrm") ||
                lower.contains("heartrate") || lower.contains("hr ")
            ) {
                return DeviceType.HEART_RATE
            }
            if (lower.contains("stryd") || lower.contains("跑步") || lower.contains("rsc") ||
                lower.contains("spm") || lower.contains("run cad") || lower.contains("cadence run") ||
                lower.contains("footpod") || lower.contains("步频")
            ) {
                return DeviceType.CADENCE_RUN
            }
            if (lower.contains("cad") || lower.contains("speed") || lower.contains("rpm") ||
                lower.contains("bike") || lower.contains("sensor") || lower.contains("garmin") ||
                lower.contains(LoginWebActivity.TYPE_WAHOO) || lower.contains(LoginWebActivity.TYPE_BRYTON) ||
                lower.contains(LoginWebActivity.TYPE_IGPSPORT) || lower.contains("xoss") ||
                lower.contains(LoginWebActivity.TYPE_MAGENE) || lower.contains("迈金") ||
                lower.contains("行者") || lower.contains("百锐腾") || lower.contains("黑鸟") ||
                lower.contains("igp") || lower.contains("duo") || lower.contains("topeak") ||
                lower.contains("cateye") || lower.contains("sigma") || lower.contains("vetta") ||
                lower.contains("wheel") || lower.contains("轮")
            ) {
                return DeviceType.CADENCE
            }
            return DeviceType.UNKNOWN
        }
    }

    private val bluetoothManager: BluetoothManager? =
        context.getSystemService(BluetoothManager::class.java)
    private val adapter: BluetoothAdapter? = bluetoothManager?.adapter
    private var callback: Callback? = null
    private var scanner: BluetoothLeScanner? = null
    private var scanning = false
    private val mainHandler = Handler(Looper.getMainLooper())
    private var wheelCircumference = DEFAULT_WHEEL_CIRCUMFERENCE_M
    private val devices = HashMap<String, BleDevice>()

    private val scanCallback = object : ScanCallback() {
        override fun onScanResult(callbackType: Int, result: ScanResult) {
            val device = result.device
            if (device?.address == null) return
            val advertisedName = result.scanRecord?.deviceName
            var name = advertisedName ?: device.name
            if (name.isNullOrEmpty()) name = device.address
            var type = detectType(result)
            if (type == DeviceType.UNKNOWN) {
                type = detectTypeByName(advertisedName ?: name)
            }
            callback?.onScannedDevice(name, device.address, type, result.rssi)
        }

        override fun onScanFailed(errorCode: Int) {
            callback?.onSensorStatus("", "扫描失败 code=$errorCode")
        }
    }

    fun setCallback(callback: Callback?) {
        this.callback = callback
    }

    fun setWheelCircumference(circumferenceM: Double) {
        wheelCircumference = if (circumferenceM <= 1.0) DEFAULT_WHEEL_CIRCUMFERENCE_M else circumferenceM
    }

    fun hasBluetooth(): Boolean = adapter != null

    private fun detectType(result: ScanResult): DeviceType {
        val serviceUuids = result.scanRecord?.serviceUuids ?: return DeviceType.UNKNOWN
        for (parcelUuid in serviceUuids) {
            when (parcelUuid.uuid) {
                HR_SERVICE -> return DeviceType.HEART_RATE
                CP_SERVICE -> return DeviceType.POWER
                CSC_SERVICE -> return DeviceType.CADENCE
                RSC_SERVICE -> return DeviceType.CADENCE_RUN
            }
        }
        return DeviceType.UNKNOWN
    }

    fun startScan() {
        val adapter = adapter ?: return
        if (scanning) return
        val scanner = adapter.bluetoothLeScanner ?: return
        this.scanner = scanner
        scanning = true
        try {
            scanner.startScan(
                emptyList(),
                ScanSettings.Builder().setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY).build(),
                scanCallback
            )
        } catch (_: SecurityException) {
        }
    }

    fun stopScan() {
        if (scanner != null && scanning) {
            try {
                scanner?.stopScan(scanCallback)
            } catch (_: Exception) {
            }
        }
        scanning = false
    }

    fun connect(mac: String?, type: DeviceType) {
        val adapter = adapter ?: return
        if (mac == null) return
        val existing = devices[mac]
        if (existing != null && existing.connected) {
            existing.type = type
            return
        }
        val remoteDevice = adapter.getRemoteDevice(mac)
        val device = existing ?: BleDevice().also {
            it.name = remoteDevice.name ?: mac
            it.type = type
            devices[mac] = it
        }
        device.type = type
        stopScan()
        try {
            device.gatt = remoteDevice.connectGatt(null, false, GattHandler(mac))
        } catch (_: SecurityException) {
            callback?.onSensorStatus(mac, "连接失败：无蓝牙权限")
        }
    }

    /** bindings 的 key 为 DeviceType 名、value 为 MAC 地址；非法条目静默跳过。 */
    fun restoreBindings(bindings: Map<String, String>?) {
        if (bindings == null) return
        for ((typeName, mac) in bindings) {
            try {
                val type = DeviceType.valueOf(typeName)
                if (type != DeviceType.UNKNOWN) connect(mac, type)
            } catch (_: Exception) {
            }
        }
    }

    fun disconnect(mac: String) {
        val device = devices[mac] ?: return
        try {
            device.gatt?.disconnect()
        } catch (_: Exception) {
        }
    }

    fun forget(mac: String) {
        disconnect(mac)
        val removed = devices.remove(mac) ?: return
        try {
            removed.gatt?.close()
        } catch (_: Exception) {
        }
    }

    fun disconnectAll() {
        for (mac in ArrayList(devices.keys)) {
            disconnect(mac)
        }
    }

    fun isConnected(mac: String): Boolean = devices[mac]?.connected == true

    fun typeOf(mac: String): DeviceType = devices[mac]?.type ?: DeviceType.UNKNOWN

    fun nameOf(mac: String): String = devices[mac]?.name ?: mac

    fun connectedCount(): Int = devices.values.count { it.connected }

    fun anyConnected(): Boolean = connectedCount() > 0

    private inner class GattHandler(private val mac: String) : BluetoothGattCallback() {

        override fun onConnectionStateChange(gatt: BluetoothGatt, status: Int, newState: Int) {
            val device = devices[mac]
            if (newState == BluetoothGatt.STATE_CONNECTED) {
                device?.connected = true
                callback?.onSensorStatus(mac, "已连接")
                gatt.discoverServices()
                return
            }
            if (newState == BluetoothGatt.STATE_DISCONNECTED) {
                device?.connected = false
                callback?.onSensorStatus(mac, "已断开")
                gatt.close()
                device?.gatt = null
            }
        }

        override fun onServicesDiscovered(gatt: BluetoothGatt, status: Int) {
            val device = devices[mac]
            if (device != null && device.type == DeviceType.UNKNOWN) {
                // 优先级：心率/功率/步频一经发现即定型；踏频不中断扫描，仅当全程无前三者时才定型。
                var detected = DeviceType.UNKNOWN
                for (service in gatt.services) {
                    when (service.uuid) {
                        HR_SERVICE -> {
                            detected = DeviceType.HEART_RATE
                            break
                        }
                        CP_SERVICE -> {
                            detected = DeviceType.POWER
                            break
                        }
                        RSC_SERVICE -> {
                            detected = DeviceType.CADENCE_RUN
                            break
                        }
                        CSC_SERVICE -> detected = DeviceType.CADENCE
                    }
                }
                if (detected != DeviceType.UNKNOWN) {
                    device.type = detected
                    callback?.onSensorStatus(mac, "识别为" + detected.label)
                }
            }
            for (service in gatt.services) {
                for (characteristic in service.characteristics) {
                    if (characteristic.uuid == HR_MEASURE || characteristic.uuid == CP_POWER ||
                        characteristic.uuid == CSC_MEASURE || characteristic.uuid == RSC_MEASURE
                    ) {
                        try {
                            gatt.setCharacteristicNotification(characteristic, true)
                        } catch (_: Exception) {
                        }
                        try {
                            val descriptor = characteristic.getDescriptor(CCCD_UUID)
                            if (descriptor != null) {
                                descriptor.value = BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE
                                gatt.writeDescriptor(descriptor)
                            }
                        } catch (_: Exception) {
                        }
                    }
                }
            }
        }

        override fun onCharacteristicChanged(gatt: BluetoothGatt, characteristic: BluetoothGattCharacteristic) {
            try {
                when (characteristic.uuid) {
                    HR_MEASURE -> parseHeartRate(characteristic.value)
                    CP_POWER -> parsePower(characteristic.value)
                    CSC_MEASURE -> parseCsc(characteristic.value)
                    RSC_MEASURE -> parseRsc(characteristic.value)
                }
            } catch (_: SecurityException) {
                callback?.onSensorStatus(null, "心率需要「身体传感器」权限，请到系统设置开启")
            }
        }
    }

    private fun parseHeartRate(data: ByteArray?) {
        if (data == null || data.size < 2) return
        val bpm = if (data[0].toInt() and 1 == 0) {
            data[1].toInt() and 0xFF
        } else {
            if (data.size < 3) return
            (data[1].toInt() and 0xFF) or ((data[2].toInt() and 0xFF) shl 8)
        }
        if (bpm <= 0 || bpm >= 255) return
        callback?.onHeartRate(bpm)
    }

    private fun parsePower(data: ByteArray?) {
        val watts = parsePowerBytes(data)
        if (watts < 0) return
        callback?.onPower(watts)
    }

    private fun parseRsc(data: ByteArray?) {
        val cadence = rscCadence(data)
        if (cadence <= 0) return
        callback?.onRunCadence(cadence)
    }

    /**
     * CSC Measurement（0x2A5B）解析。jadx 在此处报 "Code decompiled incorrectly"：
     * 其输出中轮速段的偏移量 i 在 flags bit0 清除时未初始化。已按 smali 逐条核对修复——
     * flags bit0 置位且长度 ≥7 时轮速段在偏移 1（累计圈数 uint32）与偏移 5（累计时间 uint16），
     * 此时踏频段偏移为 7；否则轮速段缺失（均记 -1），踏频段偏移为 1。
     * flags bit1 置位且长度足够时踏频段为偏移处 uint16 圈数 + 其后 uint16 时间；否则踏频段缺失。
     * 每收到一次通知，对全部已连接设备按“本次值 − 上次值”计算踏频/轮速并更新各设备的上次值。
     */
    private fun parseCsc(data: ByteArray?) {
        if (data == null || data.size < 2) return
        val flags = data[0].toInt()
        var crankOffset = 1
        var wheelRevs = -1L
        var wheelTime = -1L
        if (flags and 1 != 0 && data.size >= 7) {
            wheelRevs = le(data, 1, 4)
            wheelTime = le(data, 5, 2)
            crankOffset = 7
        }
        var crankRevs = -1L
        var crankTime = -1L
        if (flags and 2 != 0 && data.size >= crankOffset + 4) {
            crankRevs = le(data, crankOffset, 2)
            crankTime = le(data, crankOffset + 2, 2)
        }
        for (device in devices.values) {
            if (!device.connected) continue
            if (crankRevs >= 0 && crankTime >= 0 &&
                device.lastCrankRev >= 0 && device.lastCrankTime >= 0
            ) {
                val rpm = crankRpm(crankRevs - device.lastCrankRev, crankTime - device.lastCrankTime)
                if (rpm > 0f) callback?.onCadence(rpm.roundToInt())
            }
            if (wheelRevs >= 0 && wheelTime >= 0 &&
                device.lastWheelRev >= 0 && device.lastWheelTime >= 0
            ) {
                val speed = wheelMps(wheelRevs - device.lastWheelRev, wheelTime - device.lastWheelTime, wheelCircumference)
                if (speed > 0f) callback?.onWheelSpeed(speed)
            }
            if (crankRevs >= 0) device.lastCrankRev = crankRevs
            if (crankTime >= 0) device.lastCrankTime = crankTime
            if (wheelRevs >= 0) device.lastWheelRev = wheelRevs
            if (wheelTime >= 0) device.lastWheelTime = wheelTime
        }
    }

    private fun le(data: ByteArray, offset: Int, length: Int): Long {
        var value = 0L
        for (i in 0 until length) {
            value = value or ((data[offset + i].toLong() and 0xFF) shl (i * 8))
        }
        return value
    }

    fun stop() {
        stopScan()
        disconnectAll()
    }
}

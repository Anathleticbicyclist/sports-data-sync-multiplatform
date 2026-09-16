package com.jichi.ob

import com.jichi.ob.api.KeepApi
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * v8.1.4: Keep cycling 单点兜底元数据透传单测
 *
 * 背景（实测）：Keep cyclinglog 详情接口不返回 rawDataURL（仅 running/hiking 返回），
 * 但返回 distance(米)/duration(秒)。单点兜底时写入 GPX <extensions>，
 * GpxToFitConverter 解析后写入 FIT session total_distance / 时长，
 * 目标平台（Outbase 等）不再显示 0 里程 / 1 秒。
 */
class KeepFitMetaTest {

    /** 反射调用 KeepApi.buildGpx（私有，9 参数：points/startTimeMs/sport/metaDistance/metaDuration/metaCalorie/metaAvgHr/metaMaxHr/dataType） */
    private fun buildKeepGpx(points: List<DoubleArray>, startMs: Long, sport: String,
                             metaDist: Double, metaDur: Long, dataType: String = ""): String {
        val api = KeepApi()
        val m = KeepApi::class.java.getDeclaredMethod(
            "buildGpx", List::class.java, Long::class.javaPrimitiveType,
            String::class.java, Double::class.javaPrimitiveType, Long::class.javaPrimitiveType,
            Double::class.javaPrimitiveType, Int::class.javaPrimitiveType, Int::class.javaPrimitiveType,
            String::class.java)
        m.isAccessible = true
        return String(m.invoke(api, points, startMs, sport, metaDist, metaDur, 0.0, 0, 0, dataType) as ByteArray, Charsets.UTF_8)
    }

    @Test
    fun `单点兜底 GPX 写入 jichi extensions`() {
        val gpx = buildKeepGpx(
            listOf(doubleArrayOf(37.789926, 112.555769, 1743589482000.0, Double.NaN)),
            1743589482000L, "cycling", 30590.0, 5129L)
        assertTrue("GPX:\n$gpx", gpx.contains("<jichi:distance>30590.0</jichi:distance>"))
        assertTrue("GPX:\n$gpx", gpx.contains("<jichi:duration>5129</jichi:duration>"))
        assertTrue(gpx.contains("<type>cycling</type>"))
    }

    @Test
    fun `v816 GPX 声明 jichi 命名空间且透传 dataType`() {
        // 修复回归：此前 <extensions><jichi:*> 未声明 xmlns:jichi，严格 XML 解析器直接拒收整个文件
        val gpx = buildKeepGpx(
            listOf(doubleArrayOf(37.789926, 112.555769, 1743589482000.0, Double.NaN)),
            1743589482000L, "cycling", 30590.0, 5129L, "indoorCycling")
        assertTrue("应声明 xmlns:jichi", gpx.contains("xmlns:jichi="))
        assertTrue("name 应写精确 dataType", gpx.contains("<name>from keep - indoorCycling</name>"))
        assertTrue("type 保持大类", gpx.contains("<type>cycling</type>"))
    }

    @Test
    fun `v816 dataType 完整映射到 FIT sport 与 sub_sport`() {
        fun fitSport(gpx: String): Pair<Int, Int> {
            val fit = GpxToFitConverter.convert(gpx.toByteArray(Charsets.UTF_8))
            val session = parseFit(fit).first { it.global == 18 }
            return (session.fields.getValue(5)).toInt() to (session.fields.getValue(6)).toInt()
        }
        fun g(name: String) = """
            <gpx creator="jichiOB" version="1.1" xmlns="http://www.topografix.com/GPX/1/1" xmlns:jichi="http://jichi.ob">
              <trk><name>from keep - $name</name><type>cycling</type><trkseg>
                <trkpt lat="36.278103" lon="120.2880"><time>2025-04-02T10:24:42Z</time></trkpt>
                <trkpt lat="36.278200" lon="120.2883"><time>2025-04-02T10:25:42Z</time></trkpt>
              </trkseg></trk>
            </gpx>
        """.trimIndent()
        assertEquals("indoorCycling → sport=2 sub=6", 2 to 6, fitSport(g("indoorCycling")))
        assertEquals("outdoorCycling → sport=2 sub=7", 2 to 7, fitSport(g("outdoorCycling")))
        assertEquals("cycling → sport=2 sub=7", 2 to 7, fitSport(g("cycling")))
        assertEquals("indoorRunning → sport=1 sub=14", 1 to 14, fitSport(g("indoorRunning")))
        assertEquals("running → sport=1 sub=2", 1 to 2, fitSport(g("running")))
        assertEquals("mountaineering → sport=16", 16 to 0, fitSport(g("mountaineering")))
        assertEquals("hiking → sport=17 sub=3", 17 to 3, fitSport(g("hiking")))
        assertEquals("indoorWalking → sport=11 sub=16", 11 to 16, fitSport(g("indoorWalking")))
        assertEquals("walking → sport=11 sub=2", 11 to 2, fitSport(g("walking")))
        assertEquals("indoorSwimming → sport=5 sub=21", 5 to 21, fitSport(g("indoorSwimming")))
        assertEquals("swimming → sport=5 sub=30", 5 to 30, fitSport(g("swimming")))
        assertEquals("triathlon → sport=18", 18 to 0, fitSport(g("triathlon")))
        assertEquals("fitness → sport=10", 10 to 0, fitSport(g("fitness")))
    }

    @Test
    fun `单点 GPX 转 FIT total_distance 用元数据`() {
        // 30.59km / 01:25:29（5129s）→ 均速 5.965 m/s
        val gpx = buildKeepGpx(
            listOf(doubleArrayOf(37.789926, 112.555769, 1743589482000.0, Double.NaN)),
            1743589482000L, "cycling", 30590.0, 5129L)
        val fit = GpxToFitConverter.convert(gpx.toByteArray(Charsets.UTF_8))
        val msgs = parseFit(fit)

        // session (global 18) field 9 = total_distance (cm)
        val session = msgs.first { it.global == 18 }
        val distCm = session.fields.getValue(9)
        assertEquals("total_distance 应等于 30590m", 3059000, distCm)
        // field 7/8 elapsed/timer (ms)
        assertEquals("时长应等于 5129s", 5129000, session.fields.getValue(7))
        // field 14 avg_speed (m/s*1000) → 30590/5129=5.9641 → 5964
        assertEquals("均速 5.965 m/s", 5964, session.fields.getValue(14))
    }

    @Test
    fun `多点多 GPX 不受元数据影响`() {
        // 正常轨迹即使带 extensions 也不覆盖（isSinglePoint=false）
        val gpx = """
            <gpx creator="jichiOB" version="1.1" xmlns="http://www.topografix.com/GPX/1/1" xmlns:jichi="http://jichi.ob">
              <trk><name>from keep - running</name><type>running</type><trkseg>
                <trkpt lat="36.278103" lon="120.2880"><time>2025-04-02T10:24:42Z</time></trkpt>
                <trkpt lat="36.278200" lon="120.2883"><time>2025-04-02T10:25:42Z</time></trkpt>
              </trkseg><extensions><jichi:distance>99999.0</jichi:distance><jichi:duration>9999</jichi:duration></extensions></trk>
            </gpx>
        """.trimIndent()
        val fit = GpxToFitConverter.convert(gpx.toByteArray(Charsets.UTF_8))
        val msgs = parseFit(fit)
        val session = msgs.first { it.global == 18 }
        val distM = (session.fields.getValue(9)) / 100.0
        // 两点相距约 31.5m，不受 99999 元数据影响
        assertTrue("实际距离 $distM 应为轨迹真实距离", distM < 100.0 && distM > 1.0)
        assertEquals("时长应来自轨迹时间差", 60000L, session.fields.getValue(7))
    }

    @Test
    fun `geoPoints AES 解码还原完整轨迹`() {
        // 用与 KeepApi 相同的密钥构造样本：JSONArray → gzip → AES-CBC → base64
        val json = """[{"latitude":36.2002173,"longitude":120.2780333,"unixTimestamp":1784807290000,"altitude":12.5},
                       {"latitude":36.2004507,"longitude":120.2785046,"unixTimestamp":1784807291000,"altitude":13.0}]"""
        val gz = gzip(json.toByteArray(Charsets.UTF_8))
        val key = "56fe59;82g:d873c".toByteArray(Charsets.UTF_8)
        val iv = "2346892432920300".toByteArray(Charsets.UTF_8)
        val cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding")
        cipher.init(javax.crypto.Cipher.ENCRYPT_MODE,
            javax.crypto.spec.SecretKeySpec(key, "AES"),
            javax.crypto.spec.IvParameterSpec(iv))
        val enc = java.util.Base64.getEncoder().encodeToString(cipher.doFinal(gz))

        val api = KeepApi()
        val m = KeepApi::class.java.getDeclaredMethod("decodeGeoPoints", String::class.java)
        m.isAccessible = true
        @Suppress("UNCHECKED_CAST")
        val pts = m.invoke(api, enc) as List<DoubleArray>
        assertEquals("应还原 2 个轨迹点", 2, pts.size)
        assertEquals(36.2002173, pts[0][0], 1e-6)
        assertEquals(120.2780333, pts[0][1], 1e-6)
        assertEquals(1784807290000.0, pts[0][2], 0.0)
        assertEquals(12.5, pts[0][3], 1e-6)
        assertEquals(36.2004507, pts[1][0], 1e-6)
    }

    private fun gzip(data: ByteArray): ByteArray {
        val bos = java.io.ByteArrayOutputStream()
        java.util.zip.GZIPOutputStream(bos).use { it.write(data) }
        return bos.toByteArray()
    }

    // ---- FIT 轻量解析（仅测试用）----
    private class FitMsg(val global: Int, val fields: MutableMap<Int, Long>)

    private fun parseFit(data: ByteArray): List<FitMsg> {
        val msgs = mutableListOf<FitMsg>()
        var i = 14 // FIT header 14 字节（含 header CRC），data 从 14 开始
        val globalOf = mutableMapOf<Int, Int>()   // local -> global
        val layoutOf = mutableMapOf<Int, List<IntArray>>() // local -> [fieldNum, size, baseType]
        while (i + 1 < data.size - 2) { // 尾部 2 字节 body crc
            val hdr = data[i].toInt() and 0xFF
            if (hdr and 0x80 != 0) { // compressed timestamp：2 字节
                i += 2
                continue
            }
            val isDef = hdr and 0x40 != 0
            val local = hdr and 0x0F
            if (isDef) {
                // definition: reserved, arch, globalNum, numFields, fields...
                val arch = data[i + 2].toInt() and 0xFF
                val global = ((data[i + 4].toInt() and 0xFF) shl 8) or (data[i + 3].toInt() and 0xFF)
                val numFields = data[i + 5].toInt() and 0xFF
                globalOf[local] = global
                val layout = mutableListOf<IntArray>()
                var p = i + 6
                var size = 0
                repeat(numFields) {
                    val fn = data[p].toInt() and 0xFF
                    val sz = data[p + 1].toInt() and 0xFF
                    val bt = data[p + 2].toInt() and 0xFF
                    layout.add(intArrayOf(fn, sz, bt))
                    size += sz
                    p += 3
                }
                layoutOf[local] = layout
                i += 6 + numFields * 3
            } else {
                // data message
                val layout = layoutOf[local] ?: break
                val msg = FitMsg(globalOf[local] ?: -1, mutableMapOf())
                var p = i + 1
                for (f in layout) {
                    val fn = f[0]; val sz = f[1]; val bt = f[2]
                    var v = 0L
                    var allFF = true
                    for (k in 0 until sz) {
                        val b = data[p + k].toInt() and 0xFF
                        if (b != 0xFF) allFF = false
                        v = v or ((b.toLong()) shl (8 * k))
                    }
                    if (!allFF) msg.fields[fn] = v
                    p += sz
                }
                msgs.add(msg)
                i = p
            }
        }
        return msgs
    }
}

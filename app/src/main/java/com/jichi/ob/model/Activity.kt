package com.jichi.ob.model

/**
 * 活动记录数据模型（六平台通用 v6.1.1）
 */
data class ActivityRecord(
    val id: String,
    val title: String,
    val startTime: String,
    val distance: Double,   // km
    val duration: Int,      // seconds
    val source: DataSource,
    var extra: String? = null  // 平台附加信息
)

enum class DataSource(val displayName: String, val shortName: String) {
    IGPSPORT("iGPSPORT", "igp"),
    XINGZHE("行者", "xz"),
    MAGENE("迈金", "mg"),
    BLACKBIRD("黑鸟单车", "bb"),
    BRYTON("百锐腾", "br"),
    OUTBASE("Outbase", "ob");

    companion object {
        fun sourcePlatforms(): List<DataSource> =
            listOf(IGPSPORT, XINGZHE, MAGENE, BLACKBIRD, BRYTON)
        fun fromShortName(s: String): DataSource? = entries.find { it.shortName == s }
    }
}

enum class FileKind(val ext: String, val displayName: String) {
    FIT("fit", "FIT"),
    GPX("gpx", "GPX"),
    UNKNOWN("", "未知")
}

/** 上传目标平台可用性 */
enum class UploadSupport(val available: Boolean, val note: String) {
    OUTBASE(true, ""),
    IGPSPORT(true, "官方第三方上传API"),
    XINGZHE(true, "官方开放API"),
    MAGENE(true, "顽鹿OTM WebView真实文件选择上传 (v6.2.3+)"),
    BLACKBIRD(true, ""),
    BRYTON(true, "");

    companion object {
        fun fromDataSource(ds: DataSource): UploadSupport = when (ds) {
            DataSource.OUTBASE -> OUTBASE
            DataSource.IGPSPORT -> IGPSPORT
            DataSource.XINGZHE -> XINGZHE
            DataSource.MAGENE -> MAGENE
            DataSource.BLACKBIRD -> BLACKBIRD
            DataSource.BRYTON -> BRYTON
        }
    }
}

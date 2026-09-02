package com.jichi.ob.model

/**
 * 活动记录数据模型（多平台通用 v6.5.0）
 * v6.5.0: 新增佳明(COM/CN)、高驰(中国/国际)、Wahoo
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
    OUTBASE("Outbase", "ob"),
    // v6.5.0 新增：佳明(国际/中国)、高驰(中国/国际)、Wahoo
    GARMIN_COM("佳明国际", "gm"),
    GARMIN_CN("佳明中国", "gcn"),
    COROS_CN("高驰中国", "cscn"),
    COROS_INT("高驰国际", "cs"),
    WAHOO("Wahoo", "wo");

    companion object {
        /** 可作为"来源(下载)"的平台 */
        fun sourcePlatforms(): List<DataSource> =
            listOf(IGPSPORT, XINGZHE, MAGENE, BLACKBIRD, BRYTON, GARMIN_COM, GARMIN_CN, COROS_CN, COROS_INT, WAHOO)
        fun fromShortName(s: String): DataSource? = entries.find { it.shortName == s }
    }
}

enum class FileKind(val ext: String, val displayName: String) {
    FIT("fit", "FIT"),
    GPX("gpx", "GPX"),
    UNKNOWN("", "未知")
}

/** 上传目标平台可用性（v6.5.0 新增佳明/高驰/Wahoo；Wahoo无上传API） */
enum class UploadSupport(val available: Boolean, val note: String) {
    OUTBASE(true, ""),
    IGPSPORT(true, "官方第三方上传API"),
    XINGZHE(true, "官方开放API"),
    MAGENE(false, "开发中"),
    BLACKBIRD(true, "官方上传通道，仅接受FIT"),
    BRYTON(false, "开发中"),
    GARMIN_COM(true, "需FIT设备伪装"),
    GARMIN_CN(true, "需FIT设备伪装"),
    COROS_CN(true, "OSS+fit/import"),
    COROS_INT(true, "OSS+fit/import"),
    WAHOO(true, "官方上传API");

    companion object {
        fun fromDataSource(ds: DataSource): UploadSupport = when (ds) {
            DataSource.OUTBASE -> OUTBASE
            DataSource.IGPSPORT -> IGPSPORT
            DataSource.XINGZHE -> XINGZHE
            DataSource.MAGENE -> MAGENE
            DataSource.BLACKBIRD -> BLACKBIRD
            DataSource.BRYTON -> BRYTON
            DataSource.GARMIN_COM -> GARMIN_COM
            DataSource.GARMIN_CN -> GARMIN_CN
            DataSource.COROS_CN -> COROS_CN
            DataSource.COROS_INT -> COROS_INT
            DataSource.WAHOO -> WAHOO
        }
    }
}

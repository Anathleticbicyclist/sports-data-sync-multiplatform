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
    // v7.8.0: 新增捷安特(纯API上传)；百锐腾保留（下载保持开发中）
    BRYTON("百锐腾", "br"),
    GIANT("捷安特", "gt"),
    OUTBASE("Outbase", "ob"),
    // v6.5.0 新增：佳明(国际/中国)、高驰(中国/国际)、Wahoo
    GARMIN_COM("佳明国际", "gm"),
    GARMIN_CN("佳明中国", "gcn"),
    COROS_CN("高驰中国", "cscn"),
    COROS_INT("高驰国际", "cs"),
    WAHOO("Wahoo", "wo"),
    // v7.8.4 新增：MyWhoosh / Zwift（仅下载数据源）
    MYWHOOSH("MyWhoosh", "mw"),
    ZWIFT("Zwift", "zf"),
    // v7.8.5 新增：Intervals.icu（仅上传目标）
    INTERVALS_ICU("Intervals.icu", "icu");

    companion object {
        /** 可作为"来源(下载)"的平台（百锐腾保留下载开发中；捷安特暂不支持下载不设置按钮） */
        fun sourcePlatforms(): List<DataSource> =
            listOf(IGPSPORT, XINGZHE, MAGENE, BLACKBIRD, BRYTON, GARMIN_COM, GARMIN_CN, COROS_CN, COROS_INT, WAHOO, MYWHOOSH, ZWIFT)
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
    MAGENE(true, "顽鹿OTM API直传"),
    BLACKBIRD(true, "官方上传通道，仅接受FIT"),
    BRYTON(false, "开发中"),
    GIANT(true, "官方上传API"),
    GARMIN_COM(true, "需FIT设备伪装"),
    GARMIN_CN(true, "需FIT设备伪装"),
    COROS_CN(true, "OSS+fit/import"),
    COROS_INT(true, "OSS+fit/import"),
    WAHOO(true, "官方上传API"),
    MYWHOOSH(false, "仅下载"),
    ZWIFT(false, "仅下载"),
    INTERVALS_ICU(true, "官方开放API");

    companion object {
        fun fromDataSource(ds: DataSource): UploadSupport = when (ds) {
            DataSource.OUTBASE -> OUTBASE
            DataSource.IGPSPORT -> IGPSPORT
            DataSource.XINGZHE -> XINGZHE
            DataSource.MAGENE -> MAGENE
            DataSource.BLACKBIRD -> BLACKBIRD
            DataSource.BRYTON -> BRYTON
            DataSource.GIANT -> GIANT
            DataSource.GARMIN_COM -> GARMIN_COM
            DataSource.GARMIN_CN -> GARMIN_CN
            DataSource.COROS_CN -> COROS_CN
            DataSource.COROS_INT -> COROS_INT
            DataSource.WAHOO -> WAHOO
            DataSource.MYWHOOSH -> MYWHOOSH
            DataSource.ZWIFT -> ZWIFT
            DataSource.INTERVALS_ICU -> INTERVALS_ICU
        }
    }
}

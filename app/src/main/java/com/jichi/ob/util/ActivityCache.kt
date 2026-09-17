package com.jichi.ob.util

import android.content.Context
import android.database.sqlite.SQLiteDatabase

/**
 * v8.2.0: 活动记录缓存库（SQLite）。
 *
 * 设计目标（防卡）：
 * 1. 所有方法均为同步阻塞式，调用方必须在 Dispatchers.IO 线程调用（UI 查询请包 withContext(Dispatchers.IO)），主线程零阻塞；
 * 2. 只缓存轻量元数据（id/时间/类型/距离/时长/文件名），GPX/FIT 大文件不落库（保持文件系统），库体积小、查询快；
 * 3. 批量写入走事务（100 条一批），避免逐条写盘；
 * 4. 建 (platform, start_time) 复合索引，日期范围检索毫秒级返回。
 *
 * 用途：同步拉取列表后落库 → 日期合并/检索历史记录走本地缓存（对齐佳速通"登录后缓存列表、需要时直接拉"的做法），
 * 同时作为"最后同步时间"记忆，后续迭代支持增量同步。
 */
class ActivityCache private constructor(context: Context) {

    /** 缓存条目（轻量元数据） */
    data class Entry(
        val id: String,           // 平台活动ID（平台内唯一）
        val platform: String,     // DataSource.shortName
        val startTime: Long,      // 活动开始时间（epoch ms）
        val type: String,         // 运动类型
        val title: String,        // 活动标题
        val distanceKm: Double,   // 里程（km）
        val durationSec: Int,     // 时长（秒）
        val filename: String      // 本地已下载文件名（未下载为空）
    )

    companion object {
        @Volatile private var instance: ActivityCache? = null
        fun get(context: Context): ActivityCache =
            instance ?: synchronized(this) {
                instance ?: ActivityCache(context.applicationContext).also { instance = it }
            }

        const val DB_NAME = "activity_cache.db"
        const val TABLE = "activity_cache"
        // 记录条数上限：单平台最多缓存 2000 条（防库无限膨胀；超出按时间删除最旧）
        const val MAX_ROWS_PER_PLATFORM = 2000
        /** v8.2.1: 静态容错解析时间字符串 → epoch ms（各平台直传 startTimeMs 用；失败返回 0） */
            fun parseStartTimeMs(s: String?): Long {
                if (s.isNullOrBlank()) return 0L
                val t = s.trim()
                    // 纯数字时间戳
                t.toLongOrNull()?.let {
                    return if (it > 1_000_000_000_000L) it          // ms
                    else if (it > 1_000_000_000L) it * 1000L        // s
                    else 0L
                }
                    // ISO8601 带时区：2025-09-10T20:33:42+08:00 / ...Z / 带毫秒（空格容错）
                try {
                    val iso = t.replace(" ", "T")
                    java.time.OffsetDateTime.parse(iso).toInstant().toEpochMilli().let { return it }
                } catch (_: Exception) {}
                    // ISO8601 无时区：按本地时区解析
                try {
                    val iso = t.replace(" ", "T")
                    java.time.LocalDateTime.parse(iso)
                        .atZone(java.time.ZoneId.systemDefault()).toInstant().toEpochMilli().let { return it }
                } catch (_: Exception) {}
                    // 旧格式 yyyy-MM-dd HH:mm:ss / yyyy/MM/dd HH:mm:ss / yyyyMMdd_HHmmss
                val norm = t.replace("/", "-").replace("T", " ")
                    .replace("Z", "").trim()
                val m = Regex("""(\d{4})[-](\d{1,2})[-](\d{1,2})[ _](\d{1,2})[:](\d{2})(?:[:](\d{2}))?""").find(norm)
                if (m != null) {
                    try {
                        val cal = java.util.Calendar.getInstance()
                        cal.clear()
                        cal.set(
                            m.groupValues[1].toInt(), m.groupValues[2].toInt() - 1, m.groupValues[3].toInt(),
                            m.groupValues[4].toInt(), m.groupValues[5].toInt(),
                            m.groupValues[6].ifBlank { "0" }.toInt()
                        )
                        return cal.timeInMillis
                    } catch (_: Exception) { return 0L }
                }
                    // yyyyMMdd（日期）
                val d = Regex("""^(\d{4})(\d{2})(\d{2})$""").find(t)
                if (d != null) {
                    try {
                        val cal = java.util.Calendar.getInstance()
                        cal.clear()
                        cal.set(d.groupValues[1].toInt(), d.groupValues[2].toInt() - 1, d.groupValues[3].toInt(), 0, 0, 0)
                        return cal.timeInMillis
                    } catch (_: Exception) { return 0L }
                }
                return 0L
            }
    }

        private val db: SQLiteDatabase

        init {
            db = context.openOrCreateDatabase(DB_NAME, Context.MODE_PRIVATE, null)
            db.execSQL(
                """CREATE TABLE IF NOT EXISTS $TABLE (
                    id TEXT NOT NULL,
                    platform TEXT NOT NULL,
                    start_time INTEGER NOT NULL,
                    type TEXT DEFAULT '',
                    title TEXT DEFAULT '',
                    distance_km REAL DEFAULT 0,
                    duration_sec INTEGER DEFAULT 0,
                    filename TEXT DEFAULT '',
                    PRIMARY KEY (platform, id)
                )"""
            )
                // 日期检索索引：(platform, start_time) 复合索引
            try {
                db.execSQL("CREATE INDEX IF NOT EXISTS idx_platform_time ON $TABLE (platform, start_time)")
            } catch (_: Exception) {}
        }

            /** 批量 upsert（单平台，事务；调用方须在 IO 线程） */
        fun upsertBatch(platform: String, entries: List<Entry>) {
            if (entries.isEmpty()) return
            db.beginTransaction()
            try {
                val stmt = db.compileStatement(
                    """INSERT OR REPLACE INTO $TABLE
                       (id, platform, start_time, type, title, distance_km, duration_sec, filename)
                       VALUES (?, ?, ?, ?, ?, ?, ?, ?)"""
                )
                for (e in entries) {
                    stmt.bindString(1, e.id)
                    stmt.bindString(2, platform)
                    stmt.bindLong(3, e.startTime)
                    stmt.bindString(4, e.type)
                    stmt.bindString(5, e.title)
                    stmt.bindDouble(6, e.distanceKm)
                    stmt.bindLong(7, e.durationSec.toLong())
                    stmt.bindString(8, e.filename)
                    stmt.executeInsert()
                }
                db.setTransactionSuccessful()
            } finally {
                db.endTransaction()
            }
                // 超上限：删除该平台最旧的超量记录（先查数再删，避免 SQLite LIMIT 不支持函数表达式）
            try {
                val cnt = count(platform)
                if (cnt > MAX_ROWS_PER_PLATFORM) {
                    db.delete(
                        TABLE,
                        "platform = ? AND id IN (SELECT id FROM $TABLE WHERE platform = ? ORDER BY start_time ASC LIMIT ?)",
                        arrayOf(platform, platform, (cnt - MAX_ROWS_PER_PLATFORM).toString())
                    )
                }
            } catch (_: Exception) {}
        }

            /** 单条 upsert（调用方须在 IO 线程） */
        fun upsert(platform: String, entry: Entry) = upsertBatch(platform, listOf(entry))

            /** 按日期范围查询（含端点；调用方须在 IO 线程） */
        fun queryByDateRange(platform: String, startMs: Long, endMs: Long): List<Entry> {
            val out = ArrayList<Entry>()
            db.query(
                TABLE,
                arrayOf("id", "platform", "start_time", "type", "title", "distance_km", "duration_sec", "filename"),
                "platform = ? AND start_time >= ? AND start_time <= ?",
                arrayOf(platform, startMs.toString(), endMs.toString()),
                null, null, "start_time DESC"
            ).use { c ->
                while (c.moveToNext()) out.add(readEntry(c))
            }
            return out
        }

            /** 按平台查全部（时间倒序；调用方须在 IO 线程） */
        fun queryByPlatform(platform: String): List<Entry> {
            val out = ArrayList<Entry>()
            db.query(
                TABLE,
                arrayOf("id", "platform", "start_time", "type", "title", "distance_km", "duration_sec", "filename"),
                "platform = ?", arrayOf(platform), null, null, "start_time DESC"
            ).use { c ->
                while (c.moveToNext()) out.add(readEntry(c))
            }
            return out
        }

            /** 全平台按日期范围查询（用于跨平台日期合并检索） */
        fun queryAllByDateRange(startMs: Long, endMs: Long): List<Entry> {
            val out = ArrayList<Entry>()
            db.query(
                TABLE,
                arrayOf("id", "platform", "start_time", "type", "title", "distance_km", "duration_sec", "filename"),
                "start_time >= ? AND start_time <= ?",
                arrayOf(startMs.toString(), endMs.toString()),
                null, null, "start_time DESC"
            ).use { c ->
                while (c.moveToNext()) out.add(readEntry(c))
            }
            return out
        }

            /** 平台最后同步时间（无记录返回 0） */
        fun getLastSyncTime(platform: String): Long {
            db.rawQuery(
                "SELECT MAX(start_time) FROM $TABLE WHERE platform = ?", arrayOf(platform)
            ).use { c ->
                return if (c.moveToFirst() && !c.isNull(0)) c.getLong(0) else 0L
            }
        }

            /** 平台记录数 */
        fun count(platform: String): Int {
            db.rawQuery("SELECT COUNT(*) FROM $TABLE WHERE platform = ?", arrayOf(platform)).use { c ->
                return if (c.moveToFirst()) c.getInt(0) else 0
            }
        }

            /** 清空平台（退出登录/切换账号时调用） */
        fun clearPlatform(platform: String) {
            db.delete(TABLE, "platform = ?", arrayOf(platform))
        }

            /** 更新某条记录的文件名（下载完成后回填） */
        fun setFilename(platform: String, id: String, filename: String) {
            db.execSQL(
                "UPDATE $TABLE SET filename = ? WHERE platform = ? AND id = ?",
                arrayOf(filename, platform, id)
            )
        }
    /** 容错解析各平台 startTime 字符串 → epoch ms（委托静态实现，供 MainActivity 兜底） */
    fun parseStartTimeMs(s: String?): Long = Companion.parseStartTimeMs(s)

    /** v8.2.1: 解析平台 ISO8601 时间串 → 毫秒（供各平台 fetch 时直传 startTimeMs） */
    fun parseIsoMs(s: String?): Long = parseStartTimeMs(s)

    /** 删除过期记录（保留最近 keepDays 天，默认 365） */
    fun prune(platform: String, keepDays: Int = 365) {
        val cutoff = System.currentTimeMillis() - keepDays * 24 * 3600 * 1000L
        db.delete(TABLE, "platform = ? AND start_time < ?", arrayOf(platform, cutoff.toString()))
    }

    private fun readEntry(c: android.database.Cursor): Entry = Entry(
        id = c.getString(0),
        platform = c.getString(1),
        startTime = c.getLong(2),
        type = c.getString(3),
        title = c.getString(4),
        distanceKm = c.getDouble(5),
        durationSec = c.getInt(6),
        filename = c.getString(7)
    )
}

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
        val filename: String,     // 本地已下载文件名（未下载为空）
        val extra: String = ""    // v8.2.3.10: 平台下载凭证（igp下载URL/Keep run_id/高驰sportType等），单点下载用
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
        // v8.2.3: 平台统计表 / 平台日志表（登录页平台卡统计 + 详情弹窗平台日志）
        const val TABLE_STATS = "sync_stats"
        const val TABLE_PLOGS = "platform_logs"
        const val MAX_PLOGS_PER_PLATFORM = 200
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
                    extra TEXT DEFAULT '',
                    PRIMARY KEY (platform, id)
                )"""
            )
                // v8.2.3.10: 旧库补 extra 列（单点下载凭证）
            try {
                db.execSQL("ALTER TABLE $TABLE ADD COLUMN extra TEXT DEFAULT ''")
            } catch (_: Exception) {}
                // 日期检索索引：(platform, start_time) 复合索引
            try {
                db.execSQL("CREATE INDEX IF NOT EXISTS idx_platform_time ON $TABLE (platform, start_time)")
            } catch (_: Exception) {}
                // v8.2.3: 平台统计表（单行/平台，累计 ok/skip/fail + 最后同步时间）
            db.execSQL(
                """CREATE TABLE IF NOT EXISTS $TABLE_STATS (
                    platform TEXT PRIMARY KEY,
                    ok INTEGER DEFAULT 0,
                    skip INTEGER DEFAULT 0,
                    fail INTEGER DEFAULT 0,
                    last_sync INTEGER DEFAULT 0
                )"""
            )
                // v8.2.3: 平台日志表（时间倒序，每平台保留最近 200 条）
            db.execSQL(
                """CREATE TABLE IF NOT EXISTS $TABLE_PLOGS (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    platform TEXT NOT NULL,
                    time INTEGER NOT NULL,
                    type TEXT DEFAULT '',
                    msg TEXT DEFAULT ''
                )"""
            )
            try {
                db.execSQL("CREATE INDEX IF NOT EXISTS idx_plogs_platform ON $TABLE_PLOGS (platform, id)")
            } catch (_: Exception) {}
        }

        // ===== v8.2.3: 平台统计 =====
        /** 平台统计（ok/skip/fail 累计 + 最后同步时间）；无记录返回全 0 */
        data class PlatformStat(val ok: Int, val skip: Int, val fail: Int, val lastSync: Long)

        /** 平台统计累计 + 最后同步时间更新（IO 线程） */
        fun addPlatformStat(platform: String, okDelta: Int = 0, skipDelta: Int = 0, failDelta: Int = 0, lastSyncMs: Long = 0L) {
            if (okDelta == 0 && skipDelta == 0 && failDelta == 0 && lastSyncMs == 0L) return
            db.beginTransaction()
            try {
                db.execSQL(
                    """INSERT INTO $TABLE_STATS (platform, ok, skip, fail, last_sync)
                       VALUES (?, ?, ?, ?, ?)
                       ON CONFLICT(platform) DO UPDATE SET
                         ok = ok + ?, skip = skip + ?, fail = fail + ?,
                         last_sync = CASE WHEN ? > 0 THEN ? ELSE last_sync END""",
                    arrayOf(
                        platform, okDelta.toString(), skipDelta.toString(), failDelta.toString(), lastSyncMs.toString(),
                        okDelta.toString(), skipDelta.toString(), failDelta.toString(),
                        lastSyncMs.toString(), lastSyncMs.toString()
                    )
                )
                db.setTransactionSuccessful()
            } finally {
                db.endTransaction()
            }
        }

        /** 读取平台统计（IO 线程）；无记录返回全 0 */
        fun getPlatformStat(platform: String): PlatformStat {
            db.rawQuery(
                "SELECT ok, skip, fail, last_sync FROM $TABLE_STATS WHERE platform = ?", arrayOf(platform)
            ).use { c ->
                return if (c.moveToFirst())
                    PlatformStat(c.getInt(0), c.getInt(1), c.getInt(2), c.getLong(3))
                else PlatformStat(0, 0, 0, 0L)
            }
        }

        // ===== v8.2.3: 平台日志 =====
        /** 追加一条平台日志（IO 线程；type: 导入/导出/错误） */
        fun addPlatformLog(platform: String, type: String, msg: String) {
            db.execSQL(
                "INSERT INTO $TABLE_PLOGS (platform, time, type, msg) VALUES (?, ?, ?, ?)",
                arrayOf(platform, System.currentTimeMillis().toString(), type, msg)
            )
            try {
                val cnt = db.rawQuery(
                    "SELECT COUNT(*) FROM $TABLE_PLOGS WHERE platform = ?", arrayOf(platform)
                ).use { c -> if (c.moveToFirst()) c.getInt(0) else 0 }
                if (cnt > MAX_PLOGS_PER_PLATFORM) {
                    db.delete(
                        TABLE_PLOGS,
                        "platform = ? AND id NOT IN (SELECT id FROM $TABLE_PLOGS WHERE platform = ? ORDER BY id DESC LIMIT ?)",
                        arrayOf(platform, platform, MAX_PLOGS_PER_PLATFORM.toString())
                    )
                }
            } catch (_: Exception) {}
        }

        /** 读取平台日志（时间倒序，默认最近 10 条；IO 线程） */
        fun getPlatformLogs(platform: String, limit: Int = 10): List<PlatformLog> {
            val out = ArrayList<PlatformLog>()
            db.query(
                TABLE_PLOGS,
                arrayOf("time", "type", "msg"),
                "platform = ?", arrayOf(platform), null, null,
                "id DESC", limit.coerceIn(1, MAX_PLOGS_PER_PLATFORM).toString()
            ).use { c ->
                while (c.moveToNext()) out.add(PlatformLog(c.getLong(0), c.getString(1), c.getString(2)))
            }
            return out
        }

        data class PlatformLog(val time: Long, val type: String, val msg: String)

            /** 批量 upsert（单平台，事务；调用方须在 IO 线程） */
        fun upsertBatch(platform: String, entries: List<Entry>) {
            if (entries.isEmpty()) return
            db.beginTransaction()
            try {
                val stmt = db.compileStatement(
                    """INSERT OR REPLACE INTO $TABLE
                       (id, platform, start_time, type, title, distance_km, duration_sec, filename, extra)
                       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"""
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
                    stmt.bindString(9, e.extra)
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
                arrayOf("id", "platform", "start_time", "type", "title", "distance_km", "duration_sec", "filename", "extra"),
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
                arrayOf("id", "platform", "start_time", "type", "title", "distance_km", "duration_sec", "filename", "extra"),
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
                arrayOf("id", "platform", "start_time", "type", "title", "distance_km", "duration_sec", "filename", "extra"),
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

            /** v8.2.6: 平台缓存中最新运动记录的时间戳（同步任务"新数据判定"核心：拉取列表后仅处理 startTime > 该值的记录） */
        fun getLastStartTimeMs(platform: String): Long {
            db.rawQuery(
                "SELECT MAX(start_time) FROM $TABLE WHERE platform = ? AND start_time > 0", arrayOf(platform)
            ).use { c ->
                return if (c.moveToFirst() && !c.isNull(0)) c.getLong(0) else 0L
            }
        }

            /** v8.2.6: 批量判重——返回给定 id 中已存在缓存的子集（比全量载入 queryByPlatform 高效，供同步任务增量过滤） */
        fun existsIds(platform: String, ids: Collection<String>): Set<String> {
            if (ids.isEmpty()) return emptySet()
            val out = HashSet<String>()
            val chunks = ids.chunked(500)
            for (chunk in chunks) {
                val placeholders = chunk.joinToString(",") { "?" }
                db.rawQuery(
                    "SELECT id FROM $TABLE WHERE platform = ? AND id IN ($placeholders)",
                    arrayOf(platform) + chunk.toTypedArray()
                ).use { c ->
                    while (c.moveToNext()) out.add(c.getString(0))
                }
            }
            return out
        }

            /** v8.2.6: 某时间点之后的新记录（数据合并/增量同步：来源平台拉取后按时间戳筛"新数据"） */
        fun queryNewSince(platform: String, sinceMs: Long, limit: Int = 500): List<Entry> {
            val out = ArrayList<Entry>()
            db.query(
                TABLE,
                arrayOf("id", "platform", "start_time", "type", "title", "distance_km", "duration_sec", "filename", "extra"),
                "platform = ? AND start_time > ?",
                arrayOf(platform, sinceMs.toString()),
                null, null, "start_time ASC", limit.toString()
            ).use { c ->
                while (c.moveToNext()) out.add(readEntry(c))
            }
            return out
        }

            /** v8.2.6: 时间缺失（start_time<=0，1970 占位）的记录——igp 等平台 FIT 回填修复用 */
        fun queryBadTime(platform: String, limit: Int = 100): List<Entry> {
            val out = ArrayList<Entry>()
            db.query(
                TABLE,
                arrayOf("id", "platform", "start_time", "type", "title", "distance_km", "duration_sec", "filename", "extra"),
                "platform = ? AND start_time <= 0",
                arrayOf(platform),
                null, null, "rowid ASC", limit.toString()
            ).use { c ->
                while (c.moveToNext()) out.add(readEntry(c))
            }
            return out
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

            /** v8.2.3.4: 删除单条记录（记录中心详情弹窗"删除"） */
        fun deleteEntry(platform: String, id: String) {
            db.delete(TABLE, "platform = ? AND id = ?", arrayOf(platform, id))
        }

            /** 更新某条记录的文件名（下载完成后回填） */
        fun setFilename(platform: String, id: String, filename: String) {
            db.execSQL(
                "UPDATE $TABLE SET filename = ? WHERE platform = ? AND id = ?",
                arrayOf(filename, platform, id)
            )
        }

            /** v8.2.6: 回填单条记录时间（igp 等平台 FIT 下载解析后调用；startTimeMs<=0 时忽略） */
        fun setStartTime(platform: String, id: String, startTimeMs: Long) {
            if (startTimeMs <= 0) return
            db.execSQL(
                "UPDATE $TABLE SET start_time = ? WHERE platform = ? AND id = ?",
                arrayOf(startTimeMs.toString(), platform, id)
            )
        }
    /** 容错解析各平台 startTime 字符串 → epoch ms（委托静态实现，供 MainActivity 兜底） */
    fun parseStartTimeMs(s: String?): Long = Companion.parseStartTimeMs(s)

    /** v8.2.1: 解析平台 ISO8601 时间串 → 毫秒（供各平台 fetch 时直传 startTimeMs） */
    fun parseIsoMs(s: String?): Long = parseStartTimeMs(s)

    /** 删除过期记录（保留最近 keepDays 天，默认 365）
     *  v8.2.3.10: 仅删「时间有效且超龄」的记录——start_time<=0 表示时间未解析，
     *  一旦删除将造成"拉取完成但记录中心为空"的假象，必须保留待后续修复 */
    fun prune(platform: String, keepDays: Int = 365) {
        val cutoff = System.currentTimeMillis() - keepDays * 24 * 3600 * 1000L
        db.delete(TABLE, "platform = ? AND start_time > 0 AND start_time < ?", arrayOf(platform, cutoff.toString()))
    }

    private fun readEntry(c: android.database.Cursor): Entry = Entry(
        id = c.getString(0),
        platform = c.getString(1),
        startTime = c.getLong(2),
        type = c.getString(3),
        title = c.getString(4),
        distanceKm = c.getDouble(5),
        durationSec = c.getInt(6),
        filename = c.getString(7),
        extra = if (c.columnCount > 8) c.getString(8) ?: "" else ""
    )
}

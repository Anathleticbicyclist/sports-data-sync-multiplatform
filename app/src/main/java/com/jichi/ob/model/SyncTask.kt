package com.jichi.ob.model

import org.json.JSONArray
import org.json.JSONObject

/**
 * v8.2.2: 任务化同步 —— 同步任务数据模型
 * 一个任务 = 多来源 × 多目标 的同步链路组合，可自动调度。
 * 上传去重记忆与批量同步共用（syncKey=source_id_to_target），防重复上传。
 */
data class SyncTask(
    val id: String,                 // UUID
    val name: String,               // 任务名
    val sources: List<String>,      // 来源 shortName 列表
    val targets: List<String>,      // 目标 shortName 列表
    val count: Int = 200,           // 拉取数量（与批量默认一致）
    val skip: Int = 0,              // 跳过前 N 条
    val incremental: Boolean = true,// 增量：跳过缓存已有记录；false=全量
    val force: Boolean = false,     // 忽略上传记忆强制重传
    val coordinateConvert: Boolean = true, // v8.2.3.1: 迈金坐标转换（GCJ-02→WGS84），默认开
    val autoSync: Boolean = false,  // 任务级自动同步
    val autoIntervalSec: Int = 900, // 自动间隔（秒，≥15min）
    val wellness: Boolean = false,  // v8.3.5: 同步健康数据（步数/睡眠/HRV/压力，需佳明↔佳明）
    val enabled: Boolean = true,    // 启用
    val lastRunTime: Long = 0L,     // 上次运行时间
    val lastRunOk: Int = 0,
    val lastRunSkip: Int = 0,
    val lastRunFail: Int = 0,
    val lastRunDetail: String = "",  // v8.4.4: 本次各平台明细 JSON
    val recentRuns: List<String> = emptyList()  // v8.4.8: 最近5次运行记录 JSON 数组 [{time,ok,skip,fail,detail}]
) {
    fun toJson(): JSONObject = JSONObject().apply {
        put("id", id)
        put("name", name)
        put("sources", JSONArray(sources))
        put("targets", JSONArray(targets))
        put("count", count)
        put("skip", skip)
        put("incremental", incremental)
        put("force", force)
        put("coordinateConvert", coordinateConvert)
        put("autoSync", autoSync)
        put("autoIntervalSec", autoIntervalSec)
        put("wellness", wellness)
        put("enabled", enabled)
        put("lastRunTime", lastRunTime)
        put("lastRunOk", lastRunOk)
        put("lastRunSkip", lastRunSkip)
        put("lastRunFail", lastRunFail)
        put("lastRunDetail", lastRunDetail)
        put("recentRuns", JSONArray(recentRuns))
    }

    fun copyRun(ok: Int, skip: Int, fail: Int, detail: String = ""): SyncTask {
        val now = System.currentTimeMillis()
        val entry = JSONObject().apply {
            put("time", now); put("ok", ok); put("skip", skip); put("fail", fail); put("detail", detail)
        }.toString()
        val newHistory = (listOf(entry) + recentRuns).take(5)  // 保留最近5次
        return copy(
            lastRunTime = now,
            lastRunOk = ok, lastRunSkip = skip, lastRunFail = fail,
            lastRunDetail = detail,
            recentRuns = newHistory
        )
    }

    companion object {
        fun fromJson(o: JSONObject): SyncTask {
            fun arr(name: String): List<String> {
                val a = o.optJSONArray(name) ?: return emptyList()
                return (0 until a.length()).mapNotNull { a.optString(it).takeIf { s -> s.isNotBlank() } }
            }
            return SyncTask(
                id = o.optString("id", ""),
                name = o.optString("name", "未命名任务"),
                sources = arr("sources"),
                targets = arr("targets"),
                count = o.optInt("count", 200),
                skip = o.optInt("skip", 0),
                incremental = o.optBoolean("incremental", true),
                force = o.optBoolean("force", false),
                coordinateConvert = o.optBoolean("coordinateConvert", true),
                autoSync = o.optBoolean("autoSync", false),
                autoIntervalSec = o.optInt("autoIntervalSec", 900),
                wellness = o.optBoolean("wellness", false),
                enabled = o.optBoolean("enabled", true),
                lastRunTime = o.optLong("lastRunTime", 0L),
                lastRunOk = o.optInt("lastRunOk", 0),
                lastRunSkip = o.optInt("lastRunSkip", 0),
                lastRunFail = o.optInt("lastRunFail", 0),
                lastRunDetail = o.optString("lastRunDetail", ""),
                recentRuns = o.optJSONArray("recentRuns")?.let { a ->
                    (0 until a.length()).mapNotNull { a.optString(it) }
                } ?: emptyList()
            )
        }
    }
}

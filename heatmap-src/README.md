# 热力图功能源码（v9.3.1）

开发体验功能：设置页「轨迹合并」与「实验室」之间的热力图入口。

## 组成（6 个 Java 类 → smali_classes2）

| 类 | 职责 |
| --- | --- |
| HeatmapActivity | 主界面：扫描本地缓存目录、加载轨迹、渲染控制（透明度/σ/深浅色/重新扫描/平台下载引导）、生成线程 |
| HeatmapView | Canvas 自研渲染：Web Mercator 投影 + 密度累加 + 高斯 KDE + hot 色带；瓦片底图（getCachedTile 同步读缓存 / requestTile 后台线程下载） |
| HeatmapEngine | 核心算法：瓦片索引、密度栅格、阈值截断、直方图均衡化、高斯核卷积、色带映射 |
| TrackFileParser | FIT/GPX/TCX 解析（FIT: position_lat=field 0 / position_long=field 1，data record 按头推进） |
| HeatmapTileLoader | 开源无 key 瓦片源（OpenFreeMap liberty + cartocdn），本地缓存，失败降级 |
| HeatmapEntryClick | 入口点击：体验码校验（TrialLicense.isAllowed）+ 弹窗 + startActivity |

## 数据源
- 方式A：本地缓存文件夹 `/storage/emulated/0/Download/鸡翅幸哲迈进OB`（.fit/.gpx/.tcx）全量叠加，页面常驻提示「仅叠加本地缓存过的文件」
- 方式B：平台选数量（50/100/全部）→ 引导跳下载中心，返回自动刷新叠加

## 瓦片底图
按轨迹包围盒取 zoom → OpenFreeMap liberty 深/浅色源 → 本地缓存 `getExternalFilesDir(null)/heatmap_tiles/z/x/y.png` → 失败降级深色纯底。

## 已知边界
- 方式B 本期为引导跳下载中心，非直连下载引擎
- 瓦片底图需联网，无网时深色纯底仍可看热度

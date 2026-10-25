package com.jichi.ob.heatmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 瓦片底图加载器（v9.3.1 修复版）：
 * - getCachedTile：只读本地缓存，绝不联网（供 onDraw 主线程调用）
 * - requestTile：缺瓦片时入队，后台线程下载+保存，完成后回调（postInvalidate）
 * 修复：原版 getTile 在 onDraw 主线程同步下载瓦片（每张最长 6s×2 源），
 * 首次进入几十张瓦片顺序联网 → UI 冻结 ANR，表现为"点击热力图无法进入"。
 */
public class HeatmapTileLoader {

    private final Context ctx;
    private final File cacheDir;
    private static final String[] DARK_SOURCES = {
            "https://tiles.openfreemap.org/styles/liberty/%d/%d/%d.png",
            "https://basemaps.cartocdn.com/dark_all/%d/%d/%d.png"
    };
    private static final String[] LIGHT_SOURCES = {
            "https://tiles.openfreemap.org/styles/liberty/%d/%d/%d.png",
            "https://basemaps.cartocdn.com/light_all/%d/%d/%d.png"
    };

    private final List<Runnable> queue = new ArrayList<Runnable>();
    private final Set<String> failed = new HashSet<String>();
    private Thread worker;

    public HeatmapTileLoader(Context c) {
        ctx = c.getApplicationContext();
        File root = new File(cacheRoot(), "heatmap_tiles");
        cacheDir = root;
        if (!cacheDir.exists()) cacheDir.mkdirs();
    }

    private String cacheRoot() {
        return ctx.getExternalFilesDir(null) != null
                ? ctx.getExternalFilesDir(null).getAbsolutePath()
                : ctx.getFilesDir().getAbsolutePath();
    }

    /** 主线程安全：只读缓存，无网络；无缓存返回 null */
    public Bitmap getCachedTile(int z, int x, int y, boolean dark) {
        File f = tileFile(z, x, y);
        if (f.exists()) {
            try {
                Bitmap b = BitmapFactory.decodeFile(f.getAbsolutePath());
                if (b != null) return b;
            } catch (Exception e) {
                // 解码失败按缺失处理
            }
        }
        return null;
    }

    /** 缺瓦片异步下载：入队后台下载，完成后回调 done（done 需可跨线程调用） */
    public void requestTile(final int z, final int x, final int y, final boolean dark, final Runnable done) {
        final String key = z + "/" + x + "/" + y + "/" + (dark ? "d" : "l");
        synchronized (queue) {
            if (failed.contains(key)) return;
            if (queueContains(key)) return;
            queue.add(new TileTask(key, new Runnable() {
                public void run() {
                    Bitmap b = download(z, x, y, dark);
                    if (b != null) {
                        save(tileFile(z, x, y), b);
                        if (done != null) done.run();
                    } else {
                        synchronized (queue) {
                            failed.add(key);
                        }
                    }
                }
            }));
            if (worker == null || !worker.isAlive()) {
                worker = new Thread(new Runnable() {
                    public void run() {
                        while (true) {
                            Runnable task;
                            synchronized (queue) {
                                if (queue.isEmpty()) {
                                    worker = null;
                                    return;
                                }
                                task = queue.remove(0);
                            }
                            try {
                                task.run();
                            } catch (Exception e) {
                                // 单瓦片失败不阻塞队列
                            }
                        }
                    }
                });
                worker.setDaemon(true);
                worker.start();
            }
        }
    }

    private boolean queueContains(String key) {
        for (Runnable r : queue) {
            if (r instanceof TileTask && ((TileTask) r).key.equals(key)) return true;
        }
        return false;
    }

    private static class TileTask implements Runnable {
        final String key;
        final Runnable body;
        TileTask(String key, Runnable body) { this.key = key; this.body = body; }
        public void run() { body.run(); }
    }

    private File tileFile(int z, int x, int y) {
        return new File(cacheDir, z + "/" + x + "/" + y + ".png");
    }

    private Bitmap download(int z, int x, int y, boolean dark) {
        String[] srcs = dark ? DARK_SOURCES : LIGHT_SOURCES;
        for (String tmpl : srcs) {
            try {
                URL u = new URL(String.format(tmpl, z, x, y));
                HttpURLConnection conn = (HttpURLConnection) u.openConnection();
                conn.setConnectTimeout(6000);
                conn.setReadTimeout(6000);
                conn.setRequestProperty("User-Agent", "JichiOB-Dev/9.3.1");
                conn.setRequestProperty("Accept", "image/png");
                int code = conn.getResponseCode();
                if (code == 200) {
                    InputStream in = conn.getInputStream();
                    try {
                        Bitmap b = BitmapFactory.decodeStream(in);
                        if (b != null) return b;
                    } finally {
                        in.close();
                    }
                }
                conn.disconnect();
            } catch (Exception e) {
                // 换下一个源
            }
        }
        return null;
    }

    private void save(File f, Bitmap b) {
        try {
            f.getParentFile().mkdirs();
            FileOutputStream out = new FileOutputStream(f);
            b.compress(Bitmap.CompressFormat.PNG, 100, out);
            out.close();
        } catch (Exception e) {
            // 缓存失败不影响显示
        }
    }
}

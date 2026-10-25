package com.jichi.ob.heatmap;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * 热力图功能主界面（v9.3.1）
 * 数据源A：扫描本地缓存文件夹 /storage/emulated/0/Download/鸡翅幸哲迈进OB（.fit/.gpx/.tcx）
 * 数据源B：引导到 App 下载中心下载平台数据，返回自动刷新叠加
 * 瓦片底图：按轨迹包围盒从 OpenFreeMap 获取 + 本地缓存，失败降级深色纯底
 */
public class HeatmapActivity extends Activity {

    private HeatmapView mapView;
    private TextView tipView, statusView, emptyView;
    private LinearLayout controlRow, emptyLayout;
    private ProgressBar loading;
    private SeekBar alphaBar, sigmaBar;
    private Button btnDark, btnLight, btnScan, btnDownload;
    private Handler main = new Handler(Looper.getMainLooper());
    private volatile boolean generating = false;

    private static final String[] PLATFORMS = {
            "行者", "迈金", "佳明", "iGPSPORT", "高驰", "Wahoo", "百锐腾", "黑鸟单车",
            "Keep", "咕咚", "Zepp", "捷安特", "Outbase", "Suunto", "Komoot", "Strava"
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // v9.3.1-fix2：buildUi 包 Throwable，任何初始化异常 Toast 显示真实原因（含 VerifyError）
        try {
            buildUi();
        } catch (Throwable e) {
            try {
                Toast.makeText(this, "热力图初始化失败: " + e, Toast.LENGTH_LONG).show();
            } catch (Throwable e2) {
                // 兜底
            }
            finish();
            return;
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        // 返回本页自动重新扫描（平台下载数据回到文件夹后生效）
        try {
            scanLocal();
        } catch (Throwable e) {
            try {
                Toast.makeText(this, "热力图扫描失败: " + e, Toast.LENGTH_LONG).show();
            } catch (Throwable e2) {
                // 兜底
            }
        }
    }

    private void buildUi() {
        int pad = dp(12);
        int dark = isDarkTheme() ? 0xFF17191E : 0xFFF5F6F8;
        int txt = isDarkTheme() ? 0xFFECEFF3 : 0xFF2B2F36;

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(dark);
        root.setPadding(pad, dp(8), pad, pad);

        // 顶部栏
        LinearLayout top = new LinearLayout(this);
        top.setOrientation(LinearLayout.HORIZONTAL);
        top.setGravity(Gravity.CENTER_VERTICAL);
        TextView back = new TextView(this);
        back.setText("‹ 返回");
        back.setTextSize(16);
        back.setTypeface(Typeface.DEFAULT_BOLD);
        back.setTextColor(0xFFE8590C);
        back.setPadding(0, dp(8), dp(16), dp(8));
        back.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { finish(); }
        });
        TextView title = new TextView(this);
        title.setText("热力图");
        title.setTextSize(18);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(txt);
        TextView ver = new TextView(this);
        ver.setText("  仅叠加本地缓存过的轨迹文件");
        ver.setTextSize(12);
        ver.setTextColor(0xFF8A8F98);
        ver.setGravity(Gravity.END);
        top.addView(back);
        top.addView(title);
        top.addView(ver, new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        root.addView(top);

        // 提示条
        tipView = new TextView(this);
        tipView.setText("⚠ 热力图仅叠加本地缓存过的轨迹文件（/storage/emulated/0/Download/鸡翅幸哲迈进OB），如需更多数据请先同步/下载到文件夹");
        tipView.setTextSize(12);
        tipView.setTextColor(0xFFB45309);
        tipView.setBackgroundColor(0x1AFFA94D);
        tipView.setPadding(dp(10), dp(8), dp(10), dp(8));
        LinearLayout.LayoutParams tipLp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        tipLp.topMargin = dp(8);
        root.addView(tipView, tipLp);

        // 地图区（含空态覆盖层 + loading）
        FrameLayout mapFrame = new FrameLayout(this);
        mapFrame.setBackgroundColor(isDarkTheme() ? 0xFF0C0E12 : 0xFFE8EAEE);

        mapView = new HeatmapView(this);
        mapFrame.addView(mapView, new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT));

        emptyLayout = new LinearLayout(this);
        emptyLayout.setOrientation(LinearLayout.VERTICAL);
        emptyLayout.setGravity(Gravity.CENTER);
        emptyLayout.setBackgroundColor(dark);
        emptyView = new TextView(this);
        emptyView.setText("📂 文件夹暂无轨迹文件\n\n请先到 App 下载中心下载轨迹数据到缓存文件夹\n（Download/鸡翅幸哲迈进OB），返回后自动生成热力图");
        emptyView.setTextSize(14);
        emptyView.setGravity(Gravity.CENTER);
        emptyView.setTextColor(0xFF8A8F98);
        emptyView.setPadding(dp(20), 0, dp(20), dp(16));
        emptyLayout.addView(emptyView);
        Button goSync = new Button(this);
        goSync.setText("去同步数据到文件夹");
        goSync.setTextColor(0xFFFFFFFF);
        goSync.setBackgroundColor(0xFFE8590C);
        goSync.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { openDownloadCenter(); }
        });
        emptyLayout.addView(goSync);
        FrameLayout.LayoutParams emptyLp = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT);
        emptyLayout.setVisibility(View.GONE);
        mapFrame.addView(emptyLayout, emptyLp);

        loading = new ProgressBar(this);
        FrameLayout.LayoutParams loadLp = new FrameLayout.LayoutParams(dp(48), dp(48), Gravity.CENTER);
        loading.setVisibility(View.GONE);
        mapFrame.addView(loading, loadLp);

        LinearLayout.LayoutParams mapLp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f);
        mapLp.topMargin = dp(8);
        root.addView(mapFrame, mapLp);

        // 状态行
        statusView = new TextView(this);
        statusView.setText("未扫描");
        statusView.setTextSize(12);
        statusView.setTextColor(0xFF8A8F98);
        statusView.setPadding(dp(2), dp(6), dp(2), dp(4));
        root.addView(statusView);

        // 控制行1：透明度 / 平滑度
        LinearLayout row1 = new LinearLayout(this);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.setGravity(Gravity.CENTER_VERTICAL);
        TextView la = new TextView(this);
        la.setText("透明度");
        la.setTextSize(12);
        la.setTextColor(txt);
        alphaBar = new SeekBar(this);
        alphaBar.setMax(100);
        alphaBar.setProgress(90);
        alphaBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar sb, int p, boolean f) { mapView.setHeatAlpha(p / 100f); }
            public void onStartTrackingTouch(SeekBar sb) {}
            public void onStopTrackingTouch(SeekBar sb) {}
        });
        TextView ls = new TextView(this);
        ls.setText("平滑度");
        ls.setTextSize(12);
        ls.setTextColor(txt);
        sigmaBar = new SeekBar(this);
        sigmaBar.setMax(8);
        sigmaBar.setProgress(2);
        sigmaBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar sb, int p, boolean f) { regenerate(p + 1); }
            public void onStartTrackingTouch(SeekBar sb) {}
            public void onStopTrackingTouch(SeekBar sb) {}
        });
        row1.addView(la);
        row1.addView(alphaBar, new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        row1.addView(ls);
        row1.addView(sigmaBar, new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        root.addView(row1);

        // 控制行2：深浅底 / 扫描 / 平台下载
        LinearLayout row2 = new LinearLayout(this);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.setGravity(Gravity.CENTER_VERTICAL);
        row2.setPadding(0, dp(6), 0, 0);
        btnDark = mkButton("深色底", isDarkTheme());
        btnDark.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                setDark(true);
                btnDark.setBackgroundColor(0xFFE8590C);
                btnLight.setBackgroundColor(0xFF3A3D44);
                btnDark.setTextColor(0xFFFFFFFF);
                btnLight.setTextColor(0xFFECEFF3);
            }
        });
        btnLight = mkButton("浅色底", !isDarkTheme());
        btnLight.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                setDark(false);
                btnLight.setBackgroundColor(0xFFE8590C);
                btnDark.setBackgroundColor(0xFF3A3D44);
                btnLight.setTextColor(0xFFFFFFFF);
                btnDark.setTextColor(0xFFECEFF3);
            }
        });
        btnScan = mkButton("扫描本地轨迹", false);
        btnScan.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { scanLocal(); }
        });
        btnDownload = mkButton("平台下载", false);
        btnDownload.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { showDownloadDialog(); }
        });
        row2.addView(btnDark);
        row2.addView(btnLight);
        row2.addView(btnScan, new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        row2.addView(btnDownload, new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        root.addView(row2);

        setContentView(root);
    }

    private Button mkButton(String text, boolean active) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextSize(13);
        b.setAllCaps(false);
        b.setPadding(dp(10), 0, dp(10), 0);
        if (active) {
            b.setBackgroundColor(0xFFE8590C);
            b.setTextColor(0xFFFFFFFF);
        } else {
            b.setBackgroundColor(isDarkTheme() ? 0xFF3A3D44 : 0xFFE3E5EA);
            b.setTextColor(isDarkTheme() ? 0xFFECEFF3 : 0xFF2B2F36);
        }
        return b;
    }

    private boolean isDarkTheme() {
        return (getResources().getConfiguration().uiMode
                & android.content.res.Configuration.UI_MODE_NIGHT_MASK)
                == android.content.res.Configuration.UI_MODE_NIGHT_YES;
    }

    private void setDark(boolean d) {
        mapView.setDark(d);
        invalidateUiColors();
    }

    private void invalidateUiColors() {
        // 深浅切换时同步控件配色（轻量处理）
    }

    private void openDownloadCenter() {
        try {
            Class<?> c = Class.forName("com.jichi.ob.MainActivity");
            startActivity(new Intent(this, c));
        } catch (Exception e) {
            Toast.makeText(this, "无法打开下载中心", Toast.LENGTH_SHORT).show();
        }
    }

    private void showDownloadDialog() {
        String[] items = new String[PLATFORMS.length];
        for (int i = 0; i < PLATFORMS.length; i++) items[i] = "从 " + PLATFORMS[i] + " 下载";
        new AlertDialog.Builder(this)
                .setTitle("平台下载（方式B）")
                .setItems(items, new android.content.DialogInterface.OnClickListener() {
                    public void onClick(android.content.DialogInterface d, int which) {
                        showCountDialog(PLATFORMS[which]);
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void showCountDialog(final String platform) {
        new AlertDialog.Builder(this)
                .setTitle("从 " + platform + " 下载数量")
                .setItems(new String[]{"最近 50 条", "最近 100 条", "全部"}, new android.content.DialogInterface.OnClickListener() {
                    public void onClick(android.content.DialogInterface d, int which) {
                        String count = which == 0 ? "50" : (which == 1 ? "100" : "全部");
                        Toast.makeText(HeatmapActivity.this,
                                "请在下载中心选择「" + platform + "」下载 " + count + " 条，完成后返回热力图自动叠加",
                                Toast.LENGTH_LONG).show();
                        openDownloadCenter();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    /** 扫描本地缓存文件夹并生成热力图（后台线程） */
    private void scanLocal() {
        if (generating) return;
        generating = true;
        loading.setVisibility(View.VISIBLE);
        final float sigma = sigmaBar != null ? sigmaBar.getProgress() + 1 : 2;
        new Thread(new Runnable() {
            public void run() {
                try {
                    // 显式 Error 抛出点：阻止 D8 release 将 catch(Throwable) 收窄为 catch(Exception)，
                    // 保证 OOM 等 Error 也被捕获不闪退
                    if (Thread.currentThread().isInterrupted()) throw new Error("interrupted");
                    File dir = new File("/storage/emulated/0/Download/鸡翅幸哲迈进OB");
                    List<File> files = TrackFileParser.scanFiles(dir);
                    final List<double[]> all = new ArrayList<double[]>();
                    final int[] counts = new int[3]; // 文件数, 点数, 成功文件数
                    for (File f : files) {
                        try {
                            List<double[]> p = TrackFileParser.parseFile(f);
                            if (p != null && p.size() > 5) {
                                all.addAll(p);
                                counts[1] += p.size();
                                counts[2]++;
                            }
                        } catch (Exception e) {
                            // 单文件解析失败跳过
                        }
                        counts[0]++;
                    }
                    final int[] tb = (all.size() > 10) ? HeatmapEngine.tileBounds(all, 64) : null;
                    if (tb == null) {
                        main.post(new Runnable() {
                            public void run() {
                                loading.setVisibility(View.GONE);
                                generating = false;
                                statusView.setText("未找到可用轨迹文件（需要 ≥10 个轨迹点）");
                                emptyLayout.setVisibility(View.VISIBLE);
                            }
                        });
                        return;
                    }
                    final android.graphics.Bitmap bmp = HeatmapEngine.generate(all, tb, sigma, Math.max(1, counts[2]), isDarkTheme());
                    main.post(new Runnable() {
                        public void run() {
                            loading.setVisibility(View.GONE);
                            generating = false;
                            emptyLayout.setVisibility(View.GONE);
                            if (bmp != null) {
                                mapView.setHeatmap(bmp, tb[0], tb[1], tb[2], tb[3], tb[4]);
                                statusView.setText("已叠加 " + counts[2] + " 个文件 · " + counts[1] + " 个轨迹点 · zoom " + tb[0]);
                            } else {
                                statusView.setText("生成失败（数据量过大或异常）");
                            }
                        }
                    });
                } catch (final Throwable e) {
                    main.post(new Runnable() {
                        public void run() {
                            loading.setVisibility(View.GONE);
                            generating = false;
                            statusView.setText("扫描失败: " + (e.getMessage() != null ? e.getMessage() : e.getClass().getSimpleName()));
                        }
                    });
                }
            }
        }).start();
    }

    /** 平滑度变化 → 重新生成 */
    private void regenerate(final int sigma) {
        if (generating) return;
        generating = true;
        loading.setVisibility(View.VISIBLE);
        new Thread(new Runnable() {
            public void run() {
                try {
                    // 显式 Error 抛出点：阻止 D8 收窄 catch(Throwable)
                    if (Thread.currentThread().isInterrupted()) throw new Error("interrupted");
                    File dir = new File("/storage/emulated/0/Download/鸡翅幸哲迈进OB");
                    List<File> files = TrackFileParser.scanFiles(dir);
                    final List<double[]> all = new ArrayList<double[]>();
                    final int[] counts = new int[2];
                    for (File f : files) {
                        try {
                            List<double[]> p = TrackFileParser.parseFile(f);
                            if (p != null && p.size() > 5) {
                                all.addAll(p);
                                counts[0] += p.size();
                                counts[1]++;
                            }
                        } catch (Exception e) {
                        }
                    }
                    final int[] tb = (all.size() > 10) ? HeatmapEngine.tileBounds(all, 64) : null;
                    if (tb == null) {
                        main.post(new Runnable() {
                            public void run() { loading.setVisibility(View.GONE); generating = false; }
                        });
                        return;
                    }
                    final android.graphics.Bitmap bmp = HeatmapEngine.generate(all, tb, sigma, Math.max(1, counts[1]), isDarkTheme());
                    main.post(new Runnable() {
                        public void run() {
                            loading.setVisibility(View.GONE);
                            generating = false;
                            if (bmp != null) mapView.setHeatmap(bmp, tb[0], tb[1], tb[2], tb[3], tb[4]);
                        }
                    });
                } catch (final Throwable e) {
                    main.post(new Runnable() {
                        public void run() { loading.setVisibility(View.GONE); generating = false; }
                    });
                }
            }
        }).start();
    }

    private int dp(int v) {
        return (int) (v * getResources().getDisplayMetrics().density + 0.5f);
    }
}

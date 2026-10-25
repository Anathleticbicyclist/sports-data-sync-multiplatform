package com.jichi.ob.heatmap;

import android.graphics.Bitmap;

import java.util.List;

/**
 * 热力图算法引擎（纯 Java，无 FFT）
 * 流程：Web Mercator 投影 → 密度累加 → 阈值截断 → 直方图均衡化 → 盒式模糊近似高斯 → hot 色带着色
 */
public class HeatmapEngine {

    /** Web Mercator: lat/lon → 瓦片像素坐标（相对 z 层级原点） */
    public static double deg2x(double lon, int zoom) {
        return (lon + 180.0) / 360.0 * 256.0 * (1L << zoom);
    }

    public static double deg2y(double lat, int zoom) {
        double s = Math.sin(Math.toRadians(lat));
        return (1.0 - Math.log((1 + s) / (1 - s)) / (2 * Math.PI)) / 2.0 * 256.0 * (1L << zoom);
    }

    /** 计算轨迹包围盒的瓦片坐标范围（含 zoom 自动选择：瓦片总数 ≤ 上限） */
    public static int[] tileBounds(List<double[]> pts, int maxTiles) {
        double latMin = 90, latMax = -90, lonMin = 180, lonMax = -180;
        for (double[] p : pts) {
            if (p[0] < latMin) latMin = p[0];
            if (p[0] > latMax) latMax = p[0];
            if (p[1] < lonMin) lonMin = p[1];
            if (p[1] > lonMax) lonMax = p[1];
        }
        if (latMin > latMax) return null;
        int zoom = 19;
        while (zoom > 0) {
            int xtMin = (int) Math.floor(deg2x(lonMin, zoom) / 256);
            int xtMax = (int) Math.floor(deg2x(lonMax, zoom) / 256);
            int ytMin = (int) Math.floor(deg2y(latMax, zoom) / 256);
            int ytMax = (int) Math.floor(deg2y(latMin, zoom) / 256);
            int n = (xtMax - xtMin + 1) * (ytMax - ytMin + 1);
            if (n <= maxTiles) {
                return new int[]{zoom, xtMin, xtMax, ytMin, ytMax};
            }
            zoom--;
        }
        return new int[]{0, 0, 0, 0, 0};
    }

    /**
     * 生成热力图 Bitmap
     * @param pts 全部轨迹点（lat, lon）
     * @param tb  tileBounds 结果 {zoom, xtMin, xtMax, ytMin, ytMax}
     * @param sigma 平滑度
     * @param activities 活动数（截断阈值按活动数缩放）
     * @param dark 深色底
     */
    public static Bitmap generate(List<double[]> pts, int[] tb, float sigma, int activities, boolean dark) {
        int zoom = tb[0], xtMin = tb[1], xtMax = tb[2], ytMin = tb[3], ytMax = tb[4];
        int w = (xtMax - xtMin + 1) * 256;
        int h = (ytMax - ytMin + 1) * 256;
        if (w <= 0 || h <= 0 || w * h > 24 * 1024 * 1024) return null;

        // 1. 密度累加
        int si = Math.max(1, (int) sigma);
        short[][] dens = new short[h][w];
        double baseX = xtMin * 256.0;
        double baseY = ytMin * 256.0;
        for (double[] p : pts) {
            double px = deg2x(p[1], zoom) - baseX;
            double py = deg2y(p[0], zoom) - baseY;
            int j = (int) Math.round(px);
            int i = (int) Math.round(py);
            if (i >= 0 && i < h && j >= 0 && j < w) {
                int i0 = Math.max(i - si, 0), i1 = Math.min(i + si, h - 1);
                int j0 = Math.max(j - si, 0), j1 = Math.min(j + si, w - 1);
                for (int ii = i0; ii <= i1; ii++) {
                    for (int jj = j0; jj <= j1; jj++) {
                        short v = dens[ii][jj];
                        if (v < 30000) dens[ii][jj] = (short) (v + 1);
                    }
                }
            }
        }

        // 2. 截断阈值 m
        double resPixel = 156543.03 * Math.cos(Math.toRadians(midLat(pts))) / (1L << zoom);
        int m = (int) Math.max(1, Math.round(resPixel / 5.0 * activities));

        // 3. 直方图均衡化（背景 0 保持）
        long[] hist = new long[m + 1];
        long total = (long) w * h;
        for (int i = 0; i < h; i++) {
            for (int j = 0; j < w; j++) {
                int v = dens[i][j];
                if (v > m) v = m;
                hist[v]++;
            }
        }
        // cumsum → 映射表
        float[] map = new float[m + 1];
        long cum = 0;
        for (int v = 1; v <= m; v++) {
            cum += hist[v];
            map[v] = (float) (m * (cum / (double) total));
        }
        float[][] vals = new float[h][w];
        for (int i = 0; i < h; i++) {
            for (int j = 0; j < w; j++) {
                int v = dens[i][j];
                if (v > m) v = m;
                vals[i][j] = (v > 0) ? map[v] : 0f;
            }
        }
        dens = null;

        // 4. 盒式模糊迭代近似高斯
        int iter = Math.max(1, Math.round(sigma));
        for (int t = 0; t < iter; t++) {
            blur3(vals, h, w);
        }

        // 5. 归一化 + hot 色带 → ARGB
        float min = Float.MAX_VALUE, max = -Float.MAX_VALUE;
        for (int i = 0; i < h; i++) {
            for (int j = 0; j < w; j++) {
                float v = vals[i][j];
                if (v < min) min = v;
                if (v > max) max = v;
            }
        }
        float range = max - min;
        if (range <= 0) return null;
        int bg = dark ? 0xFF0C0E12 : 0xFFF2F4F7;
        int[] px = new int[w * h];
        for (int i = 0; i < h; i++) {
            int row = i * w;
            for (int j = 0; j < w; j++) {
                float t = (vals[i][j] - min) / range;
                if (t < 0.03f) {
                    px[row + j] = bg;
                } else {
                    float r = Math.min(1f, 3f * t);
                    float g = Math.min(1f, Math.max(0f, 3f * t - 1f));
                    float b = Math.min(1f, Math.max(0f, 3f * t - 2f));
                    px[row + j] = 0xFF000000 | ((int) (r * 255f) << 16) | ((int) (g * 255f) << 8) | (int) (b * 255f);
                }
            }
        }
        return Bitmap.createBitmap(px, w, h, Bitmap.Config.ARGB_8888);
    }

    private static void blur3(float[][] a, int h, int w) {
        float[][] b = new float[h][w];
        for (int i = 0; i < h; i++) {
            int i0 = Math.max(i - 1, 0), i1 = Math.min(i + 1, h - 1);
            for (int j = 0; j < w; j++) {
                int j0 = Math.max(j - 1, 0), j1 = Math.min(j + 1, w - 1);
                float s = 0;
                int n = 0;
                for (int ii = i0; ii <= i1; ii++) {
                    float[] row = a[ii];
                    for (int jj = j0; jj <= j1; jj++) {
                        s += row[jj];
                        n++;
                    }
                }
                b[i][j] = s / n;
            }
        }
        for (int i = 0; i < h; i++) System.arraycopy(b[i], 0, a[i], 0, w);
    }

    private static double midLat(List<double[]> pts) {
        double sum = 0; int n = 0;
        for (double[] p : pts) { sum += p[0]; n++; }
        return n > 0 ? sum / n : 30.0;
    }
}

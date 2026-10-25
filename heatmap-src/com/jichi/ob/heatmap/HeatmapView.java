package com.jichi.ob.heatmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/**
 * 热力图地图视图：瓦片底图 + 热力 Bitmap 叠加，支持双指缩放 / 拖动
 * v9.3.1 修复：
 * 1) onDraw 只读缓存瓦片（getCachedTile 无网络）；缺瓦片异步 requestTile 后台下载，完成 postInvalidate
 *    ——原版 onDraw 同步下载瓦片导致主线程联网 ANR（点击热力图无法进入）
 * 2) setHeatmap 矩阵初始化 post 到布局完成后（避免 getWidth=0 导致 scale=0 黑屏）
 */
public class HeatmapView extends android.view.View {

    private HeatmapTileLoader tiles;
    private int zoom = 13;
    private int xtMin, xtMax, ytMin, ytMax;   // 已加载瓦片范围
    private Bitmap heat;                      // 热力层（与瓦片区同尺寸）
    private boolean dark = true;
    private boolean fitted = false;

    private final Matrix mat = new Matrix();
    private final ScaleGestureDetector sgd;
    private final GestureDetector gd;
    private float lastFocusX, lastFocusY;
    private final Paint gridPaint = new Paint();
    private float heatAlpha = 0.9f;
    private final Paint heatPaint = new Paint();

    public HeatmapView(Context c) {
        super(c);
        tiles = new HeatmapTileLoader(c);
        sgd = new ScaleGestureDetector(c, new ScaleGestureDetector.SimpleOnScaleGestureListener() {
            @Override
            public boolean onScale(ScaleGestureDetector d) {
                float f = d.getScaleFactor();
                float cx = d.getFocusX(), cy = d.getFocusY();
                mat.postScale(f, f, cx, cy);
                invalidate();
                return true;
            }
        });
        gd = new GestureDetector(c, new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onDown(MotionEvent e) { return true; }

            @Override
            public boolean onScroll(MotionEvent e1, MotionEvent e2, float dx, float dy) {
                mat.postTranslate(-dx, -dy);
                invalidate();
                return true;
            }
        });
        gridPaint.setColor(Color.TRANSPARENT);
    }

    /** 设置热力层 + 瓦片范围（生成完成后调用） */
    public void setHeatmap(Bitmap heat, int zoom, int xtMin, int xtMax, int ytMin, int ytMax) {
        this.heat = heat;
        this.zoom = zoom;
        this.xtMin = xtMin;
        this.xtMax = xtMax;
        this.ytMin = ytMin;
        this.ytMax = ytMax;
        this.fitted = false;
        // 布局完成后再初始化视图矩阵（此时 getWidth/getHeight 才有值）
        post(new Runnable() {
            public void run() { fitView(); }
        });
        invalidate();
    }

    /** 初始视图：完整显示整个热力区 */
    private void fitView() {
        if (heat == null) return;
        int wpx = (xtMax - xtMin + 1) * 256;
        int hpx = (ytMax - ytMin + 1) * 256;
        if (wpx <= 0 || hpx <= 0) return;
        float scale = Math.min(getWidth() / (float) wpx, getHeight() / (float) hpx);
        if (scale <= 0 || Float.isNaN(scale)) scale = 0.25f;
        mat.reset();
        mat.postScale(scale, scale);
        fitted = true;
        invalidate();
    }

    public void setDark(boolean d) {
        dark = d;
        invalidate();
    }

    public void setHeatAlpha(float a) {
        heatAlpha = Math.max(0.1f, Math.min(1f, a));
        invalidate();
    }

    @Override
    public boolean onTouchEvent(MotionEvent e) {
        gd.onTouchEvent(e);
        sgd.onTouchEvent(e);
        if (e.getActionMasked() == MotionEvent.ACTION_UP
                || e.getActionMasked() == MotionEvent.ACTION_POINTER_UP) {
            lastFocusX = 0; lastFocusY = 0;
        }
        return true;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        // 背景
        canvas.drawColor(dark ? 0xFF0C0E12 : 0xFFE8EAEE);

        if (heat == null) {
            canvas.drawText("暂无热力数据，请先扫描本地轨迹", 40, getHeight() / 2f, textPaint());
            return;
        }

        // 首次布局后未 fit 时补一次（post 可能早于首次绘制）
        if (!fitted) fitView();

        // 1. 瓦片底图（按当前矩阵视口只画可见瓦片；只读缓存，绝不联网）
        if (tiles != null) {
            float[] pts9 = new float[9];
            mat.getValues(pts9);
            float scaleX = pts9[Matrix.MSCALE_X];
            float scaleY = pts9[Matrix.MSCALE_Y];
            float transX = pts9[Matrix.MTRANS_X];
            float transY = pts9[Matrix.MTRANS_Y];
            // 视口对应热力图坐标范围
            int vx0 = (int) Math.floor(-transX / scaleX / 256) - 1;
            int vy0 = (int) Math.floor(-transY / scaleY / 256) - 1;
            int vx1 = (int) Math.ceil((getWidth() - transX) / scaleX / 256) + 1;
            int vy1 = (int) Math.ceil((getHeight() - transY) / scaleY / 256) + 1;
            int cx0 = Math.max(vx0, xtMin), cx1 = Math.min(vx1, xtMax);
            int cy0 = Math.max(vy0, ytMin), cy1 = Math.min(vy1, ytMax);
            Rect src = new Rect(0, 0, 256, 256);
            Rect dst = new Rect();
            for (int tx = cx0; tx <= cx1; tx++) {
                for (int ty = cy0; ty <= cy1; ty++) {
                    Bitmap tb = tiles.getCachedTile(zoom, tx, ty, dark);
                    if (tb == null) {
                        // 异步下载，完成后重绘
                        tiles.requestTile(zoom, tx, ty, dark, new Runnable() {
                            public void run() { postInvalidate(); }
                        });
                        continue;
                    }
                    float sx = (tx - xtMin) * 256 * scaleX + transX;
                    float sy = (ty - ytMin) * 256 * scaleY + transY;
                    dst.set((int) sx, (int) sy, (int) (sx + 256 * scaleX), (int) (sy + 256 * scaleY));
                    canvas.drawBitmap(tb, src, dst, null);
                }
            }
        }

        // 2. 热力层
        if (heat != null) {
            heatPaint.setAlpha((int) (heatAlpha * 255));
            canvas.drawBitmap(heat, mat, heatPaint);
        }
    }

    private Paint textPaint() {
        Paint p = new Paint();
        p.setColor(dark ? 0xFF8A8F98 : 0xFF5A5E66);
        p.setTextSize(28);
        return p;
    }
}

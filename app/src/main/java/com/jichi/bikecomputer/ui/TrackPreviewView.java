package com.jichi.bikecomputer.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.jichi.bikecomputer.model.TrackPoint;
import io.jenetics.jpx.Degrees;
import java.util.List;

/* loaded from: classes4.dex */
public class TrackPreviewView extends View {
    private final Paint bgPaint;
    private final Paint endPaint;
    private final Paint linePaint;
    private List<TrackPoint> points;
    private final Paint startPaint;

    public TrackPreviewView(Context context) {
        super(context);
        this.linePaint = new Paint(1);
        this.startPaint = new Paint(1);
        this.endPaint = new Paint(1);
        this.bgPaint = new Paint();
        init();
    }

    public TrackPreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.linePaint = new Paint(1);
        this.startPaint = new Paint(1);
        this.endPaint = new Paint(1);
        this.bgPaint = new Paint();
        init();
    }

    private void init() {
        this.linePaint.setStyle(Paint.Style.STROKE);
        this.linePaint.setStrokeWidth(dp(2.5f));
        this.linePaint.setStrokeCap(Paint.Cap.ROUND);
        this.linePaint.setStrokeJoin(Paint.Join.ROUND);
        this.linePaint.setColor(-13730510);
        this.startPaint.setStyle(Paint.Style.FILL);
        this.startPaint.setColor(-11751600);
        this.endPaint.setStyle(Paint.Style.FILL);
        this.endPaint.setColor(-1092784);
        this.bgPaint.setColor(335544320);
    }

    private float dp(float f) {
        return f * getResources().getDisplayMetrics().density;
    }

    public void setPoints(List<TrackPoint> list) {
        this.points = list;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        List<TrackPoint> list = this.points;
        if (list == null || list.size() < 2) {
            canvas.drawColor(this.bgPaint.getColor());
            return;
        }
        canvas.drawColor(this.bgPaint.getColor());
        float width = getWidth();
        float height = getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        double d = 90.0d;
        double d2 = -90.0d;
        double d3 = 180.0d;
        double d4 = -180.0d;
        for (TrackPoint trackPoint : this.points) {
            if (trackPoint.lat < d) {
                d = trackPoint.lat;
            }
            if (trackPoint.lat > d2) {
                d2 = trackPoint.lat;
            }
            if (trackPoint.lon < d3) {
                d3 = trackPoint.lon;
            }
            if (trackPoint.lon > d4) {
                d4 = trackPoint.lon;
            }
        }
        double d5 = d2 - d;
        double d6 = d4 - d3;
        if (d5 == Degrees.MIN_VALUE && d6 == Degrees.MIN_VALUE) {
            return;
        }
        double dCos = Math.cos(Math.toRadians((d + d2) / 2.0d));
        double d7 = d6 * dCos;
        if (d7 == Degrees.MIN_VALUE) {
            d7 = 1.0E-4d * d5;
        }
        if (d5 == Degrees.MIN_VALUE) {
            d5 = d7;
        }
        float fDp = dp(10.0f) * 2.0f;
        float f = (float) d7;
        float f2 = (float) d5;
        float fMin = Math.min((width - fDp) / f, (height - fDp) / f2);
        float f3 = (width - (f * fMin)) / 2.0f;
        float f4 = (height - (f2 * fMin)) / 2.0f;
        Path path = new Path();
        int i = 0;
        while (i < this.points.size()) {
            TrackPoint trackPoint2 = this.points.get(i);
            int i2 = i;
            float f5 = (((float) ((trackPoint2.lon - d3) * dCos)) * fMin) + f3;
            float f6 = (((float) (d2 - trackPoint2.lat)) * fMin) + f4;
            if (i2 == 0) {
                path.moveTo(f5, f6);
            } else {
                path.lineTo(f5, f6);
            }
            i = i2 + 1;
        }
        canvas.drawPath(path, this.linePaint);
        TrackPoint trackPoint3 = this.points.get(0);
        float f7 = (((float) ((trackPoint3.lon - d3) * dCos)) * fMin) + f3;
        float f8 = (((float) (d2 - trackPoint3.lat)) * fMin) + f4;
        TrackPoint trackPoint4 = this.points.get(this.points.size() - 1);
        float f9 = f3 + (((float) ((trackPoint4.lon - d3) * dCos)) * fMin);
        float f10 = f4 + (((float) (d2 - trackPoint4.lat)) * fMin);
        float fDp2 = dp(5.0f);
        canvas.drawCircle(f7, f8, fDp2, this.startPaint);
        canvas.drawCircle(f9, f10, fDp2, this.endPaint);
    }
}

package com.jichi.ob.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import com.garmin.fit.GarminProduct;
import com.garmin.fit.LapMesg;
import com.garmin.fit.MesgNum;
import com.garmin.fit.MonitoringReader;
import com.garmin.fit.SessionMesg;
import com.jichi.ob.GpxToFitConverter;
import com.jichi.ob.merge.StickerCore;
import io.jenetics.jpx.Degrees;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.DebugKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TrackPreviewView.kt */
/* loaded from: classes.dex */
public final class TrackPreviewView extends FrameLayout {
    public static final int BRAND_CUSTOM;
    public static final String[] BRAND_NAMES;
    public static final int COLOR_BLACK = 2;
    public static final int COLOR_GRADIENT = 5;
    public static final int COLOR_GRAY = 1;
    public static final int COLOR_ORANGE = 3;
    public static final int COLOR_SKY = 4;
    public static final int COLOR_WHITE = 0;
    public static final int MODE_3D = 1;
    public static final int MODE_TRACK = 0;
    public static final int POS_BOTTOM = 2;
    public static final int POS_CENTER = 0;
    public static final int POS_LEFT = 3;
    public static final int POS_RIGHT = 4;
    public static final int POS_TOP = 1;
    public static final int STICKER_NONE = 2;
    public static final int STICKER_OUTBASE = 1;
    public static final int STICKER_STRAVA = 0;
    public static final int STYLE_ELEVATION = 2;
    public static final int STYLE_ORANGE = 0;
    public static final int STYLE_SKY = 4;
    public static final int STYLE_SPEED = 1;
    public static final int STYLE_TRANSPARENT = 3;
    private String aspect;
    private boolean badgeOn;
    private String badgeUrl;
    private StickerCore.StickerBg bgType;
    private int brandIdx;
    private float cssH;
    private float cssW;
    private boolean dataLayerOn;
    private final Map<String, String> dataOverrides;
    private int dataStyle;
    private float dx;
    private float dy;
    private final Paint fillPaint;
    private final GestureDetector gestureDetector;
    private boolean glow;
    private boolean glowOn;
    private boolean include3d;
    private List<Integer> items;
    private int lastH;
    private float lastTouchX;
    private float lastTouchY;
    private int lastW;
    private StickerCore.StickerLayout layoutType;
    private float lineAlpha;
    private int lineColorMode;
    private float lineWidth;
    private Function1<? super Integer, Unit> onTemplateSwipe;
    private Bitmap overlayBitmap;
    private final Paint paint;
    private boolean pendingRender;
    private List<GpxToFitConverter.TrackPoint> points;
    private int posMode;
    private boolean renderScheduled;
    private float rotation;
    private float scale;
    private final ScaleGestureDetector scaleDetector;
    private boolean show3dBand;
    private boolean stickerPreview;
    private int style;
    private StickerCore.SummaryStats summaryStats;
    private float swipeAccumX;
    private int templateIndex;
    private int textColorMode;
    private StickerCore.StickerText textType;
    private float tiltX;
    private String titleOverride;
    private boolean track3d;
    private float track3dRx;
    private float track3dRy;
    private boolean trackOn;
    private StickerCore.StickerTrack trackType;
    private int trackWidth;
    private boolean transparentBg;
    private boolean twoFinger;
    private float twoStartAngle;
    private float twoStartMidY;
    private boolean useTemplate;
    private boolean watermarkOn;
    private WebView web;
    private boolean webReady;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String[] trackWidthNames = {"", "最细", "细", "中", "较粗", "粗", "最粗"};
    private static final List<String> stickerLineNames = CollectionsKt.listOf((Object[]) new String[]{"白", "灰", "黑", "橙", "天蓝", "渐变"});
    private static final List<String> stickerTextNames = CollectionsKt.listOf((Object[]) new String[]{"白", "灰", "黑", "橙", "天蓝"});
    private static final List<String> posNames = CollectionsKt.listOf((Object[]) new String[]{"居中", "偏上", "偏下", "偏左", "偏右"});
    private static final List<String> styleNames = CollectionsKt.listOf((Object[]) new String[]{"Strava橙经典", "Strava速度", "Strava海拔", "Outbase透明贴纸", "极简天蓝"});
    private static final List<String> styleDesc = CollectionsKt.listOf((Object[]) new String[]{"单色橙+发光", "按速度蓝→红", "按海拔黄→红", "纯色可叠底", "天蓝+发光"});
    private static final List<Integer> styleColors = CollectionsKt.listOf((Object[]) new Integer[]{-242686, -20448, -680437, -15656921, -13923073});

    /* compiled from: TrackPreviewView.kt */
        public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;

        static {
            int[] iArr = new int[StickerCore.StickerText.values().length];
            try {
                iArr[StickerCore.StickerText.WHITE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StickerCore.StickerText.BLACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StickerCore.StickerText.ORANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StickerCore.StickerText.SKY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[StickerCore.StickerText.NEON_PINK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[StickerCore.StickerText.CREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[StickerCore.StickerLayout.values().length];
            try {
                iArr2[StickerCore.StickerLayout.POSTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[StickerCore.StickerLayout.TRIPLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[StickerCore.StickerLayout.GRID.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[StickerCore.StickerLayout.BIG.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[StickerCore.StickerLayout.BAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[StickerCore.StickerLayout.DUAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[StickerCore.StickerLayout.CORNER.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[StickerCore.StickerBg.values().length];
            try {
                iArr3[StickerCore.StickerBg.DEEP_SPACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[StickerCore.StickerBg.CHECKER.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr3[StickerCore.StickerBg.NEON.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr3[StickerCore.StickerBg.PURE_BLACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr3[StickerCore.StickerBg.MINIMAL_WHITE.ordinal()] = 5;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr3[StickerCore.StickerBg.CREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr3[StickerCore.StickerBg.LIGHT_GRAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr3[StickerCore.StickerBg.WARM_POSTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr3[StickerCore.StickerBg.MAP_GRID.ordinal()] = 9;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr3[StickerCore.StickerBg.SATELLITE.ordinal()] = 10;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr3[StickerCore.StickerBg.LIGHT_MAP.ordinal()] = 11;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr3[StickerCore.StickerBg.CONTOUR.ordinal()] = 12;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr3[StickerCore.StickerBg.HEAT_BG.ordinal()] = 13;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr3[StickerCore.StickerBg.ORANGE_BAND.ordinal()] = 14;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr3[StickerCore.StickerBg.ICE_BAND.ordinal()] = 15;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr3[StickerCore.StickerBg.LIGHT_TRAIL.ordinal()] = 16;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr3[StickerCore.StickerBg.DUAL_DARK.ordinal()] = 17;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr3[StickerCore.StickerBg.POSTER_ORANGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr3[StickerCore.StickerBg.RETRO_PURPLE.ordinal()] = 19;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr3[StickerCore.StickerBg.ANNUAL_DARK.ordinal()] = 20;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr3[StickerCore.StickerBg.PHOTO_OVERLAY.ordinal()] = 21;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr3[StickerCore.StickerBg.FROSTED.ordinal()] = 22;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr3[StickerCore.StickerBg.PHOTO_SPLIT.ordinal()] = 23;
            } catch (NoSuchFieldError unused36) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[StickerCore.StickerTrack.values().length];
            try {
                iArr4[StickerCore.StickerTrack.WHITE.ordinal()] = 1;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr4[StickerCore.StickerTrack.BLACK_FINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr4[StickerCore.StickerTrack.GRAY_FINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr4[StickerCore.StickerTrack.ORANGE_GRAD.ordinal()] = 4;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr4[StickerCore.StickerTrack.NEON.ordinal()] = 5;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr4[StickerCore.StickerTrack.HEAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr4[StickerCore.StickerTrack.ICE_3D.ordinal()] = 7;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr4[StickerCore.StickerTrack.PHANTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused44) {
            }
            $EnumSwitchMapping$3 = iArr4;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TrackPreviewView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TrackPreviewView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ TrackPreviewView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackPreviewView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        setWillNotDraw(false);
        post(new Runnable() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                TrackPreviewView._init_$lambda$0(TrackPreviewView.this);
            }
        });
        this.points = CollectionsKt.emptyList();
        this.lineWidth = 5.0f;
        this.lineAlpha = 0.95f;
        this.stickerPreview = true;
        this.lineColorMode = 2;
        this.items = StickerCore.INSTANCE.getITEM_DEFAULT();
        this.scale = 1.0f;
        this.paint = new Paint(1);
        this.fillPaint = new Paint(1);
        this.bgType = StickerCore.StickerBg.DEEP_SPACE;
        this.trackType = StickerCore.StickerTrack.ORANGE_GRAD;
        this.layoutType = StickerCore.StickerLayout.TRIPLE;
        this.textType = StickerCore.StickerText.WHITE;
        this.glowOn = true;
        this.dataOverrides = new LinkedHashMap();
        this.track3dRx = 0.85f;
        this.track3dRy = 0.58f;
        this.dataLayerOn = true;
        this.watermarkOn = true;
        this.trackWidth = 3;
        this.trackOn = true;
        this.aspect = "1:1";
        this.gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.jichi.ob.ui.TrackPreviewView$gestureDetector$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
                Intrinsics.checkNotNullParameter(e2, "e2");
                if (!TrackPreviewView.this.getStickerPreview() || TrackPreviewView.this.getPoints().isEmpty() || e2.getPointerCount() != 1) {
                    return false;
                }
                float f = TrackPreviewView.this.getResources().getDisplayMetrics().density;
                TrackPreviewView trackPreviewView = TrackPreviewView.this;
                trackPreviewView.setDx(trackPreviewView.getDx() - (distanceX / f));
                TrackPreviewView trackPreviewView2 = TrackPreviewView.this;
                trackPreviewView2.setDy(trackPreviewView2.getDy() - (distanceY / f));
                TrackPreviewView.this.pushTransform();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent e) {
                Intrinsics.checkNotNullParameter(e, "e");
                TrackPreviewView.this.swipeAccumX = 0.0f;
                return TrackPreviewView.this.getStickerPreview();
            }
        });
        this.scaleDetector = new ScaleGestureDetector(context, new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: com.jichi.ob.ui.TrackPreviewView$scaleDetector$1
            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                if (!TrackPreviewView.this.getStickerPreview() || TrackPreviewView.this.getPoints().isEmpty()) {
                    return false;
                }
                TrackPreviewView trackPreviewView = TrackPreviewView.this;
                trackPreviewView.setScale(trackPreviewView.getScale() * detector.getScaleFactor());
                TrackPreviewView.this.pushTransform();
                return true;
            }
        });
        this.lastW = -1;
        this.lastH = -1;
        this.badgeOn = true;
        this.templateIndex = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(TrackPreviewView trackPreviewView) {
        if (trackPreviewView.web == null) {
            trackPreviewView.initWebRenderer();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        return this.stickerPreview;
    }

    /* compiled from: TrackPreviewView.kt */
        public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int stickerLineColor(int mode) {
            if (mode == 0) {
                return -1;
            }
            if (mode == 1) {
                return -6643546;
            }
            if (mode != 3) {
                return mode != 4 ? -15656921 : -13923073;
            }
            return -242686;
        }

        public final int stickerTextColor(int mode) {
            if (mode == 0) {
                return -1;
            }
            if (mode == 1) {
                return -6643546;
            }
            if (mode != 3) {
                return mode != 4 ? -15656921 : -13923073;
            }
            return -242686;
        }

        private Companion() {
        }

        public final List<String> getStickerLineNames() {
            return TrackPreviewView.stickerLineNames;
        }

        public final List<String> getStickerTextNames() {
            return TrackPreviewView.stickerTextNames;
        }

        public final List<String> getPosNames() {
            return TrackPreviewView.posNames;
        }

        public final List<String> getStyleNames() {
            return TrackPreviewView.styleNames;
        }

        public final List<String> getStyleDesc() {
            return TrackPreviewView.styleDesc;
        }

        public final List<Integer> getStyleColors() {
            return TrackPreviewView.styleColors;
        }
    }

    static {
        String[] strArr = {"鸡翅OB", "iGPSPORT", "迈金", "行者", "Wahoo", "佳明", "Strava", "咕咚", "黑鸟", "高驰", "MyWhoosh", "Zwift", "Keep", "Zepp", "Komoot", "松拓", "Outbase", "自定义"};
        BRAND_NAMES = strArr;
        BRAND_CUSTOM = strArr.length - 1;
    }

    public final List<GpxToFitConverter.TrackPoint> getPoints() {
        return this.points;
    }

    public final void setPoints(List<GpxToFitConverter.TrackPoint> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.points = value;
        invalidate();
    }

    public final int getStyle() {
        return this.style;
    }

    public final void setStyle(int i) {
        this.style = i;
        invalidate();
    }

    public final float getLineWidth() {
        return this.lineWidth;
    }

    public final void setLineWidth(float f) {
        this.lineWidth = f;
        invalidate();
    }

    public final float getLineAlpha() {
        return this.lineAlpha;
    }

    public final void setLineAlpha(float f) {
        this.lineAlpha = RangesKt.coerceIn(f, 0.1f, 1.0f);
        invalidate();
    }

    public final boolean getGlow() {
        return this.glow;
    }

    public final void setGlow(boolean z) {
        this.glow = z;
        invalidate();
    }

    public final boolean getStickerPreview() {
        return this.stickerPreview;
    }

    public final void setStickerPreview(boolean z) {
        this.stickerPreview = z;
        invalidate();
    }

    public final int getDataStyle() {
        return this.dataStyle;
    }

    public final void setDataStyle(int i) {
        this.dataStyle = i;
        invalidate();
    }

    public final boolean getInclude3d() {
        return this.include3d;
    }

    public final void setInclude3d(boolean z) {
        this.include3d = z;
        invalidate();
    }

    public final int getLineColorMode() {
        return this.lineColorMode;
    }

    public final void setLineColorMode(int i) {
        this.lineColorMode = i;
        invalidate();
    }

    public final int getTextColorMode() {
        return this.textColorMode;
    }

    public final void setTextColorMode(int i) {
        this.textColorMode = i;
        invalidate();
    }

    public final List<Integer> getItems() {
        return this.items;
    }

    public final void setItems(List<Integer> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.items = value;
        invalidate();
    }

    public final int getPosMode() {
        return this.posMode;
    }

    public final void setPosMode(int i) {
        this.posMode = i;
        invalidate();
    }

    public final float getDx() {
        return this.dx;
    }

    public final void setDx(float f) {
        this.dx = f;
        invalidate();
    }

    public final float getDy() {
        return this.dy;
    }

    public final void setDy(float f) {
        this.dy = f;
        invalidate();
    }

    public final float getScale() {
        return this.scale;
    }

    public final void setScale(float f) {
        this.scale = RangesKt.coerceIn(f, 0.35f, 2.5f);
        invalidate();
    }

    public final boolean getUseTemplate() {
        return this.useTemplate;
    }

    public final void setUseTemplate(boolean z) {
        this.useTemplate = z;
        invalidate();
    }

    public final StickerCore.StickerBg getBgType() {
        return this.bgType;
    }

    public final void setBgType(StickerCore.StickerBg value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.bgType = value;
        invalidate();
    }

    public final StickerCore.StickerTrack getTrackType() {
        return this.trackType;
    }

    public final void setTrackType(StickerCore.StickerTrack value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.trackType = value;
        invalidate();
    }

    public final StickerCore.StickerLayout getLayoutType() {
        return this.layoutType;
    }

    public final void setLayoutType(StickerCore.StickerLayout value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.layoutType = value;
        invalidate();
    }

    public final StickerCore.StickerText getTextType() {
        return this.textType;
    }

    public final void setTextType(StickerCore.StickerText value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.textType = value;
        invalidate();
    }

    public final boolean getGlowOn() {
        return this.glowOn;
    }

    public final void setGlowOn(boolean z) {
        this.glowOn = z;
        invalidate();
    }

    public final StickerCore.SummaryStats getSummaryStats() {
        return this.summaryStats;
    }

    public final void setSummaryStats(StickerCore.SummaryStats summaryStats) {
        this.summaryStats = summaryStats;
        invalidate();
    }

    public final String getTitleOverride() {
        return this.titleOverride;
    }

    public final void setTitleOverride(String str) {
        this.titleOverride = str;
        scheduleWebRender();
    }

    public final void setDataOverride(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        String str = value;
        if (str == null || StringsKt.isBlank(str)) {
            this.dataOverrides.remove(key);
        } else {
            this.dataOverrides.put(key, StringsKt.trim((CharSequence) str).toString());
        }
        scheduleWebRender();
    }

    public final void clearDataOverrides() {
        this.dataOverrides.clear();
        scheduleWebRender();
    }

    public final String currentDataOverride(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.dataOverrides.get(key);
    }

    public final boolean getTransparentBg() {
        return this.transparentBg;
    }

    public final void setTransparentBg(boolean z) {
        this.transparentBg = z;
        invalidate();
    }

    public final boolean getShow3dBand() {
        return this.show3dBand;
    }

    public final void setShow3dBand(boolean z) {
        this.show3dBand = z;
        invalidate();
    }

    public final boolean getTrack3d() {
        return this.track3d;
    }

    public final void setTrack3d(boolean z) {
        this.track3d = z;
        invalidate();
    }

    public final float getTrack3dRx() {
        return this.track3dRx;
    }

    public final void setTrack3dRx(float f) {
        this.track3dRx = RangesKt.coerceIn(f, -0.15f, 1.1f);
        invalidate();
    }

    public final float getTrack3dRy() {
        return this.track3dRy;
    }

    public final void setTrack3dRy(float f) {
        this.track3dRy = RangesKt.coerceIn(f, -0.9f, 0.9f);
        invalidate();
    }

    public final boolean getDataLayerOn() {
        return this.dataLayerOn;
    }

    public final void setDataLayerOn(boolean z) {
        this.dataLayerOn = z;
        invalidate();
    }

    public final boolean getWatermarkOn() {
        return this.watermarkOn;
    }

    public final void setWatermarkOn(boolean z) {
        this.watermarkOn = z;
        invalidate();
    }

    public final int getTrackWidth() {
        return this.trackWidth;
    }

    public final void setTrackWidth(int i) {
        this.trackWidth = RangesKt.coerceIn(i, 1, 6);
        invalidate();
    }

    public final boolean getTrackOn() {
        return this.trackOn;
    }

    public final void setTrackOn(boolean z) {
        this.trackOn = z;
        invalidate();
    }

    public final int getBrandIdx() {
        return this.brandIdx;
    }

    public final void setBrandIdx(int i) {
        this.brandIdx = RangesKt.coerceIn(i, 0, BRAND_NAMES.length - 1);
        invalidate();
    }

    public final String getBadgeUrl() {
        return this.badgeUrl;
    }

    public final void setBadgeUrl(String str) {
        this.badgeUrl = str;
        invalidate();
    }

    public final Bitmap getOverlayBitmap() {
        return this.overlayBitmap;
    }

    public final void setOverlayBitmap(Bitmap bitmap) {
        this.overlayBitmap = bitmap;
        invalidate();
    }

    public final String getAspect() {
        return this.aspect;
    }

    public final void setAspect(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.aspect = value;
        invalidate();
    }

    public static /* synthetic */ Pair resolveExportSize$default(TrackPreviewView trackPreviewView, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return trackPreviewView.resolveExportSize(i, i2);
    }

    public final Pair<Integer, Integer> resolveExportSize(int sizePx, int heightPx) {
        if (heightPx <= 0) {
            if (Intrinsics.areEqual(this.aspect, "3:4")) {
                heightPx = (sizePx * 4) / 3;
            } else {
                heightPx = Intrinsics.areEqual(this.aspect, "9:16") ? (sizePx * 16) / 9 : sizePx;
            }
        }
        return TuplesKt.to(Integer.valueOf(sizePx), Integer.valueOf(heightPx));
    }

    public final void applyTemplate(StickerCore.StickerTemplate t) {
        Intrinsics.checkNotNullParameter(t, "t");
        setUseTemplate(true);
        setBgType(t.getBg());
        setTrackType(t.getTrack());
        setLayoutType(t.getLayout());
        setTextType(t.getText());
        setGlowOn(t.getGlow());
        invalidate();
    }

    public final void applyCombo(StickerCore.StickerBg bg, StickerCore.StickerTrack track, StickerCore.StickerLayout layout, StickerCore.StickerText text, boolean glow) {
        Intrinsics.checkNotNullParameter(bg, "bg");
        Intrinsics.checkNotNullParameter(track, "track");
        Intrinsics.checkNotNullParameter(layout, "layout");
        Intrinsics.checkNotNullParameter(text, "text");
        setUseTemplate(true);
        setBgType(bg);
        setTrackType(track);
        setLayoutType(layout);
        setTextType(text);
        setGlowOn(glow);
        invalidate();
    }

    public final void exitTemplate() {
        setUseTemplate(false);
        invalidate();
    }

    private final int stickerTextColorOf(StickerCore.StickerText t) {
        switch (WhenMappings.$EnumSwitchMapping$0[t.ordinal()]) {
            case 1:
                return -1;
            case 2:
                return -15656921;
            case 3:
                return -242686;
            case 4:
                return -10827526;
            case 5:
                return -45096;
            case 6:
                return -661032;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static /* synthetic */ Bitmap renderThumb$default(TrackPreviewView trackPreviewView, StickerCore.StickerTemplate stickerTemplate, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 160;
        }
        return trackPreviewView.renderThumb(stickerTemplate, i);
    }

    public final Bitmap renderThumb(StickerCore.StickerTemplate t, int sizePx) {
        Intrinsics.checkNotNullParameter(t, "t");
        applyTemplate(t);
        Bitmap createBitmap = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        float f = sizePx;
        drawTemplateSticker(new Canvas(createBitmap), f, f, StickerCore.INSTANCE.getITEM_DEFAULT(), 0.0f, 0.0f, 0.52f, false, false);
        return createBitmap;
    }

    public final Function1<Integer, Unit> getOnTemplateSwipe() {
        return this.onTemplateSwipe;
    }

    public final void setOnTemplateSwipe(Function1<? super Integer, Unit> function1) {
        this.onTemplateSwipe = function1;
    }

    private final float angleOf(MotionEvent e) {
        if (e.getPointerCount() < 2) {
            return 0.0f;
        }
        float x = e.getX(0);
        return (float) Math.toDegrees(Math.atan2(e.getY(1) - e.getY(0), e.getX(1) - x));
    }

    public final void setTrackRotation(float deg) {
        this.rotation = ((deg % 360.0f) + 360.0f) % 360.0f;
        pushTransform();
    }

    /* renamed from: getTrackRotation, reason: from getter */
    public final float getRotation() {
        return this.rotation;
    }

    public final void rotateTrackBy(float deg) {
        setTrackRotation(this.rotation + deg);
    }

    public final void zoomTrackBy(float factor) {
        setScale(RangesKt.coerceIn(this.scale * factor, 0.4f, 4.0f));
        pushTransform();
    }

    public final void resetTrackTransform() {
        setDx(0.0f);
        setDy(0.0f);
        setScale(1.0f);
        this.rotation = 0.0f;
        this.tiltX = 0.0f;
        pushTransform();
    }

    private final void push3D() {
        WebView webView;
        if (this.webReady && (webView = this.web) != null && webView != null) {
            webView.evaluateJavascript("stickerBridge.set3DRotate(" + this.track3dRx + "," + this.track3dRy + ");", null);
        }
        invalidate();
    }

    public final void setTrack3dMode(boolean on) {
        WebView webView;
        setTrack3d(on);
        if (on) {
            setGlowOn(false);
        }
        if (this.webReady && (webView = this.web) != null && webView != null) {
            webView.evaluateJavascript("stickerBridge.set3DMode(" + on + "," + this.track3dRx + "," + this.track3dRy + ");", null);
        }
        invalidate();
    }

    public final void resetTrack3d() {
        WebView webView;
        setTrack3dRx(0.85f);
        setTrack3dRy(0.58f);
        if (this.webReady && (webView = this.web) != null && webView != null) {
            webView.evaluateJavascript("stickerBridge.set3DRotate(" + this.track3dRx + "," + this.track3dRy + ");", null);
        }
        invalidate();
    }

    public final boolean isTrack3d() {
        return this.track3d;
    }

    public final void moveTrackBy(float ddx, float ddy) {
        setDx(this.dx + ddx);
        setDy(this.dy + ddy);
        pushTransform();
    }

    public final void tiltTrackBy(float deg) {
        this.tiltX = RangesKt.coerceIn(this.tiltX + deg, -70.0f, 70.0f);
        pushTransform();
    }

    public final float getTiltX() {
        return this.tiltX;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        if (r1 != 6) goto L49;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) {
        // 方法体按 9.6.8 原版恢复（jadx 旧反编译结果）。仅贴纸预览模式下拦截触摸：
        // 单指拖动转 3D 视角，双指旋转/俯仰，其余交给缩放与手势识别器。
        MotionEvent event = r9;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!this.stickerPreview) {
            return super.onTouchEvent(event);
        }
        float f = getResources().getDisplayMetrics().density;
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.twoFinger = false;
            this.lastTouchX = event.getX();
            this.lastTouchY = event.getY();
        } else if (actionMasked == 1) {
            this.twoFinger = false;
        } else if (actionMasked == 2) {
            if (this.track3d && !this.twoFinger) {
                float x = event.getX() - this.lastTouchX;
                float y = event.getY() - this.lastTouchY;
                float f2 = 1.5f * f;
                if (Math.abs(x) > f2 || Math.abs(y) > f2) {
                    float f3 = f * 360.0f;
                    setTrack3dRy(RangesKt.coerceIn(this.track3dRy + (x / f3), -0.9f, 0.9f));
                    setTrack3dRx(RangesKt.coerceIn(this.track3dRx + (y / f3), -0.15f, 1.1f));
                    this.lastTouchX = event.getX();
                    this.lastTouchY = event.getY();
                    push3D();
                }
                return true;
            }
            if (this.twoFinger && event.getPointerCount() >= 2) {
                float fAngleOf = angleOf(event);
                float f4 = fAngleOf - this.twoStartAngle;
                if (f4 > 180.0f) {
                    f4 -= 360.0f;
                }
                if (f4 < -180.0f) {
                    f4 += 360.0f;
                }
                if (Math.abs(f4) > 2.0f) {
                    this.rotation = (this.rotation + f4) % 360.0f;
                    this.twoStartAngle = fAngleOf;
                    pushTransform();
                }
                float y2 = (event.getY(0) + event.getY(1)) / 2.0f;
                float f5 = y2 - this.twoStartMidY;
                if (Math.abs(f5) > 2.0f * f) {
                    this.tiltX = RangesKt.coerceIn(this.tiltX + (f5 / (f * 6.0f)), -70.0f, 70.0f);
                    this.twoStartMidY = y2;
                    pushTransform();
                }
            }
        } else if (actionMasked == 5) {
            if (event.getPointerCount() >= 2) {
                this.twoFinger = true;
                this.twoStartAngle = angleOf(event);
                this.twoStartMidY = (event.getY(0) + event.getY(1)) / 2.0f;
            }
        }
        // 3（取消）/ 6（抬起一指）：无额外处理，直接走下面的手势识别器。
        this.scaleDetector.onTouchEvent(event);
        this.gestureDetector.onTouchEvent(event);
        return true;
    }

    public final void applyPosMode() {
        setScale(1.0f);
        int i = this.posMode;
        if (i == 1) {
            setDx(0.0f);
            setDy(-110.0f);
        } else if (i == 2) {
            setDx(0.0f);
            setDy(110.0f);
        } else if (i == 3) {
            setDx(-110.0f);
            setDy(0.0f);
        } else if (i == 4) {
            setDx(110.0f);
            setDy(0.0f);
        } else {
            setDx(0.0f);
            setDy(0.0f);
        }
        pushTransform();
    }

    public final StickerCore.TrackStats computeStats() {
        return StickerCore.INSTANCE.computeStats(this.points);
    }

    public static /* synthetic */ Bitmap exportTransparentPng$default(TrackPreviewView trackPreviewView, int i, int i2, boolean z, int i3, int i4, boolean z2, List list, float f, float f2, float f3, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = 1024;
        }
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            z = false;
        }
        if ((i5 & 8) != 0) {
            i3 = 2;
        }
        if ((i5 & 16) != 0) {
            i4 = 0;
        }
        if ((i5 & 32) != 0) {
            z2 = true;
        }
        if ((i5 & 64) != 0) {
            list = StickerCore.INSTANCE.getITEM_DEFAULT();
        }
        if ((i5 & 128) != 0) {
            f = trackPreviewView.dx;
        }
        if ((i5 & 256) != 0) {
            f2 = trackPreviewView.dy;
        }
        if ((i5 & 512) != 0) {
            f3 = trackPreviewView.scale;
        }
        float f4 = f2;
        float f5 = f3;
        List list2 = list;
        float f6 = f;
        return trackPreviewView.exportTransparentPng(i, i2, z, i3, i4, z2, list2, f6, f4, f5);
    }

    public final Bitmap exportTransparentPng(int sizePx, int dataStyle, boolean include3d, int lineColorMode, int textColorMode, boolean watermark, List<Integer> items, float dx, float dy, float scale) {
        Intrinsics.checkNotNullParameter(items, "items");
        Bitmap createBitmap = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        float f = sizePx;
        drawSticker(new Canvas(createBitmap), f, f, dataStyle, include3d, lineColorMode, textColorMode, items, dx, dy, scale, watermark);
        return createBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void drawTemplateSticker(Canvas c, float w, float h, List<Integer> itms, float ox, float oy, float sc, boolean wm, boolean tBg) {
        float f;
        float f2;
        if (this.points.isEmpty()) {
            this.paint.setColor(-6643546);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(1.0f);
            this.paint.setTextSize(14.0f);
            this.paint.setTextAlign(Paint.Align.CENTER);
            drawStickerText$default(this, c, "暂无轨迹数据", w / 2.0f, h / 2.0f, 0, 0.0f, 48, null);
            return;
        }
        float min = Math.min(w, h);
        if (!tBg) {
            drawTemplateBg(c, min);
        }
        float f3 = 0.2f;
        float f4 = 0.3f;
        switch (WhenMappings.$EnumSwitchMapping$1[this.layoutType.ordinal()]) {
            case 1:
            case 2:
                break;
            case 3:
                f4 = 0.28f;
                break;
            case 4:
                f4 = 0.26f;
                break;
            case 5:
            case 6:
                f4 = 0.2f;
                break;
            default:
                f4 = 0.205f;
                break;
        }
        float f5 = 117.76f * min;
        float f6 = 0.04f * w;
        float max = Math.max(307.2f * min, ((((h - f5) - (94.208f * min)) - ((f4 * 1024) * min)) - (30.72f * min)) - ((!this.show3dBand || this.points.size() < 2) ? 0.0f : Math.max(0.15f * h, 120.0f * min))) + f5;
        switch (WhenMappings.$EnumSwitchMapping$1[this.layoutType.ordinal()]) {
            case 1:
                f = f3 * min;
                break;
            case 2:
            default:
                f = min * 0.62f;
                break;
            case 3:
                f3 = 0.56f;
                f = f3 * min;
                break;
            case 4:
                f3 = 0.6f;
                f = f3 * min;
                break;
            case 5:
                f3 = 0.82f;
                f = f3 * min;
                break;
            case 6:
                f3 = 0.58f;
                f = f3 * min;
                break;
            case 7:
                f3 = 0.13f;
                f = f3 * min;
                break;
        }
        float f7 = f;
        float f8 = (!this.show3dBand || this.layoutType == StickerCore.StickerLayout.GRID || this.layoutType == StickerCore.StickerLayout.BAR || this.layoutType == StickerCore.StickerLayout.POSTER) ? 0.0f : 0.1f * min;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            c.save();
            c.rotate(rotation, (w / 2.0f) + (ox * sc), ((f5 + max) * 0.5f) + (oy * sc));
            drawTemplateTrack(c, f6, f5, w * 0.96f, max, ox, oy, sc);
            c.restore();
        } else {
            drawTemplateTrack(c, f6, f5, w * 0.96f, max, ox, oy, sc);
        }
        float f9 = 0.02f * min;
        float f10 = max + f9;
        float min2 = f7 > f10 ? Math.min(f8 + f10, f7 - f9) : f10 + f8;
        if (this.show3dBand && min2 > (0.01f * min) + f10) {
            drawTerrainBand(c, min * 0.05f, f10, min * 0.95f, min2, false);
        }
        int stickerTextColorOf = stickerTextColorOf(this.textType);
        if (this.dataLayerOn) {
            f2 = min;
            drawTemplateLayout(c, f2, stickerTextColorOf, itms, 0.0f);
        } else {
            f2 = min;
        }
        if (wm && this.watermarkOn) {
            drawWatermark(c, f2, stickerTextColorOf);
        }
    }

    private final void drawTemplateBg(Canvas c, float s) {
        switch (WhenMappings.$EnumSwitchMapping$2[this.bgType.ordinal()]) {
            case 1:
                fillGrad(c, s, -16052186, -14998464);
                drawStars(c, s, 7, 42, 153);
                return;
            case 2:
                drawChecker(c, s);
                return;
            case 3:
                fillGrad(c, s, -15071949, -11788907);
                drawStars(c, s, 11, 26, 119);
                return;
            case 4:
                fillGrad(c, s, ViewCompat.MEASURED_STATE_MASK, -16119281);
                return;
            case 5:
                fillGrad(c, s, -1, -855051);
                return;
            case 6:
                fillGrad(c, s, -264726, -858157);
                return;
            case 7:
                fillGrad(c, s, -723723, -1776409);
                drawRoadGrid(c, s, 437327911);
                return;
            case 8:
                fillGrad(c, s, -2067, -5940);
                return;
            case 9:
                fillGrad(c, s, -1051658, -2234900);
                drawRoadGrid(c, s, 865575856);
                return;
            case 10:
                fillGrad(c, s, -15918294, -14992821);
                drawSatellite(c, s);
                return;
            case 11:
                fillGrad(c, s, -593433, -1383726);
                drawLightMap(c, s);
                return;
            case 12:
                fillGrad(c, s, -15723496, -14932948);
                drawContours(c, s);
                return;
            case 13:
                fillGrad(c, s, -16119286, -12908022);
                return;
            case 14:
                fillGrad(c, s, -15462388, -12966896);
                return;
            case 15:
                fillGrad(c, s, -16313569, -15844790);
                return;
            case 16:
                fillGrad(c, s, -16448753, -15069645);
                return;
            case 17:
                fillGrad(c, s, -15921129, -14801872);
                return;
            case 18:
                fillGrad(c, s, -242686, -30148);
                return;
            case 19:
                fillGrad(c, s, -13821106, -9623335);
                drawStars(c, s, 5, 30, 102);
                return;
            case 20:
                fillGrad(c, s, -16118244, -15326403);
                drawStars(c, s, 9, 50, 136);
                return;
            case 21:
            case 22:
            case 23:
                drawPhotoBg(c, s, this.bgType);
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final void drawPhotoBg(Canvas c, float s, StickerCore.StickerBg t) {
        Bitmap bitmap = this.overlayBitmap;
        if (bitmap == null) {
            if (t == StickerCore.StickerBg.PHOTO_OVERLAY) {
                fillGrad(c, s, -16052186, -14998464);
                drawStars(c, s, 7, 7, 136);
                float f = s * 0.45f;
                float f2 = s * 0.95f;
                float f3 = s * 0.12f;
                float f4 = s * 0.88f;
                this.paint.reset();
                this.paint.setAntiAlias(true);
                this.paint.setColor(858492159);
                float f5 = s * 0.02f;
                c.drawRoundRect(f, f3, f2, f4, f5, f5, this.paint);
                this.paint.setStyle(Paint.Style.STROKE);
                this.paint.setStrokeWidth(0.004f * s);
                this.paint.setColor(1714130175);
                c.drawRoundRect(f, f3, f2, f4, f5, f5, this.paint);
                this.paint.setStyle(Paint.Style.FILL);
                this.paint.setTextSize(0.035f * s);
                this.paint.setTextAlign(Paint.Align.CENTER);
                this.paint.setColor(-1711276033);
                c.drawText("照片", (f + f2) / 2.0f, (f3 + f4) / 2.0f, this.paint);
                return;
            }
            fillGrad(c, s, -16052186, -14998464);
            drawStars(c, s, 7, 7, 136);
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setTextSize(0.045f * s);
            this.paint.setTextAlign(Paint.Align.CENTER);
            this.paint.setColor(1728053247);
            c.drawText("点击「选照片」添加背景图", s / 2.0f, 0.5f * s, this.paint);
            return;
        }
        BitmapShader bitmapShader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        Matrix matrix = new Matrix();
        float max = Math.max(s / bitmap.getWidth(), s / bitmap.getHeight());
        matrix.setScale(max, max);
        matrix.postTranslate((s - (bitmap.getWidth() * max)) / 2.0f, (s - (bitmap.getHeight() * max)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        int i = WhenMappings.$EnumSwitchMapping$2[t.ordinal()];
        if (i == 22) {
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setShader(bitmapShader);
            c.drawRect(0.0f, 0.0f, s, s, this.paint);
            this.paint.setShader(null);
            fillGrad(c, s, -1442115546, -1726274496);
            return;
        }
        if (i == 23) {
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setShader(bitmapShader);
            c.drawRect(0.0f, 0.0f, s, s * 0.55f, this.paint);
            this.paint.setShader(null);
            fillGrad(c, s, -16052186, -14998464);
            return;
        }
        this.paint.reset();
        this.paint.setAntiAlias(true);
        float f6 = s * 0.45f;
        float f7 = s * 0.95f;
        float f8 = s * 0.12f;
        float f9 = s * 0.88f;
        Path path = new Path();
        float f10 = s * 0.02f;
        path.addRoundRect(f6, f8, f7, f9, f10, f10, Path.Direction.CW);
        c.save();
        c.clipPath(path);
        this.paint.setShader(bitmapShader);
        c.drawRect(f6, f8, f7, f9, this.paint);
        this.paint.setShader(null);
        c.restore();
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setColor(855638016);
        c.drawRect(0.0f, 0.0f, f6, s, this.paint);
    }

    private final void fillGrad(Canvas c, float s, int top, int bottom) {
        this.fillPaint.setShader(new LinearGradient(0.0f, 0.0f, s * 0.25f, s, top, bottom, Shader.TileMode.CLAMP));
        c.drawRect(0.0f, 0.0f, s, s, this.fillPaint);
        this.fillPaint.setShader(null);
    }

    private final void drawStars(Canvas c, float s, int seed, int n, int alpha) {
        Random random = new Random(seed);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        for (int i = 0; i < n; i++) {
            float nextFloat = random.nextFloat() * s;
            float nextFloat2 = random.nextFloat() * s * 0.85f;
            float nextFloat3 = (random.nextFloat() * 2.2f) + 1.0f;
            this.paint.setColor(Color.argb(alpha, 255, 255, 255));
            c.drawCircle(nextFloat, nextFloat2, nextFloat3, this.paint);
        }
    }

    private final void drawChecker(Canvas c, float s) {
        float f = s / 8;
        this.fillPaint.setColor(-15724524);
        c.drawRect(0.0f, 0.0f, s, s, this.fillPaint);
        this.fillPaint.setColor(-14013902);
        for (int i = 0; i < 8; i++) {
            for (int i2 = 0; i2 < 8; i2++) {
                if ((i + i2) % 2 == 0) {
                    c.drawRect(i * f, i2 * f, (i + 1) * f, (i2 + 1) * f, this.fillPaint);
                }
            }
        }
        this.fillPaint.setColor(352321535);
        c.drawRect(0.0f, 0.0f, s, s * 0.05f, this.fillPaint);
    }

    private final void drawRoadGrid(Canvas c, float s, int gridColor) {
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(Math.max(0.0012f * s, 0.8f));
        this.paint.setColor(gridColor);
        for (int i = 1; i < 9; i++) {
            float f = (i * s) / 9.0f;
            c.drawLine(f, 0.0f, f, s, this.paint);
            c.drawLine(0.0f, f, s, f, this.paint);
        }
        this.paint.setStrokeWidth(Math.max(0.006f * s, 2.0f));
        this.paint.setColor(Color.argb(Color.alpha(gridColor) + 30, LapMesg.AvgFlowFieldNum, 166, 179));
        Path path = new Path();
        float f2 = (-s) * 0.05f;
        float f3 = s * 0.3f;
        path.moveTo(f2, f3);
        float f4 = s * 0.55f;
        float f5 = s * 1.05f;
        float f6 = s * 0.35f;
        path.cubicTo(f3, s * 0.1f, s * 0.6f, f4, f5, f6);
        c.drawPath(path, this.paint);
        this.paint.setStrokeWidth(Math.max(0.004f * s, 1.5f));
        Path path2 = new Path();
        path2.moveTo(0.4f * s, f2);
        path2.cubicTo(s * 0.25f, f6, s * 0.75f, s * 0.5f, f4, f5);
        c.drawPath(path2, this.paint);
    }

    private final void drawSatellite(Canvas c, float s) {
        Random random = new Random(23L);
        this.fillPaint.setStyle(Paint.Style.FILL);
        for (int i = 0; i < 14; i++) {
            float nextFloat = random.nextFloat() * s;
            float nextFloat2 = random.nextFloat() * s;
            float nextFloat3 = ((random.nextFloat() * 0.16f) + 0.05f) * s;
            float nextFloat4 = ((random.nextFloat() * 0.14f) + 0.05f) * s;
            this.fillPaint.setColor(Color.argb(38, 156, 232, 255));
            c.drawRoundRect(nextFloat, nextFloat2, nextFloat + nextFloat3, nextFloat2 + nextFloat4, nextFloat3 * 0.2f, nextFloat4 * 0.2f, this.fillPaint);
        }
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(Math.max(0.003f * s, 1.2f));
        this.paint.setColor(860847006);
        Path path = new Path();
        float f = (-s) * 0.05f;
        path.moveTo(f, 0.25f * s);
        float f2 = s * 1.05f;
        float f3 = s * 0.45f;
        path.cubicTo(s * 0.35f, s * 0.4f, s * 0.55f, s * 0.1f, f2, f3);
        Path path2 = new Path();
        path2.moveTo(0.2f * s, f);
        path2.cubicTo(0.15f * s, f3, s * 0.7f, s * 0.6f, s * 0.8f, f2);
        c.drawPath(path, this.paint);
        c.drawPath(path2, this.paint);
    }

    private final void drawLightMap(Canvas c, float s) {
        this.fillPaint.setStyle(Paint.Style.FILL);
        this.fillPaint.setColor(1724311488);
        float f = s * 0.5f;
        float f2 = s * 0.03f;
        c.drawRoundRect(s * 0.08f, s * 0.12f, s * 0.55f, f, f2, f2, this.fillPaint);
        this.fillPaint.setColor(1722340072);
        c.drawRoundRect(f, s * 0.45f, s * 0.95f, s * 0.9f, f2, f2, this.fillPaint);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(Math.max(0.007f * s, 2.5f));
        this.paint.setColor(-1);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        Path path = new Path();
        float f3 = (-s) * 0.05f;
        float f4 = 0.35f * s;
        path.moveTo(f3, f4);
        float f5 = s * 0.6f;
        float f6 = s * 1.05f;
        path.cubicTo(s * 0.3f, f, f5, s * 0.2f, f6, f5);
        c.drawPath(path, this.paint);
        this.paint.setStrokeWidth(Math.max(0.005f * s, 2.0f));
        Path path2 = new Path();
        path2.moveTo(f4, f3);
        float f7 = 0.4f * s;
        path2.cubicTo(f7, f7, 0.25f * s, f5, f5, f6);
        c.drawPath(path2, this.paint);
    }

    private final void drawContours(Canvas c, float s) {
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(Math.max(0.0015f * s, 1.0f));
        int[] iArr = {871457578, 779924290, 774485750, 870431119};
        for (int i = 0; i < 4; i++) {
            this.paint.setColor(iArr[i]);
            float f = i;
            float f2 = ((0.08f * f) + 0.5f) * s;
            float f3 = s * ((0.1f * f) + 0.42f);
            float f4 = ((f * 0.14f) + 0.12f) * s;
            float f5 = 0.62f * f4;
            Path path = new Path();
            float f6 = f2 - f4;
            path.moveTo(f6, f3);
            float f7 = 0.5f * f4;
            float f8 = f2 - f7;
            float f9 = f3 - f5;
            float f10 = f7 + f2;
            path.cubicTo(f8, f9, f10, f9, f2 + f4, f3);
            float f11 = f3 + f5;
            path.cubicTo(f10, f11, f8, f11, f6, f3);
            path.close();
            c.drawPath(path, this.paint);
            Path path2 = new Path(path);
            path2.offset((-s) * 0.03f, 0.045f * s);
            c.drawPath(path2, this.paint);
        }
    }

    private final void drawTemplateTrack(Canvas c, float l, float t, float r, float b, float ox, float oy, float sc) {
        List<GpxToFitConverter.TrackPoint> list = this.points;
        if (list.size() < 2) {
            return;
        }
        float f = r - l;
        float f2 = b - t;
        if (this.trackType == StickerCore.StickerTrack.ICE_3D || (this.trackType == StickerCore.StickerTrack.ORANGE_GRAD && this.bgType == StickerCore.StickerBg.ORANGE_BAND)) {
            drawTerrainBand(c, l, t, r, b, this.trackType == StickerCore.StickerTrack.ICE_3D);
            return;
        }
        List<Pair<Float, Float>> projectTrackEx = StickerCore.INSTANCE.projectTrackEx(list, f, f2, 18.0f, ox, oy, sc);
        if (projectTrackEx.size() < 2) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$3[this.trackType.ordinal()]) {
            case 1:
                drawGlowPath(c, projectTrackEx, this.glowOn && !this.track3d);
                drawSimpleLine(c, projectTrackEx, -1, this.lineWidth, 1.0f);
                return;
            case 2:
                drawSimpleLine(c, projectTrackEx, -15656921, this.lineWidth * 0.8f, 1.0f);
                return;
            case 3:
                drawSimpleLine(c, projectTrackEx, -6643546, this.lineWidth * 0.8f, 1.0f);
                return;
            case 4:
                drawGlowPath(c, projectTrackEx, this.glowOn && !this.track3d);
                drawGradientSegments(c, projectTrackEx, list);
                return;
            case 5:
                drawNeon(c, projectTrackEx);
                return;
            case 6:
                float[] pointSpeeds = StickerCore.INSTANCE.pointSpeeds(list);
                float f3 = Float.MAX_VALUE;
                float f4 = 0.0f;
                for (float f5 : pointSpeeds) {
                    if (f5 > 0.1f) {
                        if (f5 < f3) {
                            f3 = f5;
                        }
                        if (f5 > f4) {
                            f4 = f5;
                        }
                    }
                }
                if (f4 <= f3) {
                    f4 = f3 + 1.0f;
                }
                drawBanded(c, projectTrackEx, list, pointSpeeds, f3, f4, new Function1() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int speedColor;
                        speedColor = TrackPreviewView.this.speedColor(((Float) obj).floatValue());
                        return Integer.valueOf(speedColor);
                    }
                });
                return;
            case 7:
            case 8:
                drawPhantom(c, projectTrackEx);
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final void drawSimpleLine(Canvas c, List<Pair<Float, Float>> projected, int color, float width, float alpha) {
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeWidth(width);
        this.paint.setColor(Color.argb((int) (alpha * 255), Color.red(color), Color.green(color), Color.blue(color)));
        Path path = new Path();
        int i = 0;
        for (Object obj : projected) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            float floatValue = ((Number) pair.component1()).floatValue();
            float floatValue2 = ((Number) pair.component2()).floatValue();
            if (i == 0) {
                path.moveTo(floatValue, floatValue2);
            } else {
                path.lineTo(floatValue, floatValue2);
            }
            i = i2;
        }
        c.drawPath(path, this.paint);
    }

    private final void drawGlowPath(Canvas c, List<Pair<Float, Float>> projected, boolean on) {
        if (on) {
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeCap(Paint.Cap.ROUND);
            this.paint.setStrokeJoin(Paint.Join.ROUND);
            this.paint.setStrokeWidth(this.lineWidth * 4.0f);
            this.paint.setColor(Color.argb(56, 43, 140, 255));
            Path path = new Path();
            int i = 0;
            for (Object obj : projected) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair pair = (Pair) obj;
                float floatValue = ((Number) pair.component1()).floatValue();
                float floatValue2 = ((Number) pair.component2()).floatValue();
                if (i == 0) {
                    path.moveTo(floatValue, floatValue2);
                } else {
                    path.lineTo(floatValue, floatValue2);
                }
                i = i2;
            }
            c.drawPath(path, this.paint);
        }
    }

    private final void drawNeon(Canvas c, List<Pair<Float, Float>> projected) {
        int lerp;
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeWidth(this.lineWidth * 5.0f);
        this.paint.setColor(1157582808);
        Path path = new Path();
        int i = 0;
        int i2 = 0;
        for (Object obj : projected) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            float floatValue = ((Number) pair.component1()).floatValue();
            float floatValue2 = ((Number) pair.component2()).floatValue();
            if (i2 == 0) {
                path.moveTo(floatValue, floatValue2);
            } else {
                path.lineTo(floatValue, floatValue2);
            }
            i2 = i3;
        }
        c.drawPath(path, this.paint);
        this.paint.setStrokeWidth(this.lineWidth * 1.4f);
        int size = projected.size() - 1;
        while (i < size) {
            float max = i / Math.max(projected.size() - 2, 1);
            if (max < 0.5f) {
                lerp = lerp(-45096, -5745161, max * 2.0f);
            } else {
                lerp = lerp(-5745161, -14494738, (max - 0.5f) * 2.0f);
            }
            this.paint.setColor(Color.argb(242, Color.red(lerp), Color.green(lerp), Color.blue(lerp)));
            float floatValue3 = projected.get(i).getFirst().floatValue();
            float floatValue4 = projected.get(i).getSecond().floatValue();
            i++;
            c.drawLine(floatValue3, floatValue4, projected.get(i).getFirst().floatValue(), projected.get(i).getSecond().floatValue(), this.paint);
        }
    }

    private final void drawPhantom(Canvas c, List<Pair<Float, Float>> projected) {
        for (int i = 0; i < 4; i++) {
            float f = this.lineWidth * (((3 - i) * 1.8f) + 1.0f);
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeCap(Paint.Cap.ROUND);
            this.paint.setStrokeJoin(Paint.Join.ROUND);
            this.paint.setStrokeWidth(f);
            this.paint.setColor(Color.argb((i * 22) + 20, 124, SessionMesg.WorkoutFeelFieldNum, 255));
            Path path = new Path();
            int i2 = 0;
            for (Object obj : projected) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair pair = (Pair) obj;
                float floatValue = ((Number) pair.component1()).floatValue();
                float floatValue2 = ((Number) pair.component2()).floatValue();
                if (i2 == 0) {
                    path.moveTo(floatValue, floatValue2);
                } else {
                    path.lineTo(floatValue, floatValue2);
                }
                i2 = i3;
            }
            c.drawPath(path, this.paint);
        }
        drawSimpleLine(c, projected, -6559489, this.lineWidth * 1.1f, 0.95f);
    }

    private final void drawTerrainBand(Canvas c, float l, float t, float r, float b, boolean ice) {
        float f = r - l;
        StickerCore.TerrainGeom elevationTerrain = StickerCore.INSTANCE.elevationTerrain(this.points, l, t, r, b, f * 0.022f, 5);
        if (elevationTerrain.getProfile().size() < 2) {
            return;
        }
        int i = ice ? -11549705 : -957654;
        int i2 = ice ? -15840662 : -2535906;
        int i3 = ice ? 1716503543 : 1727095594;
        Path path = new Path();
        int i4 = 0;
        for (Object obj : elevationTerrain.getSide()) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            float floatValue = ((Number) pair.component1()).floatValue();
            float floatValue2 = ((Number) pair.component2()).floatValue();
            if (i4 == 0) {
                path.moveTo(floatValue, floatValue2);
            } else {
                path.lineTo(floatValue, floatValue2);
            }
            i4 = i5;
        }
        for (Pair pair2 : CollectionsKt.asReversed(elevationTerrain.getProfile())) {
            path.lineTo(((Number) pair2.component1()).floatValue(), ((Number) pair2.component2()).floatValue());
        }
        path.close();
        this.fillPaint.setShader(new LinearGradient(l, b, l, t, i2, i3, Shader.TileMode.CLAMP));
        c.drawPath(path, this.fillPaint);
        this.fillPaint.setShader(null);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(Math.max(0.0025f * f, 1.0f));
        int i6 = 0;
        for (Object obj2 : elevationTerrain.getContours()) {
            int i7 = i6 + 1;
            if (i6 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            List list = (List) obj2;
            if (list.size() >= 2) {
                int i8 = (i6 * 8) + 48;
                this.paint.setColor(ice ? Color.argb(i8, SessionMesg.O2ToxicityFieldNum, 232, 255) : Color.argb(i8, 255, 217, MesgNum.VIDEO));
                Path path2 = new Path();
                int i9 = 0;
                for (Object obj3 : list) {
                    int i10 = i9 + 1;
                    if (i9 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    Pair pair3 = (Pair) obj3;
                    float floatValue3 = ((Number) pair3.component1()).floatValue();
                    float floatValue4 = ((Number) pair3.component2()).floatValue();
                    if (i9 == 0) {
                        path2.moveTo(floatValue3, floatValue4);
                    } else {
                        path2.lineTo(floatValue3, floatValue4);
                    }
                    i9 = i10;
                }
                c.drawPath(path2, this.paint);
            }
            i6 = i7;
        }
        Path path3 = new Path();
        int i11 = 0;
        for (Object obj4 : elevationTerrain.getProfile()) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair4 = (Pair) obj4;
            float floatValue5 = ((Number) pair4.component1()).floatValue();
            float floatValue6 = ((Number) pair4.component2()).floatValue();
            if (i11 == 0) {
                path3.moveTo(floatValue5, floatValue6);
            } else {
                path3.lineTo(floatValue5, floatValue6);
            }
            i11 = i12;
        }
        path3.lineTo(r, b);
        path3.lineTo(l, b);
        path3.close();
        this.fillPaint.setColor(ice ? 542098423 : 653353770);
        c.drawPath(path3, this.fillPaint);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeWidth(Math.max(0.005f * f, 1.8f));
        this.paint.setColor(i);
        Path path4 = new Path();
        int i13 = 0;
        for (Object obj5 : elevationTerrain.getProfile()) {
            int i14 = i13 + 1;
            if (i13 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair5 = (Pair) obj5;
            float floatValue7 = ((Number) pair5.component1()).floatValue();
            float floatValue8 = ((Number) pair5.component2()).floatValue();
            if (i13 == 0) {
                path4.moveTo(floatValue7, floatValue8);
            } else {
                path4.lineTo(floatValue7, floatValue8);
            }
            i13 = i14;
        }
        c.drawPath(path4, this.paint);
        int size = elevationTerrain.getProfile().size();
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < size; i17++) {
            if (elevationTerrain.getProfile().get(i17).getSecond().floatValue() < elevationTerrain.getProfile().get(i15).getSecond().floatValue()) {
                i15 = i17;
            }
            if (elevationTerrain.getProfile().get(i17).getSecond().floatValue() > elevationTerrain.getProfile().get(i16).getSecond().floatValue()) {
                i16 = i17;
            }
        }
        Pair<Float, Float> pair6 = elevationTerrain.getProfile().get(i15);
        float floatValue9 = pair6.component1().floatValue();
        float floatValue10 = pair6.component2().floatValue();
        Pair<Float, Float> pair7 = elevationTerrain.getProfile().get(i16);
        float floatValue11 = pair7.component1().floatValue();
        float floatValue12 = pair7.component2().floatValue();
        float max = Math.max(0.009f * f, 3.5f);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(ice ? -4199937 : -3610);
        c.drawCircle(floatValue9, floatValue10, max, this.paint);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(Math.max(0.35f * max, 1.5f));
        this.paint.setColor(i);
        c.drawCircle(floatValue9, floatValue10, max, this.paint);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setTextAlign(Paint.Align.CENTER);
        float max2 = Math.max(f * 0.024f, 9.0f);
        this.paint.setTextSize(max2);
        this.paint.setTypeface(Typeface.DEFAULT_BOLD);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.US, "▲ %.0fm", Arrays.copyOf(new Object[]{Float.valueOf(elevationTerrain.getEMax())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String format2 = String.format(Locale.US, "▼ %.0fm", Arrays.copyOf(new Object[]{Float.valueOf(elevationTerrain.getEMin())}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        float f2 = max * 2.2f;
        drawStickerText$default(this, c, format, floatValue9, RangesKt.coerceAtLeast(floatValue10 - f2, t + max2), ice ? -1837313 : -2322, 0.0f, 32, null);
        drawStickerText$default(this, c, format2, floatValue11, RangesKt.coerceAtMost(floatValue12 + f2 + (0.8f * max2), b - (max2 * 1.2f)), ice ? -1837313 : -2322, 0.0f, 32, null);
    }

    static /* synthetic */ void drawTemplateLayout$default(TrackPreviewView trackPreviewView, Canvas canvas, float f, int i, List list, float f2, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            f2 = 0.0f;
        }
        trackPreviewView.drawTemplateLayout(canvas, f, i, list, f2);
    }

    private final void drawTemplateLayout(Canvas c, float s, int txtColor, List<Integer> itms, float off) {
        switch (WhenMappings.$EnumSwitchMapping$1[this.layoutType.ordinal()]) {
            case 1:
                drawLayoutPoster(c, s, txtColor, itms, off);
                return;
            case 2:
                drawLayoutTriple(c, s, txtColor, itms, off);
                return;
            case 3:
                drawLayoutGrid(c, s, txtColor, itms, off);
                return;
            case 4:
                drawLayoutBig(c, s, txtColor, itms, off);
                return;
            case 5:
                drawLayoutBar(c, s, txtColor, itms, off);
                return;
            case 6:
                drawLayoutDual(c, s, txtColor, itms, off);
                return;
            case 7:
                drawLayoutCorner(c, s, txtColor, itms, off);
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    static /* synthetic */ float fitTextSize$default(TrackPreviewView trackPreviewView, String str, float f, float f2, float f3, int i, Object obj) {
        if ((i & 8) != 0) {
            f3 = 0.62f;
        }
        return trackPreviewView.fitTextSize(str, f, f2, f3);
    }

    private final float fitTextSize(String text, float baseSize, float maxW, float minRatio) {
        this.paint.setTextSize(baseSize);
        float f = baseSize;
        while (f > baseSize * minRatio && this.paint.measureText(text) > maxW) {
            f *= 0.9f;
            this.paint.setTextSize(f);
        }
        return f;
    }

    static /* synthetic */ void drawStickerText$default(TrackPreviewView trackPreviewView, Canvas canvas, String str, float f, float f2, int i, float f3, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            i = trackPreviewView.paint.getColor();
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            f3 = Float.MAX_VALUE;
        }
        trackPreviewView.drawStickerText(canvas, str, f, f2, i3, f3);
    }

    private final void drawStickerText(Canvas c, String text, float x, float y, int fillColor, float maxW) {
        int color = this.paint.getColor();
        Paint.Style style = this.paint.getStyle();
        float strokeWidth = this.paint.getStrokeWidth();
        this.paint.setColor(fillColor);
        float red = (Color.red(fillColor) * 0.299f) + (Color.green(fillColor) * 0.587f) + (Color.blue(fillColor) * 0.114f);
        if (Math.abs(maxW) <= Float.MAX_VALUE && this.paint.measureText(text) > maxW) {
            int i = 0;
            while (this.paint.measureText(text) > maxW && i < 4) {
                String shrinkNum = StickerCore.INSTANCE.shrinkNum(text);
                if (Intrinsics.areEqual(shrinkNum, text)) {
                    break;
                }
                i++;
                text = shrinkNum;
            }
        }
        this.paint.setStyle(Paint.Style.STROKE);
        Paint paint = this.paint;
        paint.setStrokeWidth(Math.max(paint.getTextSize() * 0.1f, 2.5f));
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setColor(red > 140.0f ? -434102240 : -855638017);
        c.drawText(text, x, y, this.paint);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(fillColor);
        c.drawText(text, x, y, this.paint);
        this.paint.setColor(color);
        this.paint.setStyle(style);
        this.paint.setStrokeWidth(strokeWidth);
    }

    private final void drawLayoutTriple(Canvas c, float s, int txtColor, List<Integer> itms, float off) {
        String first;
        String second;
        TrackPreviewView trackPreviewView = this;
        List take = CollectionsKt.take(itms, 3);
        if (take.isEmpty()) {
            return;
        }
        StickerCore.TrackStats computeStats = trackPreviewView.computeStats();
        float f = s * 0.1f;
        Iterator it = take.iterator();
        float f2 = (0.62f * s) + off;
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            String itemValue = StickerCore.INSTANCE.itemValue(intValue, computeStats);
            Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str = (pair == null || (second = pair.getSecond()) == null) ? "" : second;
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str2 = (pair2 == null || (first = pair2.getFirst()) == null) ? "" : first;
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextAlign(Paint.Align.LEFT);
            trackPreviewView.paint.setTextSize(0.075f * s);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
            trackPreviewView.paint.setColor(txtColor);
            float measureText = trackPreviewView.paint.measureText(itemValue);
            drawStickerText$default(trackPreviewView, c, itemValue, f, f2, 0, s * 0.9f, 16, null);
            float f3 = f;
            float f4 = f2;
            if (str.length() > 0) {
                trackPreviewView.paint.setTextSize(0.026f * s);
                trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
                trackPreviewView.paint.setColor(Color.argb(179, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
                float f5 = 0.012f * s;
                drawStickerText$default(trackPreviewView, c, str, f3 + measureText + f5, f4 - f5, 0, s * 0.3f, 16, null);
            }
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextSize(0.024f * s);
            trackPreviewView.paint.setTypeface(null);
            trackPreviewView.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            trackPreviewView.paint.setTextAlign(Paint.Align.LEFT);
            drawStickerText$default(trackPreviewView, c, str2, f3 + (0.004f * s), f4 + (0.06f * s), 0, 0.0f, 48, null);
            f2 = f4 + (0.11f * s);
            trackPreviewView = this;
            f = f3;
        }
    }

    private final void drawLayoutCorner(Canvas c, float s, int txtColor, List<Integer> itms, float off) {
        String first;
        String second;
        TrackPreviewView trackPreviewView = this;
        List take = CollectionsKt.take(itms, 2);
        if (take.isEmpty()) {
            return;
        }
        StickerCore.TrackStats computeStats = trackPreviewView.computeStats();
        float f = s * 0.1f;
        Iterator it = take.iterator();
        float f2 = (0.13f * s) + off;
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            String itemValue = StickerCore.INSTANCE.itemValue(intValue, computeStats);
            Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str = (pair == null || (second = pair.getSecond()) == null) ? "" : second;
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str2 = (pair2 == null || (first = pair2.getFirst()) == null) ? "" : first;
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextAlign(Paint.Align.LEFT);
            trackPreviewView.paint.setTextSize(0.055f * s);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
            trackPreviewView.paint.setColor(txtColor);
            float measureText = trackPreviewView.paint.measureText(itemValue);
            drawStickerText$default(trackPreviewView, c, itemValue, f, f2, 0, s * 0.9f, 16, null);
            float f3 = f;
            float f4 = f2;
            if (str.length() > 0) {
                trackPreviewView.paint.setTextSize(s * 0.022f);
                trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
                trackPreviewView.paint.setColor(Color.argb(179, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
                float f5 = 0.01f * s;
                drawStickerText$default(trackPreviewView, c, str, f3 + measureText + f5, f4 - f5, 0, s * 0.3f, 16, null);
            }
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextSize(s * 0.022f);
            trackPreviewView.paint.setTypeface(null);
            trackPreviewView.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            trackPreviewView.paint.setTextAlign(Paint.Align.LEFT);
            drawStickerText$default(trackPreviewView, c, str2, f3 + (0.004f * s), f4 + (0.06f * s), 0, 0.0f, 48, null);
            f2 = f4 + (0.11f * s);
            trackPreviewView = this;
            f = f3;
        }
    }

    private final void drawLayoutGrid(Canvas c, float s, int txtColor, List<Integer> itms, float off) {
        String first;
        String second;
        TrackPreviewView trackPreviewView = this;
        List take = CollectionsKt.take(itms, 6);
        if (take.isEmpty()) {
            return;
        }
        StickerCore.TrackStats computeStats = trackPreviewView.computeStats();
        int i = 0;
        float[] fArr = {0.21f * s, 0.5f * s, 0.79f * s};
        float f = s * 0.12f;
        float f2 = (0.56f * s) + off;
        for (Object obj : take) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            int intValue = ((Number) obj).intValue();
            float f3 = fArr[i % 3];
            float f4 = f2 + ((i / 3) * f);
            String itemValue = StickerCore.INSTANCE.itemValue(intValue, computeStats);
            Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str = (pair == null || (second = pair.getSecond()) == null) ? "" : second;
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str2 = (pair2 == null || (first = pair2.getFirst()) == null) ? "" : first;
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            trackPreviewView.paint.setTextSize(0.042f * s);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
            trackPreviewView.paint.setColor(txtColor);
            float measureText = trackPreviewView.paint.measureText(itemValue);
            drawStickerText$default(trackPreviewView, c, itemValue, f3, f4, 0, s * 0.26f, 16, null);
            if (str.length() > 0) {
                trackPreviewView.paint.setTextSize(0.02f * s);
                trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
                trackPreviewView.paint.setColor(Color.argb(179, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
                float f5 = 0.01f * s;
                drawStickerText$default(trackPreviewView, c, str, f3 + (measureText / 2.0f) + f5, f4 - f5, 0, s * 0.14f, 16, null);
            }
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextSize(0.024f * s);
            trackPreviewView.paint.setTypeface(null);
            trackPreviewView.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            drawStickerText$default(trackPreviewView, c, str2, f3, f4 + (0.06f * s), 0, 0.0f, 48, null);
            trackPreviewView = this;
            i = i2;
        }
    }

    private final void drawLayoutBig(Canvas c, float s, int txtColor, List<Integer> itms, float off) {
        String first;
        String second;
        TrackPreviewView trackPreviewView = this;
        StickerCore.TrackStats computeStats = trackPreviewView.computeStats();
        List take = CollectionsKt.take(itms, 3);
        if (take.isEmpty()) {
            return;
        }
        Iterator it = take.iterator();
        float f = (0.52f * s) + off;
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            String itemValue = StickerCore.INSTANCE.itemValue(intValue, computeStats);
            Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str = (pair == null || (second = pair.getSecond()) == null) ? "" : second;
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str2 = (pair2 == null || (first = pair2.getFirst()) == null) ? "" : first;
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            trackPreviewView.paint.setTextSize(0.078f * s);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
            trackPreviewView.paint.setColor(txtColor);
            float measureText = trackPreviewView.paint.measureText(itemValue);
            float f2 = s / 2.0f;
            drawStickerText$default(trackPreviewView, c, itemValue, f2, f, 0, s * 0.9f, 16, null);
            float f3 = f;
            if (str.length() > 0) {
                trackPreviewView.paint.setTextSize(0.03f * s);
                trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
                trackPreviewView.paint.setColor(Color.argb(179, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
                float f4 = 0.014f * s;
                drawStickerText$default(trackPreviewView, c, str, f2 + (measureText / 2.0f) + f4, f3 - f4, 0, s * 0.3f, 16, null);
            }
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextSize(0.026f * s);
            trackPreviewView.paint.setTypeface(null);
            trackPreviewView.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            drawStickerText$default(trackPreviewView, c, str2, f2, f3 + (0.06f * s), 0, 0.0f, 48, null);
            f = f3 + (0.105f * s);
            trackPreviewView = this;
        }
    }

    private final void drawLayoutDual(Canvas c, float s, int txtColor, List<Integer> itms, float off) {
        ArrayList arrayList;
        String str;
        String first;
        String second;
        StickerCore.TrackStats computeStats = computeStats();
        StickerCore.SummaryStats summaryStats = this.summaryStats;
        List take = CollectionsKt.take(itms, 3);
        float f = s * 0.27f;
        float f2 = s * 0.77f;
        int i = 0;
        char c2 = 2;
        List listOf = CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(((Number) (take.size() > 0 ? take.get(0) : 1)).intValue()), Integer.valueOf(((Number) (1 < take.size() ? take.get(1) : 5)).intValue()), Integer.valueOf(((Number) (2 < take.size() ? take.get(2) : 2)).intValue())});
        int i2 = 0;
        for (Object obj : listOf) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            int intValue = ((Number) obj).intValue();
            String itemValue = StickerCore.INSTANCE.itemValue(intValue, computeStats);
            Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str2 = (pair == null || (second = pair.getSecond()) == null) ? "" : second;
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str3 = (pair2 == null || (first = pair2.getFirst()) == null) ? "" : first;
            float f3 = (((i2 * 0.1f) + 0.6f) * s) + off;
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setTextAlign(Paint.Align.CENTER);
            this.paint.setTextSize(s * 0.052f);
            this.paint.setTypeface(Typeface.DEFAULT_BOLD);
            this.paint.setColor(txtColor);
            float measureText = this.paint.measureText(itemValue);
            int i4 = i;
            List list = listOf;
            drawStickerText$default(this, c, itemValue, f, f3, 0, s * 0.34f, 16, null);
            float f4 = f;
            if (str2.length() > 0) {
                this.paint.setTextSize(0.02f * s);
                this.paint.setTypeface(Typeface.DEFAULT);
                this.paint.setColor(Color.argb(179, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
                float f5 = 0.01f * s;
                drawStickerText$default(this, c, str2, f4 + (measureText / 2.0f) + f5, f3 - f5, 0, s * 0.12f, 16, null);
            }
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setTextSize(s * 0.023f);
            this.paint.setTypeface(null);
            this.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            this.paint.setTextAlign(Paint.Align.CENTER);
            f = f4;
            drawStickerText$default(this, c, str3, f, f3 + (0.05f * s), 0, 0.0f, 48, null);
            listOf = list;
            i2 = i3;
            c2 = 2;
            i = i4;
        }
        float f6 = f;
        char c3 = c2;
        int i5 = i;
        List list2 = listOf;
        if (summaryStats != null) {
            Pair[] pairArr = new Pair[3];
            pairArr[i5] = TuplesKt.to(summaryStats.fmtKm(), "总距离");
            pairArr[1] = TuplesKt.to(summaryStats.fmtDur(), "总时长");
            pairArr[c3] = TuplesKt.to(summaryStats.fmtAscent(), "总爬升");
            arrayList = CollectionsKt.listOf((Object[]) pairArr);
        } else {
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Number) it.next()).intValue();
                String itemValue2 = StickerCore.INSTANCE.itemValue(intValue2, computeStats);
                Pair<String, String> pair3 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue2));
                if (pair3 == null || (str = pair3.getFirst()) == null) {
                    str = "";
                }
                arrayList2.add(TuplesKt.to(itemValue2, str));
            }
            arrayList = arrayList2;
        }
        int i6 = i5;
        for (Object obj2 : arrayList) {
            int i7 = i6 + 1;
            if (i6 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair4 = (Pair) obj2;
            String str4 = (String) pair4.component1();
            String str5 = (String) pair4.component2();
            float f7 = (((i6 * 0.1f) + 0.6f) * s) + off;
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setTextAlign(Paint.Align.CENTER);
            this.paint.setTextSize(s * 0.052f);
            this.paint.setTypeface(Typeface.DEFAULT_BOLD);
            this.paint.setColor(txtColor);
            float f8 = f2;
            drawStickerText$default(this, c, str4, f8, f7, 0, s * 0.34f, 16, null);
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setTextSize(s * 0.023f);
            this.paint.setTypeface(null);
            this.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            this.paint.setTextAlign(Paint.Align.CENTER);
            drawStickerText$default(this, c, str5, f8, f7 + (s * 0.05f), 0, 0.0f, 48, null);
            f2 = f8;
            i6 = i7;
        }
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setTextAlign(Paint.Align.CENTER);
        this.paint.setTextSize(0.03f * s);
        this.paint.setTypeface(Typeface.DEFAULT_BOLD);
        this.paint.setColor(txtColor);
        float f9 = (0.58f * s) + off;
        drawStickerText$default(this, c, "本次", f6, f9, 0, 0.0f, 48, null);
        drawStickerText$default(this, c, "累计", f2, f9, 0, 0.0f, 48, null);
    }

    private final void drawLayoutBar(Canvas c, float s, int txtColor, List<Integer> itms, float off) {
        String first;
        String second;
        TrackPreviewView trackPreviewView = this;
        List take = CollectionsKt.take(itms, 4);
        if (take.isEmpty()) {
            return;
        }
        StickerCore.TrackStats computeStats = trackPreviewView.computeStats();
        int size = take.size();
        float[] fArr = new float[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            fArr[i2] = (((i2 * 0.7f) / RangesKt.coerceAtLeast(size - 1, 1)) + 0.15f) * s;
        }
        float f = (0.82f * s) + off;
        for (Object obj : take) {
            int i3 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            int intValue = ((Number) obj).intValue();
            float f2 = fArr[i];
            String itemValue = StickerCore.INSTANCE.itemValue(intValue, computeStats);
            Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str = (pair == null || (second = pair.getSecond()) == null) ? "" : second;
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str2 = (pair2 == null || (first = pair2.getFirst()) == null) ? "" : first;
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            trackPreviewView.paint.setTextSize(0.045f * s);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
            trackPreviewView.paint.setColor(txtColor);
            float measureText = trackPreviewView.paint.measureText(itemValue);
            drawStickerText$default(trackPreviewView, c, itemValue, f2, f, 0, s * 0.2f, 16, null);
            float f3 = f;
            if (str.length() > 0) {
                trackPreviewView.paint.setTextSize(0.02f * s);
                trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
                trackPreviewView.paint.setColor(Color.argb(179, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
                float f4 = 0.01f * s;
                drawStickerText$default(trackPreviewView, c, str, f2 + (measureText / 2.0f) + f4, f3 - f4, 0, s * 0.1f, 16, null);
            }
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextSize(0.024f * s);
            trackPreviewView.paint.setTypeface(null);
            trackPreviewView.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            drawStickerText$default(trackPreviewView, c, str2, f2, f3 + (0.05f * s), 0, 0.0f, 48, null);
            trackPreviewView = this;
            i = i3;
            f = f3;
        }
    }

    private final void drawLayoutPoster(Canvas c, float s, int txtColor, List<Integer> itms, float off) {
        int i;
        String first;
        String second;
        String second2;
        TrackPreviewView trackPreviewView = this;
        StickerCore.TrackStats computeStats = trackPreviewView.computeStats();
        int intValue = !itms.isEmpty() ? itms.get(0).intValue() : 1;
        String itemValue = StickerCore.INSTANCE.itemValue(intValue, computeStats);
        Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
        String str = (pair == null || (second2 = pair.getSecond()) == null) ? "" : second2;
        trackPreviewView.paint.reset();
        trackPreviewView.paint.setAntiAlias(true);
        trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
        trackPreviewView.paint.setTextSize(0.2f * s);
        trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
        trackPreviewView.paint.setColor(txtColor);
        float measureText = trackPreviewView.paint.measureText(itemValue);
        float f = (0.24f * s) + off;
        float f2 = s / 2.0f;
        drawStickerText$default(trackPreviewView, c, itemValue, f2, f, 0, s * 0.96f, 16, null);
        if (str.length() > 0) {
            trackPreviewView.paint.setTextSize(0.042f * s);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
            trackPreviewView.paint.setColor(Color.argb(179, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            float f3 = s * 0.02f;
            String str2 = str;
            i = 179;
            drawStickerText$default(trackPreviewView, c, str2, f2 + (measureText / 2.0f) + f3, f - f3, 0, s * 0.3f, 16, null);
        } else {
            i = 179;
        }
        trackPreviewView.paint.reset();
        trackPreviewView.paint.setAntiAlias(true);
        trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
        trackPreviewView.paint.setTextSize(0.035f * s);
        trackPreviewView.paint.setTypeface(Typeface.create("sans-serif-medium", 0));
        trackPreviewView.paint.setColor(Color.argb(204, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
        drawStickerText$default(trackPreviewView, c, "KILOMETERS", f2, (0.335f * s) + off, 0, 0.0f, 48, null);
        trackPreviewView.paint.reset();
        trackPreviewView.paint.setAntiAlias(true);
        trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
        trackPreviewView.paint.setTextSize(0.03f * s);
        trackPreviewView.paint.setTypeface(Typeface.create("sans-serif-light", 0));
        trackPreviewView.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
        int i2 = 0;
        drawStickerText$default(trackPreviewView, c, "RIDING · 我的轨迹", f2, (0.385f * s) + off, 0, 0.0f, 48, null);
        List take = CollectionsKt.take(CollectionsKt.drop(itms, 1), 3);
        if (take.isEmpty()) {
            return;
        }
        float[] fArr = {0.21f * s, 0.5f * s, 0.79f * s};
        float f4 = (0.85f * s) + off;
        for (Object obj : take) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            int intValue2 = ((Number) obj).intValue();
            String itemValue2 = StickerCore.INSTANCE.itemValue(intValue2, computeStats);
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue2));
            String str3 = (pair2 == null || (second = pair2.getSecond()) == null) ? "" : second;
            Pair<String, String> pair3 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue2));
            String str4 = (pair3 == null || (first = pair3.getFirst()) == null) ? "" : first;
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            trackPreviewView.paint.setTextSize(0.04f * s);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
            trackPreviewView.paint.setColor(txtColor);
            float measureText2 = trackPreviewView.paint.measureText(itemValue2);
            String str5 = str3;
            drawStickerText$default(trackPreviewView, c, itemValue2, fArr[i2] - (str5.length() > 0 ? measureText2 / 2.0f : 0.0f), f4, 0, s * 0.22f, 16, null);
            float f5 = f4;
            if (str5.length() > 0) {
                trackPreviewView.paint.setTextSize(s * 0.02f);
                trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
                trackPreviewView.paint.setColor(Color.argb(i, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
                float f6 = 0.01f * s;
                drawStickerText$default(trackPreviewView, c, str3, fArr[i2] + (measureText2 / 2.0f) + f6, f5 - f6, 0, s * 0.12f, 16, null);
            }
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextSize(0.023f * s);
            trackPreviewView.paint.setTypeface(null);
            trackPreviewView.paint.setColor(Color.argb(153, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor)));
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            drawStickerText$default(trackPreviewView, c, str4, fArr[i2], f5 + (0.05f * s), 0, 0.0f, 48, null);
            trackPreviewView = this;
            i2 = i3;
            f4 = f5;
        }
    }

    private final void drawSticker(Canvas c, float w, float h, int ds, boolean inc3d, int lineCol, int txtCol, List<Integer> itms, float ox, float oy, float sc, boolean wm) {
        float f;
        if (this.points.isEmpty()) {
            this.paint.setColor(-6643546);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(1.0f);
            this.paint.setTextSize(14.0f);
            this.paint.setTextAlign(Paint.Align.CENTER);
            drawStickerText$default(this, c, "暂无轨迹数据", w / 2.0f, h / 2.0f, 0, 0.0f, 48, null);
            return;
        }
        float min = Math.min(w, h);
        drawTrackIn(c, 0.0f, 0.0f, w, (ds != 0 ? ds != 1 ? 0.94f : 0.82f : 0.66f) * min, lineCol, ox, oy, sc);
        int stickerTextColor = INSTANCE.stickerTextColor(txtCol);
        if (ds == 0) {
            f = min;
            drawStravaCard(c, f, stickerTextColor, itms, inc3d);
        } else if (ds != 1) {
            f = min;
        } else {
            f = min;
            drawOutbaseBadge$default(this, c, f, stickerTextColor, itms, 0.0f, 16, null);
        }
        if (wm) {
            drawWatermark(c, f, stickerTextColor);
        }
    }

    private final void drawTrackIn(Canvas c, float l, float t, float r, float b, int lineCol, float ox, float oy, float sc) {
        float f;
        float f2;
        Integer num;
        List<GpxToFitConverter.TrackPoint> list = this.points;
        if (list.size() < 2) {
            return;
        }
        List<Pair<Float, Float>> projectTrackEx = StickerCore.INSTANCE.projectTrackEx(list, r - l, b - t, 18.0f, ox, oy, sc);
        if (projectTrackEx.size() < 2) {
            return;
        }
        if (lineCol == 5 && this.style == 3) {
            drawGradientSegments(c, projectTrackEx, list);
            return;
        }
        float[] pointSpeeds = StickerCore.INSTANCE.pointSpeeds(list);
        float f3 = Float.MAX_VALUE;
        float f4 = Float.MAX_VALUE;
        float f5 = 0.0f;
        for (float f6 : pointSpeeds) {
            if (f6 > 0.1f) {
                if (f6 < f4) {
                    f4 = f6;
                }
                if (f6 > f5) {
                    f5 = f6;
                }
            }
        }
        if (f5 <= f4) {
            f5 = f4 + 1.0f;
        }
        float f7 = -3.4028235E38f;
        for (GpxToFitConverter.TrackPoint trackPoint : list) {
            if (trackPoint.getEle() > Degrees.MIN_VALUE) {
                float f8 = f5;
                if (trackPoint.getEle() < f3) {
                    f3 = (float) trackPoint.getEle();
                }
                float f9 = f3;
                if (trackPoint.getEle() > f7) {
                    f7 = (float) trackPoint.getEle();
                }
                f3 = f9;
                f5 = f8;
            }
        }
        float f10 = f5;
        if (f7 <= f3) {
            f = 0.0f;
            f2 = 1.0f;
        } else {
            f = f3;
            f2 = f7;
        }
        if (this.glow) {
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeCap(Paint.Cap.ROUND);
            this.paint.setStrokeJoin(Paint.Join.ROUND);
            this.paint.setStrokeWidth(this.lineWidth * 4.0f);
            this.paint.setColor(Color.argb((int) (this.lineAlpha * 0.22f * 255), 43, 140, 255));
            Path path = new Path();
            int i = 0;
            for (Object obj : projectTrackEx) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair pair = (Pair) obj;
                float floatValue = ((Number) pair.component1()).floatValue();
                float floatValue2 = ((Number) pair.component2()).floatValue();
                if (i == 0) {
                    path.moveTo(floatValue, floatValue2);
                } else {
                    path.lineTo(floatValue, floatValue2);
                }
                i = i2;
            }
            c.drawPath(path, this.paint);
        }
        if (this.style == 3) {
            int i3 = (int) (this.lineAlpha * 255);
            Companion companion = INSTANCE;
            num = Integer.valueOf(Color.argb(i3, Color.red(companion.stickerLineColor(lineCol)), Color.green(companion.stickerLineColor(lineCol)), Color.blue(companion.stickerLineColor(lineCol))));
        } else {
            num = null;
        }
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeWidth(this.lineWidth);
        if (num != null) {
            this.paint.setColor(num.intValue());
            Path path2 = new Path();
            int i4 = 0;
            for (Object obj2 : projectTrackEx) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair pair2 = (Pair) obj2;
                float floatValue3 = ((Number) pair2.component1()).floatValue();
                float floatValue4 = ((Number) pair2.component2()).floatValue();
                if (i4 == 0) {
                    path2.moveTo(floatValue3, floatValue4);
                } else {
                    path2.lineTo(floatValue3, floatValue4);
                }
                i4 = i5;
            }
            c.drawPath(path2, this.paint);
            return;
        }
        int i6 = this.style;
        if (i6 == 1) {
            drawBanded(c, projectTrackEx, list, pointSpeeds, f4, f10, new Function1() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    int speedColor;
                    speedColor = TrackPreviewView.this.speedColor(((Float) obj3).floatValue());
                    return Integer.valueOf(speedColor);
                }
            });
            return;
        }
        if (i6 == 2) {
            drawBanded(c, projectTrackEx, list, null, f, f2, new Function1() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    int elevationColor;
                    elevationColor = TrackPreviewView.this.elevationColor(((Float) obj3).floatValue());
                    return Integer.valueOf(elevationColor);
                }
            });
            return;
        }
        if (i6 == 4) {
            this.paint.setColor(Color.argb((int) (this.lineAlpha * 255), 43, 140, 255));
            Path path3 = new Path();
            int i7 = 0;
            for (Object obj3 : projectTrackEx) {
                int i8 = i7 + 1;
                if (i7 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair pair3 = (Pair) obj3;
                float floatValue5 = ((Number) pair3.component1()).floatValue();
                float floatValue6 = ((Number) pair3.component2()).floatValue();
                if (i7 == 0) {
                    path3.moveTo(floatValue5, floatValue6);
                } else {
                    path3.lineTo(floatValue5, floatValue6);
                }
                i7 = i8;
            }
            c.drawPath(path3, this.paint);
            return;
        }
        this.paint.setColor(Color.argb((int) (this.lineAlpha * 255), 252, 76, 2));
        Path path4 = new Path();
        int i9 = 0;
        for (Object obj4 : projectTrackEx) {
            int i10 = i9 + 1;
            if (i9 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair4 = (Pair) obj4;
            float floatValue7 = ((Number) pair4.component1()).floatValue();
            float floatValue8 = ((Number) pair4.component2()).floatValue();
            if (i9 == 0) {
                path4.moveTo(floatValue7, floatValue8);
            } else {
                path4.lineTo(floatValue7, floatValue8);
            }
            i9 = i10;
        }
        c.drawPath(path4, this.paint);
    }

    private final void drawGradientSegments(Canvas c, List<Pair<Float, Float>> projected, List<GpxToFitConverter.TrackPoint> pts) {
        float[] cumulativeDist = StickerCore.INSTANCE.cumulativeDist(pts);
        float max = Math.max(cumulativeDist[pts.size() - 1], 1.0f);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeWidth(this.lineWidth * 1.5f);
        int size = projected.size() - 1;
        int i = 0;
        while (i < size) {
            float coerceIn = RangesKt.coerceIn(cumulativeDist[i] / max, 0.0f, 1.0f);
            this.paint.setColor(Color.rgb(RangesKt.coerceIn((int) (252 + ((-209) * coerceIn)), 0, 255), RangesKt.coerceIn((int) (76 + (64 * coerceIn)), 0, 255), RangesKt.coerceIn((int) (2 + (253 * coerceIn)), 0, 255)));
            float floatValue = projected.get(i).getFirst().floatValue();
            float floatValue2 = projected.get(i).getSecond().floatValue();
            i++;
            c.drawLine(floatValue, floatValue2, projected.get(i).getFirst().floatValue(), projected.get(i).getSecond().floatValue(), this.paint);
        }
    }

    private final void drawBanded(Canvas c, List<Pair<Float, Float>> projected, List<GpxToFitConverter.TrackPoint> pts, float[] values, float vMin, float vMax, Function1<? super Float, Integer> colorFn) {
        float ele;
        int size = projected.size() - 1;
        int i = 0;
        while (i < size) {
            if (values != null) {
                ele = values[i];
            } else {
                ele = pts.get(i).getEle() > Degrees.MIN_VALUE ? (float) pts.get(i).getEle() : vMin;
            }
            int intValue = colorFn.invoke(Float.valueOf(RangesKt.coerceIn((ele - vMin) / (vMax - vMin), 0.0f, 1.0f))).intValue();
            this.paint.setColor(Color.argb((int) (this.lineAlpha * 255), Color.red(intValue), Color.green(intValue), Color.blue(intValue)));
            float floatValue = projected.get(i).getFirst().floatValue();
            float floatValue2 = projected.get(i).getSecond().floatValue();
            i++;
            c.drawLine(floatValue, floatValue2, projected.get(i).getFirst().floatValue(), projected.get(i).getSecond().floatValue(), this.paint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int speedColor(float t) {
        Pair[] pairArr = {TuplesKt.to(2450411, 2278750), TuplesKt.to(2278750, 16436245), TuplesKt.to(16436245, 15680580)};
        float coerceIn = RangesKt.coerceIn(t * 3, 0.0f, 2.99f);
        int i = (int) coerceIn;
        return lerp(((Number) pairArr[i].getFirst()).intValue(), ((Number) pairArr[i].getSecond()).intValue(), coerceIn - i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int elevationColor(float t) {
        Pair[] pairArr = {TuplesKt.to(16638023, 16096779), TuplesKt.to(16096779, 12131356), TuplesKt.to(12131356, 2042167)};
        float coerceIn = RangesKt.coerceIn(t * 3, 0.0f, 2.99f);
        int i = (int) coerceIn;
        return lerp(((Number) pairArr[i].getFirst()).intValue(), ((Number) pairArr[i].getSecond()).intValue(), coerceIn - i);
    }

    private final int lerp(int c1, int c2, float t) {
        return Color.rgb((int) (Color.red(c1) + ((Color.red(c2) - Color.red(c1)) * t)), (int) (Color.green(c1) + ((Color.green(c2) - Color.green(c1)) * t)), (int) (Color.blue(c1) + ((Color.blue(c2) - Color.blue(c1)) * t)));
    }

    private final void drawStravaCard(Canvas c, float s, int textColor, List<Integer> itms, boolean inc3d) {
        int i;
        String first;
        String second;
        TrackPreviewView trackPreviewView = this;
        int coerceIn = RangesKt.coerceIn(itms.size(), 1, 6);
        float f = s * 0.04f;
        float f2 = s - f;
        float f3 = s * 0.7f;
        float f4 = s * 0.93f;
        int i2 = 0;
        boolean z = textColor == -1 || textColor == -6643546;
        trackPreviewView.fillPaint.setColor(z ? -435023338 : -419430401);
        float f5 = s * 0.035f;
        Path path = new Path();
        path.addRoundRect(f, f3, f2, f4, f5, f5, Path.Direction.CW);
        c.drawPath(path, trackPreviewView.fillPaint);
        trackPreviewView.fillPaint.setColor(858492159);
        Path path2 = new Path();
        float f6 = s * 0.012f;
        float f7 = s * 0.02f;
        path2.addRoundRect(f, f3, f2, f3 + f6, f7, f7, Path.Direction.CW);
        c.drawPath(path2, trackPreviewView.fillPaint);
        float f8 = 0.05f;
        if (inc3d) {
            float f9 = s * 0.05f;
            drawTerrain3D$default(trackPreviewView, c, f + f9, f3 + f5, f2 - f9, f3 + (0.24f * s), textColor, 0.0f, 0, SessionMesg.WorkoutFeelFieldNum, null);
            i = textColor;
            f3 += 0.26f * s;
        } else {
            i = textColor;
        }
        List<Float> stickerColumns = StickerCore.INSTANCE.stickerColumns(coerceIn, s, 0.06f, 0.06f);
        float f10 = f3 + (0.075f * s);
        float f11 = f3 + (0.128f * s);
        Iterator it = CollectionsKt.take(itms, coerceIn).iterator();
        while (true) {
            int i3 = i2;
            if (!it.hasNext()) {
                return;
            }
            i2 = i3 + 1;
            int intValue = ((Number) it.next()).intValue();
            float floatValue = stickerColumns.get(i3).floatValue();
            String itemValue = StickerCore.INSTANCE.itemValue(intValue, trackPreviewView.computeStats());
            Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str = (pair == null || (second = pair.getSecond()) == null) ? "" : second;
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str2 = (pair2 == null || (first = pair2.getFirst()) == null) ? "" : first;
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setColor(i);
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            trackPreviewView.paint.setTextSize(s * f8);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
            float measureText = trackPreviewView.paint.measureText(itemValue);
            drawStickerText$default(trackPreviewView, c, itemValue, floatValue, f10, 0, 0.0f, 48, null);
            float f12 = f10;
            if (str.length() > 0) {
                trackPreviewView.paint.setTextSize(0.024f * s);
                trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
                trackPreviewView.paint.setColor(Color.argb(179, Color.red(i), Color.green(i), Color.blue(i)));
                drawStickerText$default(trackPreviewView, c, str, floatValue + (measureText / 2.0f) + f6, f12 - (0.008f * s), 0, 0.0f, 48, null);
            }
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextSize(0.026f * s);
            trackPreviewView.paint.setTypeface(null);
            trackPreviewView.paint.setColor(Color.argb(153, Color.red(i), Color.green(i), Color.blue(i)));
            trackPreviewView.paint.setTextAlign(Paint.Align.CENTER);
            float f13 = f11;
            drawStickerText$default(trackPreviewView, c, str2, floatValue, f13, 0, 0.0f, 48, null);
            TrackPreviewView trackPreviewView2 = trackPreviewView;
            if (i3 > 0) {
                trackPreviewView2.paint.reset();
                trackPreviewView2.paint.setAntiAlias(true);
                trackPreviewView2.paint.setStrokeWidth(1.0f);
                trackPreviewView2.paint.setColor(z ? 872415231 : 855638016);
                int i4 = i3 - 1;
                float floatValue2 = stickerColumns.get(i4).floatValue() + ((stickerColumns.get(i3).floatValue() - stickerColumns.get(i4).floatValue()) / 2.0f);
                c.drawLine(floatValue2, f3 + f7, floatValue2, f4 - f7, trackPreviewView2.paint);
            }
            trackPreviewView = trackPreviewView2;
            f11 = f13;
            f10 = f12;
            f8 = 0.05f;
        }
    }

    static /* synthetic */ void drawOutbaseBadge$default(TrackPreviewView trackPreviewView, Canvas canvas, float f, int i, List list, float f2, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            f2 = 0.0f;
        }
        trackPreviewView.drawOutbaseBadge(canvas, f, i, list, f2);
    }

    private final void drawOutbaseBadge(Canvas c, float s, int textColor, List<Integer> itms, float off) {
        String first;
        String second;
        TrackPreviewView trackPreviewView = this;
        List take = CollectionsKt.take(itms, 3);
        if (take.isEmpty()) {
            return;
        }
        float f = s * 0.05f;
        StickerCore.TrackStats computeStats = trackPreviewView.computeStats();
        Iterator it = take.iterator();
        float f2 = (0.86f * s) + off;
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            String itemValue = StickerCore.INSTANCE.itemValue(intValue, computeStats);
            Pair<String, String> pair = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str = (pair == null || (second = pair.getSecond()) == null) ? "" : second;
            Pair<String, String> pair2 = StickerCore.INSTANCE.getITEM_DEFS().get(Integer.valueOf(intValue));
            String str2 = (pair2 == null || (first = pair2.getFirst()) == null) ? "" : first;
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            trackPreviewView.paint.setTextAlign(Paint.Align.RIGHT);
            float fitTextSize$default = fitTextSize$default(trackPreviewView, itemValue, 0.052f * s, 0.3f * s, 0.0f, 8, null);
            trackPreviewView.paint.setTextSize(fitTextSize$default);
            trackPreviewView.paint.setTypeface(Typeface.DEFAULT_BOLD);
            trackPreviewView.paint.setColor(textColor);
            float measureText = trackPreviewView.paint.measureText(itemValue);
            float f3 = s - f;
            float f4 = f2;
            drawStickerText$default(trackPreviewView, c, itemValue, f3, f4, 0, s * 0.42f, 16, null);
            if (str.length() > 0) {
                String str3 = str;
                trackPreviewView.paint.setTextSize(fitTextSize$default(trackPreviewView, str3, fitTextSize$default * 0.5f, s * 0.12f, 0.0f, 8, null));
                trackPreviewView.paint.setTypeface(Typeface.DEFAULT);
                trackPreviewView.paint.setColor(Color.argb(179, Color.red(textColor), Color.green(textColor), Color.blue(textColor)));
                drawStickerText$default(trackPreviewView, c, str3, (f3 - measureText) - (0.02f * s), f4 - (0.006f * s), 0, s * 0.18f, 16, null);
            }
            trackPreviewView.paint.reset();
            trackPreviewView.paint.setAntiAlias(true);
            String str4 = str2;
            trackPreviewView.paint.setTextSize(fitTextSize$default(trackPreviewView, str4, s * 0.026f, s * 0.28f, 0.0f, 8, null));
            trackPreviewView.paint.setTypeface(null);
            trackPreviewView.paint.setColor(Color.argb(153, Color.red(textColor), Color.green(textColor), Color.blue(textColor)));
            trackPreviewView.paint.setTextAlign(Paint.Align.RIGHT);
            drawStickerText$default(trackPreviewView, c, str4, f3, f4 + (0.03f * s), 0, 0.0f, 48, null);
            f2 = f4 + (0.078f * s);
            trackPreviewView = this;
        }
    }

    public static /* synthetic */ void drawTerrain3D$default(TrackPreviewView trackPreviewView, Canvas canvas, float f, float f2, float f3, float f4, int i, float f5, int i2, int i3, Object obj) {
        trackPreviewView.drawTerrain3D(canvas, f, f2, f3, f4, i, (i3 & 64) != 0 ? 12.0f : f5, (i3 & 128) != 0 ? 5 : i2);
    }

    public final void drawTerrain3D(Canvas c, float l, float t, float r, float b, int textColor, float thickness, int layers) {
        Intrinsics.checkNotNullParameter(c, "c");
        StickerCore.TerrainGeom elevationTerrain = StickerCore.INSTANCE.elevationTerrain(this.points, l, t, r, b, thickness, layers);
        if (elevationTerrain.getProfile().size() < 2) {
            return;
        }
        Path path = new Path();
        int i = 0;
        int i2 = 0;
        for (Object obj : elevationTerrain.getSide()) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            float floatValue = ((Number) pair.component1()).floatValue();
            float floatValue2 = ((Number) pair.component2()).floatValue();
            if (i2 == 0) {
                path.moveTo(floatValue, floatValue2);
            } else {
                path.lineTo(floatValue, floatValue2);
            }
            i2 = i3;
        }
        for (Pair pair2 : CollectionsKt.asReversed(elevationTerrain.getProfile())) {
            path.lineTo(((Number) pair2.component1()).floatValue(), ((Number) pair2.component2()).floatValue());
        }
        path.close();
        this.fillPaint.setShader(new LinearGradient(l, b, l, t, -2535906, 1727095594, Shader.TileMode.CLAMP));
        c.drawPath(path, this.fillPaint);
        this.fillPaint.setShader(null);
        Path path2 = new Path();
        int i4 = 0;
        for (Object obj2 : elevationTerrain.getProfile()) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair3 = (Pair) obj2;
            float floatValue3 = ((Number) pair3.component1()).floatValue();
            float floatValue4 = ((Number) pair3.component2()).floatValue();
            if (i4 == 0) {
                path2.moveTo(floatValue3, floatValue4);
            } else {
                path2.lineTo(floatValue3, floatValue4);
            }
            i4 = i5;
        }
        path2.lineTo(r, b);
        path2.lineTo(l, b);
        path2.close();
        this.fillPaint.setColor(653353770);
        c.drawPath(path2, this.fillPaint);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        float f = r - l;
        this.paint.setStrokeWidth(Math.max(0.005f * f, 1.8f));
        this.paint.setColor(-957654);
        Path path3 = new Path();
        for (Object obj3 : elevationTerrain.getProfile()) {
            int i6 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair4 = (Pair) obj3;
            float floatValue5 = ((Number) pair4.component1()).floatValue();
            float floatValue6 = ((Number) pair4.component2()).floatValue();
            if (i == 0) {
                path3.moveTo(floatValue5, floatValue6);
            } else {
                path3.lineTo(floatValue5, floatValue6);
            }
            i = i6;
        }
        c.drawPath(path3, this.paint);
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setStrokeWidth(1.0f);
        this.paint.setColor(textColor == -1 ? 1442840575 : 855638016);
        c.drawLine(l, b, r, b, this.paint);
        this.paint.setTextAlign(Paint.Align.LEFT);
        this.paint.setTextSize(Math.max(f * 0.022f, 8.0f));
        this.paint.setColor(textColor == -1 ? -1426063361 : -1728053248);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.US, "%.0fm", Arrays.copyOf(new Object[]{Float.valueOf(elevationTerrain.getEMin())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        float f2 = l + 2.0f;
        drawStickerText$default(this, c, format, f2, b - 3.0f, 0, 0.0f, 48, null);
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String format2 = String.format(Locale.US, "%.0fm", Arrays.copyOf(new Object[]{Float.valueOf(elevationTerrain.getEMax())}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        drawStickerText$default(this, c, format2, f2, t + 10.0f, 0, 0.0f, 48, null);
    }

    private final void drawWatermark(Canvas c, float s, int textColor) {
        this.paint.reset();
        this.paint.setAntiAlias(true);
        this.paint.setTextAlign(Paint.Align.CENTER);
        this.paint.setTextSize(Math.max(0.03f * s, 12.0f));
        this.paint.setTypeface(Typeface.create("sans-serif-light", 0));
        try {
            this.paint.setLetterSpacing(0.22f);
        } catch (Throwable unused) {
        }
        this.paint.setColor(Color.argb(153, Color.red(textColor), Color.green(textColor), Color.blue(textColor)));
        drawStickerText$default(this, c, "鸡翅幸哲迈进OB", s / 2.0f, s - Math.max(0.028f * s, 6.0f), 0, 0.0f, 48, null);
    }

    public final boolean getBadgeOn() {
        return this.badgeOn;
    }

    public final void setBadgeOn(boolean z) {
        this.badgeOn = z;
        invalidate();
    }

    public final boolean webReadyPublic() {
        return this.webReady && this.web != null;
    }

    public final void refreshWebRenderPublic() {
        if (!this.webReady || this.web == null) {
            return;
        }
        refreshCssSize();
        invalidate();
    }

    private final void initWebRenderer() {
        if (this.web != null) {
            return;
        }
        final WebView webView = new WebView(getContext());
        webView.setBackgroundColor(0);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setAllowFileAccess(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setCacheMode(2);
        webView.getSettings().setLoadWithOverviewMode(false);
        webView.getSettings().setUseWideViewPort(false);
        webView.setWebViewClient(new WebViewClient() { // from class: com.jichi.ob.ui.TrackPreviewView$initWebRenderer$w$1$1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                TrackPreviewView.this.webReady = true;
                TrackPreviewView.this.refreshCssSize();
                webView.invalidate();
            }
        });
        webView.loadDataWithBaseURL("file:///android_asset/", htmlSource(), "text/html", "utf-8", null);
        this.web = webView;
        addView(webView);
    }

    private final String htmlSource() {
        try {
            InputStream open = getContext().getAssets().open("sticker_templates.html");
            Intrinsics.checkNotNullExpressionValue(open, "open(...)");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            for (int read = open.read(bArr); read > 0; read = open.read(bArr)) {
                byteArrayOutputStream.write(bArr, 0, read);
            }
            open.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
            return new String(byteArray, Charsets.UTF_8);
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshCssSize() {
        WebView webView = this.web;
        if (webView == null) {
            return;
        }
        webView.evaluateJavascript("JSON.stringify(stickerBridge.getCardSize())", new ValueCallback() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                TrackPreviewView.refreshCssSize$lambda$43(TrackPreviewView.this, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshCssSize$lambda$43(TrackPreviewView trackPreviewView, String str) {
        if (str == null) {
            str = "";
        }
        try {
            JSONObject jSONObject = new JSONObject(trackPreviewView.unwrapJsString(str));
            float optDouble = (float) jSONObject.optDouble("w", Degrees.MIN_VALUE);
            float optDouble2 = (float) jSONObject.optDouble("h", Degrees.MIN_VALUE);
            if (optDouble > 0.0f && optDouble2 > 0.0f && (optDouble != trackPreviewView.cssW || optDouble2 != trackPreviewView.cssH)) {
                trackPreviewView.cssW = optDouble;
                trackPreviewView.cssH = optDouble2;
            }
            trackPreviewView.invalidate();
        } catch (Exception unused) {
        }
    }

    private final Pair<Float, Float> renderSize() {
        if (this.web == null) {
            return TuplesKt.to(Float.valueOf(1024.0f), Float.valueOf(1024.0f));
        }
        Pair<Float, Float> pair = TuplesKt.to(Float.valueOf(RangesKt.coerceAtLeast(this.cssW, 300.0f)), Float.valueOf(RangesKt.coerceAtLeast(this.cssH, 300.0f)));
        return (pair.getFirst().floatValue() <= 0.0f || pair.getSecond().floatValue() <= 0.0f) ? TuplesKt.to(Float.valueOf(Math.max(this.web.getWidth(), 300)), Float.valueOf(Math.max(this.web.getHeight(), 300))) : pair;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        int i = r - l;
        int i2 = b - t;
        WebView webView = this.web;
        if (webView != null) {
            webView.layout(0, 0, i, i2);
        }
        if (changed) {
            if (i == this.lastW && i2 == this.lastH) {
                return;
            }
            this.lastW = i;
            this.lastH = i2;
            postDelayed(new Runnable() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    TrackPreviewView.onLayout$lambda$45(TrackPreviewView.this);
                }
            }, 150L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onLayout$lambda$45(TrackPreviewView trackPreviewView) {
        if (!trackPreviewView.webReady || trackPreviewView.web == null) {
            return;
        }
        trackPreviewView.refreshCssSize();
    }

    private final int templateIdxFor() {
        Iterator<StickerCore.StickerTemplate> it = StickerCore.StickerTemplates.INSTANCE.getALL().iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            StickerCore.StickerTemplate next = it.next();
            if (next.getBg() == this.bgType && next.getTrack() == this.trackType && next.getLayout() == this.layoutType && next.getText() == this.textType && next.getGlow() == this.glowOn) {
                break;
            }
            i++;
        }
        return i >= 0 ? i + 1 : RangesKt.coerceIn(this.templateIndex, 1, 24);
    }

    private final int trackColorIdx() {
        switch (WhenMappings.$EnumSwitchMapping$3[this.trackType.ordinal()]) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 0;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            case 8:
                return 7;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final String formatDuration(long sec) {
        if (sec <= 0) {
            return "0:00:00";
        }
        long j = GarminProduct.VENUSQ;
        long j2 = sec / j;
        long j3 = 60;
        long j4 = (sec % j) / j3;
        long j5 = sec % j3;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.US, "%d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j2), Long.valueOf(j4), Long.valueOf(j5)}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    private final String bitmapToDataUrl(Bitmap bmp) {
        if (bmp.isRecycled()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bmp.compress(Bitmap.CompressFormat.JPEG, 88, byteArrayOutputStream);
            return "data:image/jpeg;base64," + Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x030b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String buildRenderJs() {
        // 方法体按 9.6.8 原版恢复（jadx 旧反编译结果）。
        // 旧反编译里三个比例分支（3:4 / 9:16 / 默认）的重复尾巴是反编译器复制粘贴的产物，
        // 此处合并为一份；altMax/altMin 的 (Iterable<Double>) 强转是反编译错误，实为 Float。
        // 调用方不处理 JSONException，此处转 RuntimeException 抛出，与 Kotlin 原版
        // （受检异常不强制捕获）的运行时行为一致。
        try {
            StickerCore.TrackStats stats = computeStats();
            JSONObject data = new JSONObject();
            Object dist = this.dataOverrides.get(MonitoringReader.DISTANCE_STRING);
            if (dist == null) {
                dist = Double.valueOf(round1(stats.getDistKm()));
            }
            data.put(MonitoringReader.DISTANCE_STRING, dist);
            Object duration = this.dataOverrides.get("duration");
            if (duration == null) {
                duration = formatDuration(stats.getDurationSec());
            }
            data.put("duration", duration);
            Object avgSpeed = this.dataOverrides.get("avgSpeed");
            if (avgSpeed == null) {
                avgSpeed = Double.valueOf(round1(stats.getAvgSpeedKmh()));
            }
            data.put("avgSpeed", avgSpeed);
            Object maxSpeed = this.dataOverrides.get("maxSpeed");
            if (maxSpeed == null) {
                maxSpeed = Double.valueOf(round1(stats.getMaxSpeedKmh()));
            }
            data.put("maxSpeed", maxSpeed);
            Object climb = this.dataOverrides.get("climb");
            if (climb == null) {
                climb = Long.valueOf(Math.round(stats.getAscentM()));
            }
            data.put("climb", climb);
            Object hr = this.dataOverrides.get("hr");
            if (hr == null) {
                hr = Integer.valueOf(stats.getAvgHr());
            }
            data.put("hr", hr);
            Object power = this.dataOverrides.get("power");
            if (power == null) {
                power = Integer.valueOf(stats.getAvgPower());
            }
            data.put("power", power);
            Object kcal = this.dataOverrides.get("kcal");
            if (kcal == null) {
                kcal = Integer.valueOf(stats.getCaloriesKcal());
            }
            data.put("kcal", kcal);
            Object cad = this.dataOverrides.get("cad");
            if (cad == null) {
                cad = Integer.valueOf(stats.getAvgCad());
            }
            data.put("cad", cad);
            Object alt = this.dataOverrides.get("alt");
            if (alt == null) {
                alt = Long.valueOf(Math.round(stats.getAscentM()));
            }
            data.put("alt", alt);
            String title = this.titleOverride;
            if (title == null) {
                title = "RIDING";
            }
            data.put("title", title);
            ArrayList<Float> eles = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(this.points, 10));
            for (GpxToFitConverter.TrackPoint p : this.points) {
                eles.add(Float.valueOf((float) p.getEle()));
            }
            ArrayList<Float> positiveEles = new ArrayList<>();
            for (Float e : eles) {
                if (e.floatValue() > 0.0f) {
                    positiveEles.add(e);
                }
            }
            if (!positiveEles.isEmpty()) {
                Object altMax = this.dataOverrides.get("altMax");
                if (altMax == null) {
                    altMax = Integer.valueOf(Math.round(CollectionsKt.maxOrThrow(positiveEles)));
                }
                data.put("altMax", altMax);
                Object altMin = this.dataOverrides.get("altMin");
                if (altMin == null) {
                    altMin = Integer.valueOf(Math.round(CollectionsKt.minOrThrow(positiveEles)));
                }
                data.put("altMin", altMin);
            }
            JSONArray itemsJson = new JSONArray();
            for (Integer item : this.items) {
                itemsJson.put(item.intValue());
            }
            data.put("items", itemsJson);
            Bitmap bitmap = this.overlayBitmap;
            if (bitmap != null) {
                String photo = bitmapToDataUrl(bitmap);
                if (photo == null) {
                    photo = "";
                }
                data.put("photo", photo);
            }
            float w = renderSize().component1().floatValue();
            float h;
            if (Intrinsics.areEqual(this.aspect, "3:4")) {
                h = 4.0f * w / 3.0f;
            } else if (Intrinsics.areEqual(this.aspect, "9:16")) {
                h = 16.0f * w / 9.0f;
            } else {
                h = w;
            }
            JSONArray track = buildTrackJson(w, h);
            if (track != null) {
                data.put("track", track);
            }
            Pair<String, String> text = htmlText(this.textType);
            JSONObject opts = new JSONObject();
            opts.put("showBadge", this.badgeOn);
            opts.put("watermark", !this.watermarkOn && this.dataLayerOn);
            opts.put("trackColor", trackColorIdx());
            opts.put("aspect", this.aspect);
            opts.put("bg", htmlBg(this.bgType));
            opts.put("track", htmlTrack(this.trackType));
            opts.put("layout", htmlLayout(this.layoutType));
            opts.put("text", text.component1());
            opts.put("textU", text.component2());
            opts.put("transparentBg", this.transparentBg);
            opts.put("dataLayer", this.dataLayerOn);
            opts.put("glow", this.glowOn);
            opts.put("show3dBand", this.show3dBand);
            opts.put("trackWidth", this.trackWidth);
            opts.put("track3d", this.track3d);
            opts.put("track3dRx", Float.valueOf(this.track3dRx));
            opts.put("track3dRy", Float.valueOf(this.track3dRy));
            opts.put("showTrack", this.trackOn);
            opts.put("brand", this.brandIdx);
            if (this.brandIdx == BRAND_CUSTOM && this.badgeUrl != null) {
                opts.put("badgeUrl", this.badgeUrl);
            }
            int templateIdx = this.useTemplate ? templateIdxFor() : 1;
            this.templateIndex = templateIdx;
            return "stickerBridge.render(" + templateIdx + ", " + data + ", " + opts + ");";
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    private final String buildRenderPayload(int wPx, int hPx) {
        String str;
        StickerCore.TrackStats computeStats = computeStats();
        JSONObject jSONObject = new JSONObject();
        String str2 = this.dataOverrides.get(MonitoringReader.DISTANCE_STRING);
        if (str2 == null) {
            str2 = Double.valueOf(round1(computeStats.getDistKm()));
        }
        jSONObject.put(MonitoringReader.DISTANCE_STRING, str2);
        String str3 = this.dataOverrides.get("duration");
        if (str3 == null) {
            str3 = formatDuration(computeStats.getDurationSec());
        }
        jSONObject.put("duration", str3);
        String str4 = this.dataOverrides.get("avgSpeed");
        if (str4 == null) {
            str4 = Double.valueOf(round1(computeStats.getAvgSpeedKmh()));
        }
        jSONObject.put("avgSpeed", str4);
        String str5 = this.dataOverrides.get("maxSpeed");
        if (str5 == null) {
            str5 = Double.valueOf(round1(computeStats.getMaxSpeedKmh()));
        }
        jSONObject.put("maxSpeed", str5);
        String str6 = this.dataOverrides.get("climb");
        if (str6 == null) {
            str6 = Long.valueOf(Math.round(computeStats.getAscentM()));
        }
        jSONObject.put("climb", str6);
        String str7 = this.dataOverrides.get("hr");
        if (str7 == null) {
            str7 = Integer.valueOf(computeStats.getAvgHr());
        }
        jSONObject.put("hr", str7);
        String str8 = this.dataOverrides.get("power");
        if (str8 == null) {
            str8 = Integer.valueOf(computeStats.getAvgPower());
        }
        jSONObject.put("power", str8);
        String str9 = this.dataOverrides.get("kcal");
        if (str9 == null) {
            str9 = Integer.valueOf(computeStats.getCaloriesKcal());
        }
        jSONObject.put("kcal", str9);
        String str10 = this.dataOverrides.get("cad");
        if (str10 == null) {
            str10 = Integer.valueOf(computeStats.getAvgCad());
        }
        jSONObject.put("cad", str10);
        String str11 = this.dataOverrides.get("alt");
        if (str11 == null) {
            str11 = Long.valueOf(Math.round(computeStats.getAscentM()));
        }
        jSONObject.put("alt", str11);
        String str12 = this.titleOverride;
        if (str12 == null) {
            str12 = "RIDING";
        }
        jSONObject.put("title", str12);
        List<GpxToFitConverter.TrackPoint> list = this.points;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Float.valueOf((float) ((GpxToFitConverter.TrackPoint) it.next()).getEle()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((Number) obj).floatValue() > 0.0f) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = arrayList2;
        if (!arrayList3.isEmpty()) {
            String str13 = this.dataOverrides.get("altMax");
            if (str13 == null) {
                str13 = Integer.valueOf(Math.round(CollectionsKt.maxOrThrow((Iterable<Double>) arrayList3)));
            }
            jSONObject.put("altMax", str13);
            String str14 = this.dataOverrides.get("altMin");
            if (str14 == null) {
                str14 = Integer.valueOf(Math.round(CollectionsKt.minOrThrow((Iterable<Double>) arrayList3)));
            }
            jSONObject.put("altMin", str14);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it2 = this.items.iterator();
        while (it2.hasNext()) {
            jSONArray.put(((Number) it2.next()).intValue());
        }
        Unit unit = Unit.INSTANCE;
        jSONObject.put("items", jSONArray);
        Bitmap bitmap = this.overlayBitmap;
        if (bitmap != null) {
            String bitmapToDataUrl = bitmapToDataUrl(bitmap);
            if (bitmapToDataUrl == null) {
                bitmapToDataUrl = "";
            }
            jSONObject.put("photo", bitmapToDataUrl);
        }
        JSONArray buildTrackJson = buildTrackJson(wPx, hPx);
        if (buildTrackJson != null) {
            jSONObject.put("track", buildTrackJson);
        }
        Pair<String, String> htmlText = htmlText(this.textType);
        String component1 = htmlText.component1();
        String component2 = htmlText.component2();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("showBadge", this.badgeOn);
        jSONObject2.put("watermark", this.watermarkOn && this.dataLayerOn);
        jSONObject2.put("trackColor", trackColorIdx());
        jSONObject2.put("aspect", this.aspect);
        jSONObject2.put("bg", htmlBg(this.bgType));
        jSONObject2.put("track", htmlTrack(this.trackType));
        jSONObject2.put("layout", htmlLayout(this.layoutType));
        jSONObject2.put("text", component1);
        jSONObject2.put("textU", component2);
        jSONObject2.put("transparentBg", this.transparentBg);
        jSONObject2.put("dataLayer", this.dataLayerOn);
        jSONObject2.put("glow", this.glowOn);
        jSONObject2.put("show3dBand", this.show3dBand);
        jSONObject2.put("trackWidth", this.trackWidth);
        jSONObject2.put("track3d", this.track3d);
        jSONObject2.put("track3dRx", Float.valueOf(this.track3dRx));
        jSONObject2.put("track3dRy", Float.valueOf(this.track3dRy));
        jSONObject2.put("track3d", this.track3d);
        jSONObject2.put("track3dRx", Float.valueOf(this.track3dRx));
        jSONObject2.put("track3dRy", Float.valueOf(this.track3dRy));
        jSONObject2.put("showTrack", this.trackOn);
        jSONObject2.put("brand", this.brandIdx);
        if (this.brandIdx == BRAND_CUSTOM && (str = this.badgeUrl) != null) {
            jSONObject2.put("badgeUrl", str);
        }
        int templateIdxFor = this.useTemplate ? templateIdxFor() : 1;
        this.templateIndex = templateIdxFor;
        return templateIdxFor + ", " + jSONObject + ", " + jSONObject2;
    }

    private final JSONArray buildTrackJson(float W, float H) {
        if (this.points.size() < 2) {
            return null;
        }
        double d = -1.7976931348623157E308d;
        double d2 = Double.MAX_VALUE;
        double d3 = Double.MAX_VALUE;
        double d4 = -1.7976931348623157E308d;
        for (GpxToFitConverter.TrackPoint trackPoint : this.points) {
            if (trackPoint.getLat() < d2) {
                d2 = trackPoint.getLat();
            }
            if (trackPoint.getLat() > d) {
                d = trackPoint.getLat();
            }
            if (trackPoint.getLon() < d3) {
                d3 = trackPoint.getLon();
            }
            if (trackPoint.getLon() > d4) {
                d4 = trackPoint.getLon();
            }
        }
        JSONArray jSONArray = new JSONArray();
        for (GpxToFitConverter.TrackPoint trackPoint2 : this.points) {
            JSONObject put = new JSONObject().put("x", trackPoint2.getLon() - d3).put("y", trackPoint2.getLat() - d2);
            double ele = trackPoint2.getEle();
            double d5 = Degrees.MIN_VALUE;
            if (ele > Degrees.MIN_VALUE) {
                d5 = trackPoint2.getEle();
            }
            jSONArray.put(put.put("ele", d5));
        }
        return jSONArray;
    }

    private final String htmlBg(StickerCore.StickerBg b) {
        switch (WhenMappings.$EnumSwitchMapping$2[b.ordinal()]) {
            case 1:
                return "bg-stars";
            case 2:
                return "bg-checker";
            case 3:
                return "bg-neon";
            case 4:
                return "bg-black";
            case 5:
                return "bg-white";
            case 6:
                return "bg-cream";
            case 7:
                return "bg-grayline";
            case 8:
                return "bg-warm";
            case 9:
                return "bg-map";
            case 10:
                return "bg-sat";
            case 11:
                return "bg-lightmap";
            case 12:
                return "bg-contour";
            case 13:
                return "bg-heat";
            case 14:
                return "bg-orangeband";
            case 15:
                return "bg-ice";
            case 16:
                return "bg-trail";
            case 17:
                return "bg-dual";
            case 18:
                return "bg-orange";
            case 19:
                return "bg-retro";
            case 20:
                return "bg-annual";
            case 21:
                return "bg-photo";
            case 22:
                return "bg-frost";
            case 23:
                return "bg-split";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final String htmlTrack(StickerCore.StickerTrack t) {
        switch (WhenMappings.$EnumSwitchMapping$3[t.ordinal()]) {
            case 1:
                return "white";
            case 2:
                return "blackfine";
            case 3:
                return "grayfine";
            case 4:
                return "orange";
            case 5:
                return "neon";
            case 6:
                return "heat";
            case 7:
                return "ice";
            case 8:
                return "phantom";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final String htmlLayout(StickerCore.StickerLayout l) {
        switch (WhenMappings.$EnumSwitchMapping$1[l.ordinal()]) {
            case 1:
                return "poster";
            case 2:
                return "trip";
            case 3:
                return "grid";
            case 4:
                return "big";
            case 5:
                return "bar";
            case 6:
                return "dual";
            case 7:
                return "corner";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final Pair<String, String> htmlText(StickerCore.StickerText t) {
        switch (WhenMappings.$EnumSwitchMapping$0[t.ordinal()]) {
            case 1:
                return TuplesKt.to("t-dark", "u-dark");
            case 2:
                return TuplesKt.to("t-black", "u-black");
            case 3:
                return TuplesKt.to("t-orange", "u-black");
            case 4:
                return TuplesKt.to("t-sky", "u-dark");
            case 5:
                return TuplesKt.to("t-neonpink", "u-dark");
            case 6:
                return TuplesKt.to("t-cream", "u-dark");
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final double round1(double v) {
        return Math.round(v * 10.0d) / 10.0d;
    }

    private final void scheduleWebRender() {
        if (!this.webReady || this.web == null) {
            return;
        }
        this.pendingRender = true;
        if (this.renderScheduled) {
            return;
        }
        this.renderScheduled = true;
        postDelayed(new Runnable() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                TrackPreviewView.scheduleWebRender$lambda$61(TrackPreviewView.this);
            }
        }, 16L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scheduleWebRender$lambda$61(TrackPreviewView trackPreviewView) {
        trackPreviewView.renderScheduled = false;
        if (trackPreviewView.pendingRender) {
            trackPreviewView.pendingRender = false;
            WebView webView = trackPreviewView.web;
            if (webView != null) {
                webView.evaluateJavascript(trackPreviewView.buildRenderJs() + "stickerBridge.setTransform(" + trackPreviewView.dx + "," + trackPreviewView.dy + "," + trackPreviewView.scale + "," + trackPreviewView.rotation + "," + trackPreviewView.tiltX + ");", null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pushTransform() {
        WebView webView;
        if (!this.webReady || (webView = this.web) == null || webView == null) {
            return;
        }
        webView.evaluateJavascript("stickerBridge.setTransform(" + this.dx + "," + this.dy + "," + this.scale + "," + this.rotation + "," + this.tiltX + ");", null);
    }

    public static /* synthetic */ Bitmap exportTemplatePng$default(TrackPreviewView trackPreviewView, int i, int i2, boolean z, List list, float f, float f2, float f3, boolean z2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 1024;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = true;
        }
        if ((i3 & 8) != 0) {
            list = trackPreviewView.items;
        }
        if ((i3 & 16) != 0) {
            f = trackPreviewView.dx;
        }
        if ((i3 & 32) != 0) {
            f2 = trackPreviewView.dy;
        }
        if ((i3 & 64) != 0) {
            f3 = trackPreviewView.scale;
        }
        if ((i3 & 128) != 0) {
            z2 = trackPreviewView.transparentBg;
        }
        float f4 = f3;
        boolean z3 = z2;
        float f5 = f;
        float f6 = f2;
        return trackPreviewView.exportTemplatePng(i, i2, z, list, f5, f6, f4, z3);
    }

    public final Bitmap exportTemplatePng(int sizePx, int heightPx, boolean watermark, List<Integer> items, float dx, float dy, float scale, boolean transparentBg) {
        boolean z;
        List<Integer> list;
        float f;
        float f2;
        float f3;
        Intrinsics.checkNotNullParameter(items, "items");
        Pair<Integer, Integer> resolveExportSize = resolveExportSize(sizePx, heightPx);
        int intValue = resolveExportSize.component1().intValue();
        int intValue2 = resolveExportSize.component2().intValue();
        final WebView webView = this.web;
        if (webView == null) {
            return fallbackExport(intValue, intValue2, watermark, items, dx, dy, scale, transparentBg);
        }
        float max = intValue / Math.max(webView.getWidth(), 1);
        Bitmap createBitmap = Bitmap.createBitmap(intValue, intValue2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        int layerType = webView.getLayerType();
        try {
            try {
                webView.measure(View.MeasureSpec.makeMeasureSpec(intValue, View.MeasureSpec.EXACTLY), View.MeasureSpec.makeMeasureSpec(intValue2, View.MeasureSpec.EXACTLY));
                webView.layout(0, 0, intValue, intValue2);
                webView.setLayerType(1, null);
                f3 = scale;
                try {
                    webView.evaluateJavascript(buildRenderJs() + "stickerBridge.setTransform(" + (dx * max) + "," + (max * dy) + "," + f3 + "," + this.rotation + "," + this.tiltX + ");", null);
                    webView.draw(canvas);
                    return createBitmap;
                } catch (Exception unused) {
                    z = watermark;
                    list = items;
                    f = dx;
                    f2 = dy;
                    return fallbackExport(intValue, intValue2, z, list, f, f2, f3, transparentBg);
                }
            } catch (Exception unused2) {
                z = watermark;
                list = items;
                f = dx;
                f2 = dy;
                f3 = scale;
            }
        } finally {
            webView.setLayerType(layerType, null);
            post(new Runnable() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    TrackPreviewView.exportTemplatePng$lambda$62(webView, this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void exportTemplatePng$lambda$62(WebView webView, TrackPreviewView trackPreviewView) {
        webView.layout(0, 0, trackPreviewView.getWidth(), trackPreviewView.getHeight());
    }

    public static /* synthetic */ void exportTemplatePngAsync$default(TrackPreviewView trackPreviewView, int i, int i2, boolean z, List list, float f, float f2, float f3, boolean z2, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 1024;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = true;
        }
        if ((i3 & 8) != 0) {
            list = trackPreviewView.items;
        }
        if ((i3 & 16) != 0) {
            f = trackPreviewView.dx;
        }
        if ((i3 & 32) != 0) {
            f2 = trackPreviewView.dy;
        }
        if ((i3 & 64) != 0) {
            f3 = trackPreviewView.scale;
        }
        if ((i3 & 128) != 0) {
            z2 = trackPreviewView.transparentBg;
        }
        boolean z3 = z2;
        float f4 = f2;
        float f5 = f3;
        float f6 = f;
        boolean z4 = z;
        int i4 = i;
        trackPreviewView.exportTemplatePngAsync(i4, i2, z4, list, f6, f4, f5, z3, function1);
    }

    public final void exportTemplatePngAsync(int sizePx, int heightPx, final boolean watermark, final List<Integer> items, final float dx, final float dy, final float scale, final boolean transparentBg, final Function1<? super Bitmap, Unit> cb) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(cb, "cb");
        Pair<Integer, Integer> resolveExportSize = resolveExportSize(sizePx, heightPx);
        final int intValue = resolveExportSize.component1().intValue();
        final int intValue2 = resolveExportSize.component2().intValue();
        final WebView webView = this.web;
        if (webView == null) {
            cb.invoke(fallbackExport(intValue, intValue2, watermark, items, dx, dy, scale, transparentBg));
            return;
        }
        Pair<Float, Float> renderSize = renderSize();
        float floatValue = intValue / renderSize.component1().floatValue();
        float floatValue2 = intValue2 / renderSize.component2().floatValue();
        String buildRenderPayload = buildRenderPayload(intValue, intValue2);
        webView.evaluateJavascript("stickerBridge.setTransform(" + (floatValue * dx) + "," + (floatValue2 * dy) + "," + scale + "," + this.rotation + "," + this.tiltX + ");stickerBridge.exportPng(" + intValue + "," + intValue2 + "," + buildRenderPayload + ");", null);
        exportTemplatePngAsync$pollReady(webView, 0, new Function0() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit exportTemplatePngAsync$lambda$69;
                exportTemplatePngAsync$lambda$69 = TrackPreviewView.exportTemplatePngAsync$lambda$69(webView, cb, this, intValue, intValue2, watermark, items, dx, dy, scale, transparentBg);
                return exportTemplatePngAsync$lambda$69;
            }
        });
    }

    private static final void exportTemplatePngAsync$pollReady(final WebView webView, final int i, final Function0<Unit> function0) {
        webView.evaluateJavascript("window.__expReady||''", new ValueCallback() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda5
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                TrackPreviewView.exportTemplatePngAsync$pollReady$lambda$65(Function0.this, i, webView, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void exportTemplatePngAsync$pollReady$lambda$65(final Function0 function0, final int i, final WebView webView, String str) {
        if (str != null && com.jichi.ob.util.KtCompat.contains$default((CharSequence) str, (CharSequence) "1", false, 2, (Object) null)) {
            function0.invoke();
        } else if (i < 40) {
            webView.postDelayed(new Runnable() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    TrackPreviewView.exportTemplatePngAsync$pollReady$lambda$65$lambda$64(i, function0, webView);
                }
            }, 100L);
        } else {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void exportTemplatePngAsync$pollReady$lambda$65$lambda$64(int i, Function0 function0, WebView webView) {
        exportTemplatePngAsync$pollReady(webView, i + 1, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit exportTemplatePngAsync$lambda$69(final WebView webView, final Function1 function1, final TrackPreviewView trackPreviewView, final int i, final int i2, final boolean z, final List list, final float f, final float f2, final float f3, final boolean z2) {
        webView.evaluateJavascript("window.__expErr||''", new ValueCallback() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda10
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                TrackPreviewView.exportTemplatePngAsync$lambda$69$lambda$68(Function1.this, trackPreviewView, i, i2, z, list, f, f2, f3, z2, webView, (String) obj);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void exportTemplatePngAsync$lambda$69$lambda$68(final Function1 function1, final TrackPreviewView trackPreviewView, final int i, final int i2, final boolean z, final List list, final float f, final float f2, final float f3, final boolean z2, WebView webView, String str) {
        if (str != null && (!StringsKt.isBlank(str)) && !Intrinsics.areEqual(str, "\"\"") && !Intrinsics.areEqual(str, "null")) {
            Log.e("OB_STICKER", "canvas 导出异常: " + str);
            function1.invoke(trackPreviewView.fallbackExport(i, i2, z, list, f, f2, f3, z2));
        } else {
            final StringBuilder sb = new StringBuilder();
            exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk(webView, sb, trackPreviewView, 0, new Function0() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit exportTemplatePngAsync$lambda$69$lambda$68$lambda$67;
                    exportTemplatePngAsync$lambda$69$lambda$68$lambda$67 = TrackPreviewView.exportTemplatePngAsync$lambda$69$lambda$68$lambda$67(sb, function1, trackPreviewView, i, i2, z, list, f, f2, f3, z2);
                    return exportTemplatePngAsync$lambda$69$lambda$68$lambda$67;
                }
            });
        }
    }

    private static final void exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk(final WebView webView, final StringBuilder sb, final TrackPreviewView trackPreviewView, final int i, final Function0<Unit> function0) {
        webView.evaluateJavascript("(window.__expChunks&&window.__expChunks[" + i + "])||''", new ValueCallback() { // from class: com.jichi.ob.ui.TrackPreviewView$$ExternalSyntheticLambda13
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                TrackPreviewView.exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk$lambda$66(Function0.this, sb, trackPreviewView, i, webView, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk$lambda$66(Function0 function0, StringBuilder sb, TrackPreviewView trackPreviewView, int i, WebView webView, String str) {
        int hashCode;
        String obj = str != null ? StringsKt.trim((CharSequence) str).toString() : null;
        if (obj == null || ((hashCode = obj.hashCode()) == -1038130864 ? obj.equals("undefined") : !(hashCode == 1088 ? !obj.equals("\"\"") : !(hashCode == 3392903 && obj.equals("null"))))) {
            function0.invoke();
        } else {
            sb.append(trackPreviewView.unwrapJsString(obj));
            exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk(webView, sb, trackPreviewView, i + 1, function0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit exportTemplatePngAsync$lambda$69$lambda$68$lambda$67(StringBuilder sb, Function1 function1, TrackPreviewView trackPreviewView, int i, int i2, boolean z, List list, float f, float f2, float f3, boolean z2) {
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        Bitmap bitmap = null;
        if (sb2.length() > 64) {
            try {
                byte[] decode = Base64.decode(sb2, 0);
                bitmap = BitmapFactory.decodeByteArray(decode, 0, decode.length);
            } catch (Exception e) {
                Log.e("OB_STICKER", "base64 解码失败", e);
            }
        }
        if (bitmap == null) {
            function1.invoke(trackPreviewView.fallbackExport(i, i2, z, list, f, f2, f3, z2));
        } else {
            function1.invoke(bitmap);
        }
        return Unit.INSTANCE;
    }

    private final String unwrapJsString(String v) {
        String obj = StringsKt.trim((CharSequence) v).toString();
        if (obj.length() >= 2 && com.jichi.ob.util.KtCompat.startsWith$default(obj, "\"", false, 2, (Object) null) && com.jichi.ob.util.KtCompat.endsWith$default(obj, "\"", false, 2, (Object) null)) {
            obj = obj.substring(1, obj.length() - 1);
            Intrinsics.checkNotNullExpressionValue(obj, "substring(...)");
        }
        return com.jichi.ob.util.KtCompat.replace$default(com.jichi.ob.util.KtCompat.replace$default(com.jichi.ob.util.KtCompat.replace$default(com.jichi.ob.util.KtCompat.replace$default(obj, "\\\"", "\"", false, 4, (Object) null), "\\\\", "\\", false, 4, (Object) null), "\\n", "\n", false, 4, (Object) null), "\\/", "/", false, 4, (Object) null);
    }

    private final Bitmap fallbackExport(int wPx, int hPx, boolean watermark, List<Integer> items, float dx, float dy, float scale, boolean transparentBg) {
        Bitmap createBitmap = Bitmap.createBitmap(wPx, hPx, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        float f = wPx;
        drawTemplateSticker(new Canvas(createBitmap), f, f, items, dx, dy, scale, watermark, transparentBg);
        return createBitmap;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (this.web == null) {
            initWebRenderer();
        }
        if (this.webReady && this.web != null) {
            scheduleWebRender();
            return;
        }
        if (this.stickerPreview) {
            this.paint.setColor(-6643546);
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setTextSize(14.0f);
            this.paint.setTextAlign(Paint.Align.CENTER);
            canvas.drawText("贴纸渲染加载中…", getWidth() / 2.0f, getHeight() / 2.0f, this.paint);
            return;
        }
        if (this.points.isEmpty()) {
            this.paint.setColor(-6643546);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(1.0f);
            this.paint.setTextSize(14.0f);
            this.paint.setTextAlign(Paint.Align.CENTER);
            canvas.drawText("暂无轨迹数据", getWidth() / 2.0f, getHeight() / 2.0f, this.paint);
            return;
        }
        if (this.style == 3) {
            drawTrackIn(canvas, 0.0f, 0.0f, getWidth(), getHeight(), this.lineColorMode, this.dx, this.dy, this.scale);
        } else {
            drawTrackIn(canvas, 0.0f, 0.0f, getWidth(), getHeight(), 2, this.dx, this.dy, this.scale);
        }
    }

    private final double haversineM(double lat1, double lon1, double lat2, double lon2) {
        double radians = Math.toRadians(lat2 - lat1);
        double radians2 = Math.toRadians(lon2 - lon1);
        double d = 2;
        double d2 = radians / d;
        double d3 = radians2 / d;
        double sin = (Math.sin(d2) * Math.sin(d2)) + (Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) * Math.sin(d3) * Math.sin(d3));
        return d * 6371008.8d * Math.atan2(Math.sqrt(sin), Math.sqrt(1 - sin));
    }
}

package com.jichi.ob.merge;

import com.garmin.fit.GarminProduct;
import com.jichi.ob.GpxToFitConverter;
import io.jenetics.jpx.Degrees;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: StickerCore.kt */
/* loaded from: classes.dex */
public final class StickerCore {
    public static final int ITEM_ASCENT = 5;
    public static final int ITEM_AVG_CAD = 9;
    public static final int ITEM_AVG_HR = 6;
    public static final int ITEM_AVG_POWER = 7;
    public static final int ITEM_AVG_SPEED = 3;
    public static final int ITEM_CALORIES = 8;
    public static final int ITEM_DIST = 1;
    public static final int ITEM_DUR = 2;
    public static final int ITEM_MAX_ELE = 10;
    public static final int ITEM_MAX_SPEED = 4;
    public static final int WATERMARK_ALPHA = 153;
    public static final float WATERMARK_BOTTOM_RATIO = 0.028f;
    public static final String WATERMARK_TEXT = "鸡翅幸哲迈进OB";
    public static final float WATERMARK_TEXT_RATIO = 0.03f;
    public static final StickerCore INSTANCE = new StickerCore();
    private static final Map<Integer, Pair<String, String>> ITEM_DEFS = buildItemDefs();
    private static final List<Integer> ITEM_DEFAULT = java.util.Arrays.asList(1, 3, 2, 5, 6);

    private StickerCore() {
    }

    private static Map<Integer, Pair<String, String>> buildItemDefs() {
        Map<Integer, Pair<String, String>> m = new java.util.HashMap<>();
        m.put(1, TuplesKt.to("距离", "km"));
        m.put(2, TuplesKt.to("时长", ""));
        m.put(3, TuplesKt.to("平均速度", "km/h"));
        m.put(4, TuplesKt.to("最大速度", "km/h"));
        m.put(5, TuplesKt.to("累计爬升", "m"));
        m.put(6, TuplesKt.to("平均心率", "bpm"));
        m.put(7, TuplesKt.to("平均功率", "W"));
        m.put(8, TuplesKt.to("卡路里", "kcal"));
        m.put(9, TuplesKt.to("平均踏频", "rpm"));
        m.put(10, TuplesKt.to("最高海拔", "m"));
        return m;
    }

    /* compiled from: StickerCore.kt */
        public static final /* data */ class TrackStats {
        private final double ascentM;
        private final int avgCad;
        private final int avgHr;
        private final int avgPower;
        private final double avgSpeedKmh;
        private final int caloriesKcal;
        private final double distKm;
        private final long durationSec;
        private final int maxHr;
        private final double maxSpeedKmh;

        /* renamed from: component1, reason: from getter */
        public final double getDistKm() {
            return this.distKm;
        }

        /* renamed from: component10, reason: from getter */
        public final int getCaloriesKcal() {
            return this.caloriesKcal;
        }

        /* renamed from: component2, reason: from getter */
        public final long getDurationSec() {
            return this.durationSec;
        }

        /* renamed from: component3, reason: from getter */
        public final double getAvgSpeedKmh() {
            return this.avgSpeedKmh;
        }

        /* renamed from: component4, reason: from getter */
        public final double getMaxSpeedKmh() {
            return this.maxSpeedKmh;
        }

        /* renamed from: component5, reason: from getter */
        public final double getAscentM() {
            return this.ascentM;
        }

        /* renamed from: component6, reason: from getter */
        public final int getAvgHr() {
            return this.avgHr;
        }

        /* renamed from: component7, reason: from getter */
        public final int getMaxHr() {
            return this.maxHr;
        }

        /* renamed from: component8, reason: from getter */
        public final int getAvgCad() {
            return this.avgCad;
        }

        /* renamed from: component9, reason: from getter */
        public final int getAvgPower() {
            return this.avgPower;
        }

        public final TrackStats copy(double distKm, long durationSec, double avgSpeedKmh, double maxSpeedKmh, double ascentM, int avgHr, int maxHr, int avgCad, int avgPower, int caloriesKcal) {
            return new TrackStats(distKm, durationSec, avgSpeedKmh, maxSpeedKmh, ascentM, avgHr, maxHr, avgCad, avgPower, caloriesKcal);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TrackStats)) {
                return false;
            }
            TrackStats trackStats = (TrackStats) other;
            return Double.compare(this.distKm, trackStats.distKm) == 0 && this.durationSec == trackStats.durationSec && Double.compare(this.avgSpeedKmh, trackStats.avgSpeedKmh) == 0 && Double.compare(this.maxSpeedKmh, trackStats.maxSpeedKmh) == 0 && Double.compare(this.ascentM, trackStats.ascentM) == 0 && this.avgHr == trackStats.avgHr && this.maxHr == trackStats.maxHr && this.avgCad == trackStats.avgCad && this.avgPower == trackStats.avgPower && this.caloriesKcal == trackStats.caloriesKcal;
        }

        public int hashCode() {
            return (((((((((((((((((Double.hashCode(this.distKm) * 31) + Long.hashCode(this.durationSec)) * 31) + Double.hashCode(this.avgSpeedKmh)) * 31) + Double.hashCode(this.maxSpeedKmh)) * 31) + Double.hashCode(this.ascentM)) * 31) + Integer.hashCode(this.avgHr)) * 31) + Integer.hashCode(this.maxHr)) * 31) + Integer.hashCode(this.avgCad)) * 31) + Integer.hashCode(this.avgPower)) * 31) + Integer.hashCode(this.caloriesKcal);
        }

        public String toString() {
            return "TrackStats(distKm=" + this.distKm + ", durationSec=" + this.durationSec + ", avgSpeedKmh=" + this.avgSpeedKmh + ", maxSpeedKmh=" + this.maxSpeedKmh + ", ascentM=" + this.ascentM + ", avgHr=" + this.avgHr + ", maxHr=" + this.maxHr + ", avgCad=" + this.avgCad + ", avgPower=" + this.avgPower + ", caloriesKcal=" + this.caloriesKcal + ")";
        }

        public TrackStats(double d, long j, double d2, double d3, double d4, int i, int i2, int i3, int i4, int i5) {
            this.distKm = d;
            this.durationSec = j;
            this.avgSpeedKmh = d2;
            this.maxSpeedKmh = d3;
            this.ascentM = d4;
            this.avgHr = i;
            this.maxHr = i2;
            this.avgCad = i3;
            this.avgPower = i4;
            this.caloriesKcal = i5;
        }










    }

    public final TrackStats computeStats(List<GpxToFitConverter.TrackPoint> pts) {
        double d;
        double d2;
        int i;
        int i2;
        int i3;
        double d3;
        long j;
        Intrinsics.checkNotNullParameter(pts, "pts");
        if (pts.isEmpty()) {
            return new TrackStats(Degrees.MIN_VALUE, 0L, Degrees.MIN_VALUE, Degrees.MIN_VALUE, Degrees.MIN_VALUE, 0, 0, 0, 0, 0);
        }
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        int i4 = 0;
        GpxToFitConverter.TrackPoint trackPoint = null;
        double d4 = Degrees.MIN_VALUE;
        Double d5 = null;
        double d6 = Degrees.MIN_VALUE;
        double d7 = Degrees.MIN_VALUE;
        for (GpxToFitConverter.TrackPoint trackPoint2 : pts) {
            if (trackPoint != null) {
                double haversineM = haversineM(trackPoint.getLat(), trackPoint.getLon(), trackPoint2.getLat(), trackPoint2.getLon());
                d4 += haversineM;
                long ts = trackPoint2.getTs();
                long ts2 = trackPoint.getTs();
                d3 = Degrees.MIN_VALUE;
                double d8 = ts - ts2;
                if (d8 > Degrees.MIN_VALUE) {
                    double d9 = (haversineM / d8) * 3.6d;
                    if (d9 > d6) {
                        d6 = d9;
                    }
                }
            } else {
                d3 = Degrees.MIN_VALUE;
            }
            if (d5 != null && trackPoint2.getEle() > d5.doubleValue()) {
                d7 += trackPoint2.getEle() - d5.doubleValue();
            }
            if (trackPoint2.getHr() > 0) {
                j = 1;
                j2 += trackPoint2.getHr();
                j3++;
                if (trackPoint2.getHr() > i4) {
                    i4 = trackPoint2.getHr();
                }
            } else {
                j = 1;
            }
            if (trackPoint2.getCad() > 0) {
                j4 += trackPoint2.getCad();
                j5 += j;
            }
            if (trackPoint2.getPower() > 0) {
                j6 += trackPoint2.getPower();
                j7 += j;
            }
            d5 = trackPoint2.getEle() > d3 ? Double.valueOf(trackPoint2.getEle()) : null;
            trackPoint = trackPoint2;
        }
        Long valueOf = Long.valueOf(((GpxToFitConverter.TrackPoint) CollectionsKt.first((List) pts)).getTs());
        if (valueOf.longValue() <= 0) {
            valueOf = null;
        }
        long longValue = valueOf != null ? valueOf.longValue() : 0L;
        Long valueOf2 = Long.valueOf(((GpxToFitConverter.TrackPoint) CollectionsKt.last((List) pts)).getTs());
        if (valueOf2.longValue() <= 0) {
            valueOf2 = null;
        }
        long coerceAtLeast = RangesKt.coerceAtLeast((valueOf2 != null ? valueOf2.longValue() : 0L) - longValue, 0L);
        if (coerceAtLeast > 0) {
            d = 3600.0d;
            d2 = (d4 / 1000.0d) / (coerceAtLeast / 3600.0d);
        } else {
            d = 3600.0d;
            d2 = 0.0d;
        }
        int i5 = j7 > 0 ? (int) (j6 / j7) : 0;
        if (i5 > 0) {
            i = i4;
            i2 = i5;
            i3 = (int) (i5 * (coerceAtLeast / d) * 3.6d);
        } else {
            i = i4;
            i2 = i5;
            i3 = (int) ((d4 / 1000.0d) * 60.0d);
        }
        return new TrackStats(d4 / 1000.0d, coerceAtLeast, d2, d6, d7, j3 > 0 ? (int) (j2 / j3) : 0, i, j5 > 0 ? (int) (j4 / j5) : 0, i2, i3);
    }

    public static /* synthetic */ List projectTrack$default(StickerCore stickerCore, List list, float f, float f2, float f3, int i, Object obj) {
        if ((i & 8) != 0) {
            f3 = 18.0f;
        }
        return stickerCore.projectTrack(list, f, f2, f3);
    }

    public final List<Pair<Float, Float>> projectTrack(List<GpxToFitConverter.TrackPoint> pts, float w, float h, float pad) {
        Intrinsics.checkNotNullParameter(pts, "pts");
        if (pts.size() < 2) {
            return CollectionsKt.emptyList();
        }
        double d = -1.7976931348623157E308d;
        double d2 = Double.MAX_VALUE;
        double d3 = Double.MAX_VALUE;
        double d4 = -1.7976931348623157E308d;
        for (GpxToFitConverter.TrackPoint trackPoint : pts) {
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
        double coerceAtLeast = RangesKt.coerceAtLeast(d - d2, 1.0E-6d);
        float f = 2 * pad;
        float coerceAtLeast2 = (float) RangesKt.coerceAtLeast(d4 - d3, 1.0E-6d);
        float f2 = (float) coerceAtLeast;
        float min = Math.min((w - f) / coerceAtLeast2, (h - f) / f2);
        float f3 = (w - (coerceAtLeast2 * min)) / 2.0f;
        float f4 = (h - (f2 * min)) / 2.0f;
        List list = pts;
        ArrayList<Pair<Float, Float>> arrayList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (GpxToFitConverter.TrackPoint trackPoint2 : list) {
            arrayList.add(TuplesKt.to(Float.valueOf((((float) (trackPoint2.getLon() - d3)) * min) + f3), Float.valueOf((((float) (d - trackPoint2.getLat())) * min) + f4)));
        }
        return arrayList;
    }

    public static /* synthetic */ List projectTrackEx$default(StickerCore stickerCore, List list, float f, float f2, float f3, float f4, float f5, float f6, int i, Object obj) {
        return stickerCore.projectTrackEx(list, f, f2, f3, (i & 16) != 0 ? 0.0f : f4, (i & 32) != 0 ? 0.0f : f5, (i & 64) != 0 ? 1.0f : f6);
    }

    public final List<Pair<Float, Float>> projectTrackEx(List<GpxToFitConverter.TrackPoint> pts, float w, float h, float pad, float dx, float dy, float scale) {
        Intrinsics.checkNotNullParameter(pts, "pts");
        List<Pair<Float, Float>> projectTrack = projectTrack(pts, w, h, pad);
        if (dx == 0.0f && dy == 0.0f && scale == 1.0f) {
            return projectTrack;
        }
        float f = w / 2.0f;
        float f2 = h / 2.0f;
        List<Pair<Float, Float>> list = projectTrack;
        ArrayList<Pair<Float, Float>> arrayList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            arrayList.add(TuplesKt.to(Float.valueOf(((((Number) pair.component1()).floatValue() - f) * scale) + f + dx), Float.valueOf(((((Number) pair.component2()).floatValue() - f2) * scale) + f2 + dy)));
        }
        return arrayList;
    }

    /* compiled from: StickerCore.kt */
        public static final /* data */ class TerrainGeom {
        private final List<List<Pair<Float, Float>>> contours;
        private final float eMax;
        private final float eMin;
        private final List<Float> eleLevels;
        private final List<Pair<Float, Float>> profile;
        private final List<Pair<Float, Float>> side;

        public static /* synthetic */ TerrainGeom copy$default(TerrainGeom terrainGeom, List list, List list2, List list3, List list4, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                list = terrainGeom.profile;
            }
            if ((i & 2) != 0) {
                list2 = terrainGeom.side;
            }
            if ((i & 4) != 0) {
                list3 = terrainGeom.contours;
            }
            if ((i & 8) != 0) {
                list4 = terrainGeom.eleLevels;
            }
            if ((i & 16) != 0) {
                f = terrainGeom.eMin;
            }
            if ((i & 32) != 0) {
                f2 = terrainGeom.eMax;
            }
            float f3 = f;
            float f4 = f2;
            return terrainGeom.copy(list, list2, list3, list4, f3, f4);
        }

        public final List<Pair<Float, Float>> component1() {
            return this.profile;
        }

        public final List<Pair<Float, Float>> component2() {
            return this.side;
        }

        public final List<List<Pair<Float, Float>>> component3() {
            return this.contours;
        }

        public final List<Float> component4() {
            return this.eleLevels;
        }

        /* renamed from: component5, reason: from getter */
        public final float getEMin() {
            return this.eMin;
        }

        /* renamed from: component6, reason: from getter */
        public final float getEMax() {
            return this.eMax;
        }

        public final TerrainGeom copy(List<Pair<Float, Float>> profile, List<Pair<Float, Float>> side, List<List<Pair<Float, Float>>> contours, List<Float> eleLevels, float eMin, float eMax) {
            Intrinsics.checkNotNullParameter(profile, "profile");
            Intrinsics.checkNotNullParameter(side, "side");
            Intrinsics.checkNotNullParameter(contours, "contours");
            Intrinsics.checkNotNullParameter(eleLevels, "eleLevels");
            return new TerrainGeom(profile, side, contours, eleLevels, eMin, eMax);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TerrainGeom)) {
                return false;
            }
            TerrainGeom terrainGeom = (TerrainGeom) other;
            return Intrinsics.areEqual(this.profile, terrainGeom.profile) && Intrinsics.areEqual(this.side, terrainGeom.side) && Intrinsics.areEqual(this.contours, terrainGeom.contours) && Intrinsics.areEqual(this.eleLevels, terrainGeom.eleLevels) && Float.compare(this.eMin, terrainGeom.eMin) == 0 && Float.compare(this.eMax, terrainGeom.eMax) == 0;
        }

        public int hashCode() {
            return (((((((((this.profile.hashCode() * 31) + this.side.hashCode()) * 31) + this.contours.hashCode()) * 31) + this.eleLevels.hashCode()) * 31) + Float.hashCode(this.eMin)) * 31) + Float.hashCode(this.eMax);
        }

        public String toString() {
            return "TerrainGeom(profile=" + this.profile + ", side=" + this.side + ", contours=" + this.contours + ", eleLevels=" + this.eleLevels + ", eMin=" + this.eMin + ", eMax=" + this.eMax + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public TerrainGeom(List<Pair<Float, Float>> profile, List<Pair<Float, Float>> side, List<List<Pair<Float, Float>>> contours, List<Float> eleLevels, float f, float f2) {
            Intrinsics.checkNotNullParameter(profile, "profile");
            Intrinsics.checkNotNullParameter(side, "side");
            Intrinsics.checkNotNullParameter(contours, "contours");
            Intrinsics.checkNotNullParameter(eleLevels, "eleLevels");
            this.profile = profile;
            this.side = side;
            this.contours = contours;
            this.eleLevels = eleLevels;
            this.eMin = f;
            this.eMax = f2;
        }

        public final List<Pair<Float, Float>> getProfile() {
            return this.profile;
        }

        public final List<Pair<Float, Float>> getSide() {
            return this.side;
        }

        public final List<List<Pair<Float, Float>>> getContours() {
            return this.contours;
        }

        public final List<Float> getEleLevels() {
            return this.eleLevels;
        }


    }

    public static /* synthetic */ TerrainGeom elevationTerrain$default(StickerCore stickerCore, List list, float f, float f2, float f3, float f4, float f5, int i, int i2, Object obj) {
        if ((i2 & 32) != 0) {
            f5 = 12.0f;
        }
        return stickerCore.elevationTerrain(list, f, f2, f3, f4, f5, (i2 & 64) != 0 ? 5 : i);
    }

    public final TerrainGeom elevationTerrain(List<GpxToFitConverter.TrackPoint> pts, float l, float t, float r, float b, float thickness, int layers) {
        double d;
        Intrinsics.checkNotNullParameter(pts, "pts");
        if (pts.size() < 2) {
            return new TerrainGeom(CollectionsKt.emptyList(), CollectionsKt.emptyList(), CollectionsKt.emptyList(), CollectionsKt.emptyList(), 0.0f, 1.0f);
        }
        int size = pts.size();
        float[] cumulativeDist = cumulativeDist(pts);
        int i = 1;
        float max = Math.max(cumulativeDist[size - 1], 1.0f);
        Iterator<GpxToFitConverter.TrackPoint> it = pts.iterator();
        float f = Float.MAX_VALUE;
        float f2 = -3.4028235E38f;
        while (true) {
            boolean hasNext = it.hasNext();
            d = Degrees.MIN_VALUE;
            if (!hasNext) {
                break;
            }
            GpxToFitConverter.TrackPoint next = it.next();
            if (next.getEle() > Degrees.MIN_VALUE) {
                if (next.getEle() < f) {
                    f = (float) next.getEle();
                }
                if (next.getEle() > f2) {
                    f2 = (float) next.getEle();
                }
            }
        }
        if (f2 <= f) {
            f = 0.0f;
            f2 = 1.0f;
        }
        float coerceAtLeast = RangesKt.coerceAtLeast(b - t, 1.0f);
        float coerceAtLeast2 = RangesKt.coerceAtLeast(coerceAtLeast - (0.08f * coerceAtLeast), 4.0f);
        List list = pts;
        ArrayList<Pair<Float, Float>> arrayList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list, 10));
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            GpxToFitConverter.TrackPoint trackPoint = (GpxToFitConverter.TrackPoint) obj;
            arrayList.add(TuplesKt.to(Float.valueOf(l + ((cumulativeDist[i2] / max) * (r - l))), Float.valueOf(b - ((((trackPoint.getEle() > d ? (float) trackPoint.getEle() : f) - f) / (f2 - f)) * coerceAtLeast2))));
            i2 = i3;
            d = Degrees.MIN_VALUE;
        }
        ArrayList<Pair<Float, Float>> arrayList2 = arrayList;
        ArrayList<Pair<Float, Float>> arrayList3 = arrayList2;
        ArrayList<Pair<Float, Float>> arrayList4 = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
        for (Pair pair : arrayList3) {
            arrayList4.add(TuplesKt.to(Float.valueOf(((Number) pair.component1()).floatValue()), Float.valueOf(RangesKt.coerceAtMost(((Number) pair.component2()).floatValue() + thickness, b))));
        }
        ArrayList<Pair<Float, Float>> arrayList5 = arrayList4;
        ArrayList<List<Pair<Float, Float>>> arrayList6 = new ArrayList<>();
        ArrayList<Float> arrayList7 = new ArrayList<>();
        if (1 <= layers) {
        }
        return new TerrainGeom(arrayList2, arrayList5, arrayList6, arrayList7, f, f2);
    }

    public final float[] cumulativeDist(List<GpxToFitConverter.TrackPoint> pts) {
        Intrinsics.checkNotNullParameter(pts, "pts");
        float[] fArr = new float[pts.size()];
        int size = pts.size();
        for (int i = 1; i < size; i++) {
            int i2 = i - 1;
            fArr[i] = fArr[i2] + ((float) haversineM(pts.get(i2).getLat(), pts.get(i2).getLon(), pts.get(i).getLat(), pts.get(i).getLon()));
        }
        return fArr;
    }

    public final List<Pair<Float, Float>> elevationProfile(List<GpxToFitConverter.TrackPoint> pts, float l, float t, float r, float b) {
        Intrinsics.checkNotNullParameter(pts, "pts");
        int size = pts.size();
        float[] cumulativeDist = cumulativeDist(pts);
        float f = 1.0f;
        float max = Math.max(cumulativeDist[size - 1], 1.0f);
        float f2 = Float.MAX_VALUE;
        float f3 = -3.4028235E38f;
        for (GpxToFitConverter.TrackPoint trackPoint : pts) {
            if (trackPoint.getEle() > Degrees.MIN_VALUE) {
                if (trackPoint.getEle() < f2) {
                    f2 = (float) trackPoint.getEle();
                }
                if (trackPoint.getEle() > f3) {
                    f3 = (float) trackPoint.getEle();
                }
            }
        }
        if (f3 <= f2) {
            f2 = 0.0f;
            f3 = 1.0f;
        }
        float f4 = b - t;
        List list = pts;
        ArrayList<Pair<Float, Float>> arrayList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list, 10));
        int i = 0;
        return arrayList;
    }

    public final float[] pointSpeeds(List<GpxToFitConverter.TrackPoint> pts) {
        Intrinsics.checkNotNullParameter(pts, "pts");
        float[] fArr = new float[pts.size()];
        int size = pts.size();
        for (int i = 1; i < size; i++) {
            GpxToFitConverter.TrackPoint trackPoint = pts.get(i - 1);
            GpxToFitConverter.TrackPoint trackPoint2 = pts.get(i);
            double ts = trackPoint2.getTs() - trackPoint.getTs();
            fArr[i] = ts > Degrees.MIN_VALUE ? (float) (haversineM(trackPoint.getLat(), trackPoint.getLon(), trackPoint2.getLat(), trackPoint2.getLon()) / ts) : 0.0f;
        }
        return fArr;
    }

    public final String fmtDur(long sec) {
        long j = GarminProduct.VENUSQ;
        long j2 = sec / j;
        long j3 = 60;
        long j4 = (sec % j) / j3;
        long j5 = sec % j3;
        if (j2 > 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.US, "%d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j2), Long.valueOf(j4), Long.valueOf(j5)}, 3));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            return format;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String format2 = String.format(Locale.US, "%d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j4), Long.valueOf(j5)}, 2));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        return format2;
    }

    public final Map<Integer, Pair<String, String>> getITEM_DEFS() {
        return ITEM_DEFS;
    }

    public final List<Integer> getITEM_DEFAULT() {
        return ITEM_DEFAULT;
    }

    public final String itemValue(int id, TrackStats s) {
        Intrinsics.checkNotNullParameter(s, "s");
        switch (id) {
            case 1:
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(s.getDistKm())}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                return format;
            case 2:
                return fmtDur(s.getDurationSec());
            case 3:
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                String format2 = String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(s.getAvgSpeedKmh())}, 1));
                Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                return format2;
            case 4:
                StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                String format3 = String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(s.getMaxSpeedKmh())}, 1));
                Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
                return format3;
            case 5:
                StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
                String format4 = String.format(Locale.US, "%.0f", Arrays.copyOf(new Object[]{Double.valueOf(s.getAscentM())}, 1));
                Intrinsics.checkNotNullExpressionValue(format4, "format(...)");
                return format4;
            case 6:
                return s.getAvgHr() > 0 ? String.valueOf(s.getAvgHr()) : "—";
            case 7:
                return s.getAvgPower() > 0 ? String.valueOf(s.getAvgPower()) : "—";
            case 8:
                return s.getCaloriesKcal() > 0 ? String.valueOf(s.getCaloriesKcal()) : "—";
            case 9:
                return s.getAvgCad() > 0 ? String.valueOf(s.getAvgCad()) : "—";
            case 10:
            default:
                return "—";
        }
    }

    public final String shrinkNum(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        MatchResult find$default = com.jichi.ob.util.KtCompat.find$default(new Regex("(\\d+\\.\\d)\\d"), text, 0, 2, null);
        if (find$default == null) {
            return text;
        }
        return com.jichi.ob.util.KtCompat.replace$default(text, find$default.getValue(), find$default.getGroupValues().get(1), false, 4, (Object) null);
    }

    public final double maxEle(List<GpxToFitConverter.TrackPoint> pts) {
        Intrinsics.checkNotNullParameter(pts, "pts");
        double d = Degrees.MIN_VALUE;
        return d;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: StickerCore.kt */
        public enum StickerBg {
                DEEP_SPACE("深空"),
                CHECKER("棋盘"),
                NEON("霓虹"),
                PURE_BLACK("纯黑"),
                MINIMAL_WHITE("极简白"),
                CREAM("奶油"),
                LIGHT_GRAY("浅灰"),
                WARM_POSTER("暖白"),
                MAP_GRID("地图网格"),
                SATELLITE("深色卫星"),
                LIGHT_MAP("浅色地图"),
                CONTOUR("等高线"),
                HEAT_BG("热力底"),
                ORANGE_BAND("橙带底"),
                ICE_BAND("冰蓝底"),
                LIGHT_TRAIL("光绘底"),
                DUAL_DARK("对比卡底"),
                POSTER_ORANGE("海报橙"),
                RETRO_PURPLE("复古紫"),
                ANNUAL_DARK("年度底"),
                PHOTO_OVERLAY("照片叠加"),
                FROSTED("磨砂玻璃"),
                PHOTO_SPLIT("双图拼接");
        private final String key;

        StickerBg(String key) { this.key = key; }

        public String getKey() { return this.key; }

        public static java.util.List<StickerBg> getEntries() { return java.util.Arrays.asList(values()); }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: StickerCore.kt */
        public enum StickerTrack {
                ORANGE_GRAD("橙焰"),
                WHITE("纯白"),
                BLACK_FINE("黑细"),
                GRAY_FINE("灰细"),
                NEON("霓虹"),
                HEAT("热力"),
                ICE_3D("冰蓝3D"),
                PHANTOM("光绘");
        private final String key;

        StickerTrack(String key) { this.key = key; }

        public String getKey() { return this.key; }

        public static java.util.List<StickerTrack> getEntries() { return java.util.Arrays.asList(values()); }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: StickerCore.kt */
        public enum StickerLayout {
                TRIPLE("三连排"),
                CORNER("角标"),
                GRID("六宫格"),
                BIG("竖排大字"),
                DUAL("对比卡"),
                BAR("底部条"),
                POSTER("海报大字");
        private final String key;

        StickerLayout(String key) { this.key = key; }

        public String getKey() { return this.key; }

        public static java.util.List<StickerLayout> getEntries() { return java.util.Arrays.asList(values()); }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: StickerCore.kt */
        public enum StickerText {
                WHITE("白"),
                BLACK("黑"),
                ORANGE("橙"),
                SKY("天蓝"),
                NEON_PINK("霓虹"),
                CREAM("米白");
        private final String key;

        StickerText(String key) { this.key = key; }

        public String getKey() { return this.key; }

        public static java.util.List<StickerText> getEntries() { return java.util.Arrays.asList(values()); }
    }

    /* compiled from: StickerCore.kt */
        public static final /* data */ class StickerTemplate {
        private final StickerBg bg;
        private final String category;
        private final boolean glow;
        private final int id;
        private final StickerLayout layout;
        private final String name;
        private final StickerText text;
        private final StickerTrack track;

        public static /* synthetic */ StickerTemplate copy$default(StickerTemplate stickerTemplate, int i, String str, String str2, StickerBg stickerBg, StickerTrack stickerTrack, StickerLayout stickerLayout, StickerText stickerText, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = stickerTemplate.id;
            }
            if ((i2 & 2) != 0) {
                str = stickerTemplate.name;
            }
            if ((i2 & 4) != 0) {
                str2 = stickerTemplate.category;
            }
            if ((i2 & 8) != 0) {
                stickerBg = stickerTemplate.bg;
            }
            if ((i2 & 16) != 0) {
                stickerTrack = stickerTemplate.track;
            }
            if ((i2 & 32) != 0) {
                stickerLayout = stickerTemplate.layout;
            }
            if ((i2 & 64) != 0) {
                stickerText = stickerTemplate.text;
            }
            if ((i2 & 128) != 0) {
                z = stickerTemplate.glow;
            }
            StickerText stickerText2 = stickerText;
            boolean z2 = z;
            StickerTrack stickerTrack2 = stickerTrack;
            StickerLayout stickerLayout2 = stickerLayout;
            return stickerTemplate.copy(i, str, str2, stickerBg, stickerTrack2, stickerLayout2, stickerText2, z2);
        }

        /* renamed from: component1, reason: from getter */
        public final int getId() {
            return this.id;
        }

        /* renamed from: component2, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* renamed from: component3, reason: from getter */
        public final String getCategory() {
            return this.category;
        }

        /* renamed from: component4, reason: from getter */
        public final StickerBg getBg() {
            return this.bg;
        }

        /* renamed from: component5, reason: from getter */
        public final StickerTrack getTrack() {
            return this.track;
        }

        /* renamed from: component6, reason: from getter */
        public final StickerLayout getLayout() {
            return this.layout;
        }

        /* renamed from: component7, reason: from getter */
        public final StickerText getText() {
            return this.text;
        }

        /* renamed from: component8, reason: from getter */
        public final boolean getGlow() {
            return this.glow;
        }

        public final StickerTemplate copy(int id, String name, String category, StickerBg bg, StickerTrack track, StickerLayout layout, StickerText text, boolean glow) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(category, "category");
            Intrinsics.checkNotNullParameter(bg, "bg");
            Intrinsics.checkNotNullParameter(track, "track");
            Intrinsics.checkNotNullParameter(layout, "layout");
            Intrinsics.checkNotNullParameter(text, "text");
            return new StickerTemplate(id, name, category, bg, track, layout, text, glow);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StickerTemplate)) {
                return false;
            }
            StickerTemplate stickerTemplate = (StickerTemplate) other;
            return this.id == stickerTemplate.id && Intrinsics.areEqual(this.name, stickerTemplate.name) && Intrinsics.areEqual(this.category, stickerTemplate.category) && this.bg == stickerTemplate.bg && this.track == stickerTemplate.track && this.layout == stickerTemplate.layout && this.text == stickerTemplate.text && this.glow == stickerTemplate.glow;
        }

        public int hashCode() {
            return (((((((((((((Integer.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + this.category.hashCode()) * 31) + this.bg.hashCode()) * 31) + this.track.hashCode()) * 31) + this.layout.hashCode()) * 31) + this.text.hashCode()) * 31) + Boolean.hashCode(this.glow);
        }

        public String toString() {
            return "StickerTemplate(id=" + this.id + ", name=" + this.name + ", category=" + this.category + ", bg=" + this.bg + ", track=" + this.track + ", layout=" + this.layout + ", text=" + this.text + ", glow=" + this.glow + ")";
        }

        public StickerTemplate(int i, String name, String category, StickerBg bg, StickerTrack track, StickerLayout layout, StickerText text, boolean z) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(category, "category");
            Intrinsics.checkNotNullParameter(bg, "bg");
            Intrinsics.checkNotNullParameter(track, "track");
            Intrinsics.checkNotNullParameter(layout, "layout");
            Intrinsics.checkNotNullParameter(text, "text");
            this.id = i;
            this.name = name;
            this.category = category;
            this.bg = bg;
            this.track = track;
            this.layout = layout;
            this.text = text;
            this.glow = z;
        }








    }

    /* compiled from: StickerCore.kt */
        public static final class StickerTemplates {
        public static final StickerTemplates INSTANCE = new StickerTemplates();
        private static final List<String> CATEGORIES = CollectionsKt.listOf((Object[]) new String[]{"深色经典", "浅色极简", "地图样式", "艺术特效", "数据卡片", "照片"});
        private static final List<StickerTemplate> ALL = CollectionsKt.listOf((Object[]) new StickerTemplate[]{new StickerTemplate(1, "深空橙焰", "深色经典", StickerBg.DEEP_SPACE, StickerTrack.ORANGE_GRAD, StickerLayout.TRIPLE, StickerText.WHITE, true), new StickerTemplate(2, "黑白棋盘", "深色经典", StickerBg.CHECKER, StickerTrack.WHITE, StickerLayout.TRIPLE, StickerText.WHITE, true), new StickerTemplate(3, "霓虹夜跑", "深色经典", StickerBg.NEON, StickerTrack.NEON, StickerLayout.TRIPLE, StickerText.NEON_PINK, true), new StickerTemplate(4, "纯黑极简", "深色经典", StickerBg.PURE_BLACK, StickerTrack.WHITE, StickerLayout.CORNER, StickerText.WHITE, false), new StickerTemplate(5, "极简白", "浅色极简", StickerBg.MINIMAL_WHITE, StickerTrack.BLACK_FINE, StickerLayout.TRIPLE, StickerText.BLACK, false), new StickerTemplate(6, "奶油纸感", "浅色极简", StickerBg.CREAM, StickerTrack.BLACK_FINE, StickerLayout.TRIPLE, StickerText.CREAM, false), new StickerTemplate(7, "浅灰线条", "浅色极简", StickerBg.LIGHT_GRAY, StickerTrack.GRAY_FINE, StickerLayout.BAR, StickerText.BLACK, false), new StickerTemplate(8, "暖白海报", "浅色极简", StickerBg.WARM_POSTER, StickerTrack.ORANGE_GRAD, StickerLayout.POSTER, StickerText.BLACK, false), new StickerTemplate(9, "地图网格", "地图样式", StickerBg.MAP_GRID, StickerTrack.ORANGE_GRAD, StickerLayout.BAR, StickerText.WHITE, true), new StickerTemplate(10, "深色卫星", "地图样式", StickerBg.SATELLITE, StickerTrack.WHITE, StickerLayout.TRIPLE, StickerText.WHITE, true), new StickerTemplate(11, "浅色地图", "地图样式", StickerBg.LIGHT_MAP, StickerTrack.ORANGE_GRAD, StickerLayout.TRIPLE, StickerText.BLACK, false), new StickerTemplate(12, "等高线", "地图样式", StickerBg.CONTOUR, StickerTrack.ORANGE_GRAD, StickerLayout.TRIPLE, StickerText.CREAM, false), new StickerTemplate(13, "速度热力", "艺术特效", StickerBg.HEAT_BG, StickerTrack.HEAT, StickerLayout.TRIPLE, StickerText.WHITE, false), new StickerTemplate(14, "3D橙带", "艺术特效", StickerBg.ORANGE_BAND, StickerTrack.ORANGE_GRAD, StickerLayout.TRIPLE, StickerText.WHITE, true), new StickerTemplate(15, "冬季3D冰蓝", "艺术特效", StickerBg.ICE_BAND, StickerTrack.ICE_3D, StickerLayout.BIG, StickerText.WHITE, true), new StickerTemplate(16, "光绘拖影", "艺术特效", StickerBg.LIGHT_TRAIL, StickerTrack.PHANTOM, StickerLayout.TRIPLE, StickerText.WHITE, true), new StickerTemplate(17, "对比卡", "数据卡片", StickerBg.DUAL_DARK, StickerTrack.ORANGE_GRAD, StickerLayout.DUAL, StickerText.WHITE, true), new StickerTemplate(18, "六宫格", "数据卡片", StickerBg.DEEP_SPACE, StickerTrack.ORANGE_GRAD, StickerLayout.GRID, StickerText.WHITE, false), new StickerTemplate(19, "海报大字", "数据卡片", StickerBg.POSTER_ORANGE, StickerTrack.ORANGE_GRAD, StickerLayout.POSTER, StickerText.WHITE, false), new StickerTemplate(20, "复古游戏", "数据卡片", StickerBg.RETRO_PURPLE, StickerTrack.WHITE, StickerLayout.GRID, StickerText.WHITE, false), new StickerTemplate(21, "透明叠加", "照片", StickerBg.PHOTO_OVERLAY, StickerTrack.ORANGE_GRAD, StickerLayout.CORNER, StickerText.WHITE, true), new StickerTemplate(22, "磨砂玻璃", "照片", StickerBg.FROSTED, StickerTrack.ORANGE_GRAD, StickerLayout.BAR, StickerText.WHITE, true), new StickerTemplate(23, "双图拼接", "照片", StickerBg.PHOTO_SPLIT, StickerTrack.ORANGE_GRAD, StickerLayout.DUAL, StickerText.WHITE, false), new StickerTemplate(24, "年度总结", "照片", StickerBg.ANNUAL_DARK, StickerTrack.ORANGE_GRAD, StickerLayout.POSTER, StickerText.WHITE, false)});
        private static final int COMBO_COUNT = (((StickerBg.getEntries().size() * StickerTrack.getEntries().size()) * StickerLayout.getEntries().size()) * StickerText.getEntries().size()) * 2;

        private StickerTemplates() {
        }

        public final List<String> getCATEGORIES() {
            return CATEGORIES;
        }

        public final List<StickerTemplate> getALL() {
            return ALL;
        }

        public final List<StickerTemplate> byCategory(String cat) {
            Intrinsics.checkNotNullParameter(cat, "cat");
            List<StickerTemplate> list = ALL;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (Intrinsics.areEqual(((StickerTemplate) obj).getCategory(), cat)) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }

        public final StickerTemplate byId(int id) {
            Object obj;
            Iterator it = ALL.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((StickerTemplate) obj).getId() == id) {
                    break;
                }
            }
            return (StickerTemplate) obj;
        }

        /* compiled from: StickerCore.kt */
                public static final /* data */ class Combo {
            private final StickerBg bg;
            private final boolean glow;
            private final StickerLayout layout;
            private final StickerText text;
            private final StickerTrack track;

            public static /* synthetic */ Combo copy$default(Combo combo, StickerBg stickerBg, StickerTrack stickerTrack, StickerLayout stickerLayout, StickerText stickerText, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    stickerBg = combo.bg;
                }
                if ((i & 2) != 0) {
                    stickerTrack = combo.track;
                }
                if ((i & 4) != 0) {
                    stickerLayout = combo.layout;
                }
                if ((i & 8) != 0) {
                    stickerText = combo.text;
                }
                if ((i & 16) != 0) {
                    z = combo.glow;
                }
                boolean z2 = z;
                StickerLayout stickerLayout2 = stickerLayout;
                return combo.copy(stickerBg, stickerTrack, stickerLayout2, stickerText, z2);
            }

            /* renamed from: component1, reason: from getter */
            public final StickerBg getBg() {
                return this.bg;
            }

            /* renamed from: component2, reason: from getter */
            public final StickerTrack getTrack() {
                return this.track;
            }

            /* renamed from: component3, reason: from getter */
            public final StickerLayout getLayout() {
                return this.layout;
            }

            /* renamed from: component4, reason: from getter */
            public final StickerText getText() {
                return this.text;
            }

            /* renamed from: component5, reason: from getter */
            public final boolean getGlow() {
                return this.glow;
            }

            public final Combo copy(StickerBg bg, StickerTrack track, StickerLayout layout, StickerText text, boolean glow) {
                Intrinsics.checkNotNullParameter(bg, "bg");
                Intrinsics.checkNotNullParameter(track, "track");
                Intrinsics.checkNotNullParameter(layout, "layout");
                Intrinsics.checkNotNullParameter(text, "text");
                return new Combo(bg, track, layout, text, glow);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Combo)) {
                    return false;
                }
                Combo combo = (Combo) other;
                return this.bg == combo.bg && this.track == combo.track && this.layout == combo.layout && this.text == combo.text && this.glow == combo.glow;
            }

            public int hashCode() {
                return (((((((this.bg.hashCode() * 31) + this.track.hashCode()) * 31) + this.layout.hashCode()) * 31) + this.text.hashCode()) * 31) + Boolean.hashCode(this.glow);
            }

            public String toString() {
                return "Combo(bg=" + this.bg + ", track=" + this.track + ", layout=" + this.layout + ", text=" + this.text + ", glow=" + this.glow + ")";
            }

            public Combo(StickerBg bg, StickerTrack track, StickerLayout layout, StickerText text, boolean z) {
                Intrinsics.checkNotNullParameter(bg, "bg");
                Intrinsics.checkNotNullParameter(track, "track");
                Intrinsics.checkNotNullParameter(layout, "layout");
                Intrinsics.checkNotNullParameter(text, "text");
                this.bg = bg;
                this.track = track;
                this.layout = layout;
                this.text = text;
                this.glow = z;
            }

            public /* synthetic */ Combo(StickerBg stickerBg, StickerTrack stickerTrack, StickerLayout stickerLayout, StickerText stickerText, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(stickerBg, stickerTrack, stickerLayout, stickerText, (i & 16) != 0 ? false : z);
            }





        }

        public final int getCOMBO_COUNT() {
            return COMBO_COUNT;
        }
    }

    /* compiled from: StickerCore.kt */
        public static final /* data */ class SummaryStats {
        private final int count;
        private final double totalAscentM;
        private final double totalKm;
        private final long totalSec;

        public static /* synthetic */ SummaryStats copy$default(SummaryStats summaryStats, int i, double d, long j, double d2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = summaryStats.count;
            }
            if ((i2 & 2) != 0) {
                d = summaryStats.totalKm;
            }
            if ((i2 & 4) != 0) {
                j = summaryStats.totalSec;
            }
            if ((i2 & 8) != 0) {
                d2 = summaryStats.totalAscentM;
            }
            double d3 = d2;
            return summaryStats.copy(i, d, j, d3);
        }

        /* renamed from: component1, reason: from getter */
        public final int getCount() {
            return this.count;
        }

        /* renamed from: component2, reason: from getter */
        public final double getTotalKm() {
            return this.totalKm;
        }

        /* renamed from: component3, reason: from getter */
        public final long getTotalSec() {
            return this.totalSec;
        }

        /* renamed from: component4, reason: from getter */
        public final double getTotalAscentM() {
            return this.totalAscentM;
        }

        public final SummaryStats copy(int count, double totalKm, long totalSec, double totalAscentM) {
            return new SummaryStats(count, totalKm, totalSec, totalAscentM);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SummaryStats)) {
                return false;
            }
            SummaryStats summaryStats = (SummaryStats) other;
            return this.count == summaryStats.count && Double.compare(this.totalKm, summaryStats.totalKm) == 0 && this.totalSec == summaryStats.totalSec && Double.compare(this.totalAscentM, summaryStats.totalAscentM) == 0;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.count) * 31) + Double.hashCode(this.totalKm)) * 31) + Long.hashCode(this.totalSec)) * 31) + Double.hashCode(this.totalAscentM);
        }

        public String toString() {
            return "SummaryStats(count=" + this.count + ", totalKm=" + this.totalKm + ", totalSec=" + this.totalSec + ", totalAscentM=" + this.totalAscentM + ")";
        }

        public SummaryStats(int i, double d, long j, double d2) {
            this.count = i;
            this.totalKm = d;
            this.totalSec = j;
            this.totalAscentM = d2;
        }





        public final String fmtKm() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(this.totalKm)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            return format;
        }

        public final String fmtDur() {
            return fmtDurOf(this.totalSec);
        }

        public final String fmtAscent() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.US, "%.0f", Arrays.copyOf(new Object[]{Double.valueOf(this.totalAscentM)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            return format;
        }

        private final String fmtDurOf(long sec) {
            StringBuilder append;
            String str;
            long j = GarminProduct.VENUSQ;
            long j2 = sec / j;
            long j3 = (sec % j) / 60;
            if (j2 > 0) {
                append = new StringBuilder().append(j2).append(" 小时 ").append(j3);
                str = " 分";
            } else {
                append = new StringBuilder().append(j3);
                str = " 分钟";
            }
            return append.append(str).toString();
        }
    }

    public final String dateFromName(String name) {
        int parseInt;
        int parseInt2;
        Intrinsics.checkNotNullParameter(name, "name");
        MatchResult find$default = com.jichi.ob.util.KtCompat.find$default(new Regex("(\\d{4})(\\d{2})(\\d{2})"), name, 0, 2, null);
        if (find$default == null) {
            return null;
        }
        MatchResult.Destructured destructured = find$default.getDestructured();
        String str = destructured.getMatch().getGroupValues().get(1);
        String str2 = destructured.getMatch().getGroupValues().get(2);
        String str3 = destructured.getMatch().getGroupValues().get(3);
        int parseInt3 = Integer.parseInt(str);
        if (2000 > parseInt3 || parseInt3 >= 2101 || 1 > (parseInt = Integer.parseInt(str2)) || parseInt >= 13 || 1 > (parseInt2 = Integer.parseInt(str3)) || parseInt2 >= 32) {
            return null;
        }
        return str + "-" + str2 + "-" + str3;
    }

    public static /* synthetic */ List stickerColumns$default(StickerCore stickerCore, int i, float f, float f2, float f3, int i2, Object obj) {
        return stickerCore.stickerColumns(i, f, f2, f3);
    }

    public final List<Float> stickerColumns(int n, float size, float leftRatio, float rightRatio) {
        if (n <= 0) {
            return CollectionsKt.emptyList();
        }
        float f = leftRatio * size;
        float f2 = ((size - (rightRatio * size)) - f) / n;
        IntRange until = RangesKt.until(0, n);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
        Iterator<Integer> it = until.iterator();
        while (it.hasNext()) {
            arrayList.add(Float.valueOf(((((IntIterator) it).nextInt() + 0.5f) * f2) + f));
        }
        return arrayList;
    }

    public final double haversineM(double lat1, double lon1, double lat2, double lon2) {
        double radians = Math.toRadians(lat1);
        double radians2 = Math.toRadians(lat2);
        double radians3 = Math.toRadians(lat2 - lat1);
        double d = 2;
        double d2 = radians3 / d;
        double radians4 = Math.toRadians(lon2 - lon1) / d;
        return d * 6371000.0d * Math.asin(Math.sqrt((Math.sin(d2) * Math.sin(d2)) + (Math.cos(radians) * Math.cos(radians2) * Math.sin(radians4) * Math.sin(radians4))));
    }

    /* compiled from: StickerCore.kt */
        public static final /* data */ class SummaryItem {
        private final double ascentM;
        private final int count;
        private final double km;
        private final long sec;

        public static /* synthetic */ SummaryItem copy$default(SummaryItem summaryItem, int i, double d, long j, double d2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = summaryItem.count;
            }
            if ((i2 & 2) != 0) {
                d = summaryItem.km;
            }
            if ((i2 & 4) != 0) {
                j = summaryItem.sec;
            }
            if ((i2 & 8) != 0) {
                d2 = summaryItem.ascentM;
            }
            double d3 = d2;
            return summaryItem.copy(i, d, j, d3);
        }

        /* renamed from: component1, reason: from getter */
        public final int getCount() {
            return this.count;
        }

        /* renamed from: component2, reason: from getter */
        public final double getKm() {
            return this.km;
        }

        /* renamed from: component3, reason: from getter */
        public final long getSec() {
            return this.sec;
        }

        /* renamed from: component4, reason: from getter */
        public final double getAscentM() {
            return this.ascentM;
        }

        public final SummaryItem copy(int count, double km, long sec, double ascentM) {
            return new SummaryItem(count, km, sec, ascentM);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SummaryItem)) {
                return false;
            }
            SummaryItem summaryItem = (SummaryItem) other;
            return this.count == summaryItem.count && Double.compare(this.km, summaryItem.km) == 0 && this.sec == summaryItem.sec && Double.compare(this.ascentM, summaryItem.ascentM) == 0;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.count) * 31) + Double.hashCode(this.km)) * 31) + Long.hashCode(this.sec)) * 31) + Double.hashCode(this.ascentM);
        }

        public String toString() {
            return "SummaryItem(count=" + this.count + ", km=" + this.km + ", sec=" + this.sec + ", ascentM=" + this.ascentM + ")";
        }

        public SummaryItem(int i, double d, long j, double d2) {
            this.count = i;
            this.km = d;
            this.sec = j;
            this.ascentM = d2;
        }




    }

    public final SummaryItem summaryOfPoints(List<GpxToFitConverter.TrackPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.isEmpty()) {
            return new SummaryItem(0, Degrees.MIN_VALUE, 0L, Degrees.MIN_VALUE);
        }
        TrackStats computeStats = computeStats(points);
        return new SummaryItem(1, computeStats.getDistKm(), computeStats.getDurationSec(), computeStats.getAscentM());
    }

    public final SummaryStats mergeSummary(SummaryStats base, SummaryItem add) {
        Intrinsics.checkNotNullParameter(base, "base");
        Intrinsics.checkNotNullParameter(add, "add");
        return new SummaryStats(add.getCount() + base.getCount(), base.getTotalKm() + add.getKm(), base.getTotalSec() + add.getSec(), base.getTotalAscentM() + add.getAscentM());
    }

    public final SummaryStats summarizeLocalFiles(List<? extends Pair<? extends File, SummaryItem>> items, int year, int month) {
        Intrinsics.checkNotNullParameter(items, "items");
        SummaryStats summaryStats = new SummaryStats(0, Degrees.MIN_VALUE, 0L, Degrees.MIN_VALUE);
        String format = String.format("%04d-%02d", Arrays.copyOf(new Object[]{Integer.valueOf(year), Integer.valueOf(month)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        Calendar calendar = Calendar.getInstance();
        for (Pair<? extends File, SummaryItem> pair : items) {
            File component1 = pair.component1();
            SummaryItem component2 = pair.component2();
            String name = component1.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            String dateFromName = dateFromName(name);
            if (dateFromName == null) {
                calendar.setTimeInMillis(component1.lastModified());
                dateFromName = String.format("%04d-%02d-%02d", Arrays.copyOf(new Object[]{Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5))}, 3));
                Intrinsics.checkNotNullExpressionValue(dateFromName, "format(...)");
            }
            if (com.jichi.ob.util.KtCompat.startsWith$default(dateFromName, format, false, 2, (Object) null) && component2 != null) {
                summaryStats = mergeSummary(summaryStats, component2);
            }
        }
        return summaryStats;
    }
}

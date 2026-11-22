package com.jichi.ob.merge;

import com.jichi.ob.GpxToFitConverter;
import io.jenetics.jpx.Degrees;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: TrackMerger.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002,-B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\n\u001a\u00020\u000b2\u0018\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\r2\b\b\u0002\u0010\u0011\u001a\u00020\u0005JD\u0010\u0012\u001a\u00020\u000b2\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\r0\r2\b\b\u0002\u0010\u0011\u001a\u00020\u00052\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\r2\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\rJ\u001e\u0010\u0017\u001a\u00020\u000b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0016\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000fJ\u000e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000fJ\u0010\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000fH\u0002J(\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020#2\u0006\u0010'\u001a\u00020#H\u0002J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020#H\u0002J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/jichi/ob/merge/TrackMerger;", "", "<init>", "()V", "SPORT_RUNNING", "", "SPORT_CYCLING", "SPORT_HIKING", "MAX_SEG_INTERVAL_S", "", "mergeGpxFiles", "Lcom/jichi/ob/merge/TrackMerger$MergedResult;", "files", "", "Lkotlin/Pair;", "", "", "forcedSport", "mergePointGroups", "groups", "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;", "ascents", "descents", "mergeSegments", "segments", "Lcom/jichi/ob/merge/TrackMerger$Segment;", "buildGpx", "result", "title", "sportName", BikeService.EXTRA_SPORT, "detectSportFromName", "name", "detectSport", "haversineKm", "", "lat1", "lon1", "lat2", "lon2", "trimNum", "v", "esc", "s", "Segment", "MergedResult", "app_devRelease"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TrackMerger {
    public static final TrackMerger INSTANCE = new TrackMerger();
    public static final int SPORT_CYCLING = 2;
    public static final int SPORT_HIKING = 17;
    public static final int SPORT_RUNNING = 1;

    private TrackMerger() {
    }

    /* compiled from: TrackMerger.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003JA\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010¨\u0006 "}, d2 = {"Lcom/jichi/ob/merge/TrackMerger$Segment;", "", "name", "", BikeService.EXTRA_SPORT, "", "points", "", "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;", "ascentM", "descentM", "<init>", "(Ljava/lang/String;ILjava/util/List;II)V", "getName", "()Ljava/lang/String;", "getSport", "()I", "getPoints", "()Ljava/util/List;", "getAscentM", "getDescentM", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_devRelease"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* v9.6.9: 单段文件的 session / file_id 原值（计时、卡路里、厂商/产品/序列号），
     * 由调用方（MergeFragment 的合并协程）按段传给 mergePointGroups，供合并照抄。 */
    public static final /* data */ class FileMeta {
        private final long timerSec;
        private final int calories;
        private final int manufacturer;
        private final int product;
        private final long serialNumber;

        public FileMeta(long timerSec, int calories, int manufacturer, int product, long serialNumber) {
            this.timerSec = timerSec;
            this.calories = calories;
            this.manufacturer = manufacturer;
            this.product = product;
            this.serialNumber = serialNumber;
        }

        public final long getTimerSec() {
            return this.timerSec;
        }

        public final int getCalories() {
            return this.calories;
        }

        public final int getManufacturer() {
            return this.manufacturer;
        }

        public final int getProduct() {
            return this.product;
        }

        public final long getSerialNumber() {
            return this.serialNumber;
        }
    }

    public static final /* data */ class Segment {
        private final int ascentM;
        private final int descentM;
        private final String name;
        private final List<GpxToFitConverter.TrackPoint> points;
        private final int sport;
        // v9.6.9: 单段 session / file_id 原值（计时、卡路里、厂商/产品/序列号）。
        private final long timerSec;
        private final int calories;
        private final int manufacturer;
        private final int product;
        private final long serialNumber;

        public static /* synthetic */ Segment copy$default(Segment segment, String str, int i, List list, int i2, int i3, long j, int i4, int i5, int i6, long j2, int i7, Object obj) {
            if ((i7 & 1) != 0) {
                str = segment.name;
            }
            if ((i7 & 2) != 0) {
                i = segment.sport;
            }
            if ((i7 & 4) != 0) {
                list = segment.points;
            }
            if ((i7 & 8) != 0) {
                i2 = segment.ascentM;
            }
            if ((i7 & 16) != 0) {
                i3 = segment.descentM;
            }
            if ((i7 & 32) != 0) {
                j = segment.timerSec;
            }
            if ((i7 & 64) != 0) {
                i4 = segment.calories;
            }
            if ((i7 & 128) != 0) {
                i5 = segment.manufacturer;
            }
            if ((i7 & 256) != 0) {
                i6 = segment.product;
            }
            if ((i7 & 512) != 0) {
                j2 = segment.serialNumber;
            }
            int i8 = i3;
            List list2 = list;
            return segment.copy(str, i, list2, i2, i8, j, i4, i5, i6, j2);
        }

        /* renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* renamed from: component2, reason: from getter */
        public final int getSport() {
            return this.sport;
        }

        public final List<GpxToFitConverter.TrackPoint> component3() {
            return this.points;
        }

        /* renamed from: component4, reason: from getter */
        public final int getAscentM() {
            return this.ascentM;
        }

        /* renamed from: component5, reason: from getter */
        public final int getDescentM() {
            return this.descentM;
        }

        /* renamed from: component6, reason: from getter */
        public final long getTimerSec() {
            return this.timerSec;
        }

        /* renamed from: component7, reason: from getter */
        public final int getCalories() {
            return this.calories;
        }

        /* renamed from: component8, reason: from getter */
        public final int getManufacturer() {
            return this.manufacturer;
        }

        /* renamed from: component9, reason: from getter */
        public final int getProduct() {
            return this.product;
        }

        /* renamed from: component10, reason: from getter */
        public final long getSerialNumber() {
            return this.serialNumber;
        }

        public final Segment copy(String name, int sport, List<GpxToFitConverter.TrackPoint> points, int ascentM, int descentM, long timerSec, int calories, int manufacturer, int product, long serialNumber) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(points, "points");
            return new Segment(name, sport, points, ascentM, descentM, timerSec, calories, manufacturer, product, serialNumber);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Segment)) {
                return false;
            }
            Segment segment = (Segment) other;
            return Intrinsics.areEqual(this.name, segment.name) && this.sport == segment.sport && Intrinsics.areEqual(this.points, segment.points) && this.ascentM == segment.ascentM && this.descentM == segment.descentM && this.timerSec == segment.timerSec && this.calories == segment.calories && this.manufacturer == segment.manufacturer && this.product == segment.product && this.serialNumber == segment.serialNumber;
        }

        public int hashCode() {
            return (((((((((((((((((this.name.hashCode() * 31) + Integer.hashCode(this.sport)) * 31) + this.points.hashCode()) * 31) + Integer.hashCode(this.ascentM)) * 31) + Integer.hashCode(this.descentM)) * 31) + Long.hashCode(this.timerSec)) * 31) + Integer.hashCode(this.calories)) * 31) + Integer.hashCode(this.manufacturer)) * 31) + Integer.hashCode(this.product)) * 31) + Long.hashCode(this.serialNumber);
        }

        public String toString() {
            return "Segment(name=" + this.name + ", sport=" + this.sport + ", points=" + this.points + ", ascentM=" + this.ascentM + ", descentM=" + this.descentM + ", timerSec=" + this.timerSec + ", calories=" + this.calories + ", manufacturer=" + this.manufacturer + ", product=" + this.product + ", serialNumber=" + this.serialNumber + ")";
        }

        public Segment(String name, int i, List<GpxToFitConverter.TrackPoint> points, int i2, int i3, long j, int i4, int i5, int i6, long j2) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(points, "points");
            this.name = name;
            this.sport = i;
            this.points = points;
            this.ascentM = i2;
            this.descentM = i3;
            this.timerSec = j;
            this.calories = i4;
            this.manufacturer = i5;
            this.product = i6;
            this.serialNumber = j2;
        }

        public /* synthetic */ Segment(String str, int i, List list, int i2, int i3, long j, int i4, int i5, int i6, long j2, int i7, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, list, (i7 & 8) != 0 ? 0 : i2, (i7 & 16) != 0 ? 0 : i3, (i7 & 32) != 0 ? 0L : j, (i7 & 64) != 0 ? 0 : i4, (i7 & 128) != 0 ? 255 : i5, (i7 & 256) != 0 ? 1 : i6, (i7 & 512) != 0 ? 0L : j2);
        }

        public final String getName() {
            return this.name;
        }

        public final int getSport() {
            return this.sport;
        }

        public final List<GpxToFitConverter.TrackPoint> getPoints() {
            return this.points;
        }

        public final int getAscentM() {
            return this.ascentM;
        }

        public final int getDescentM() {
            return this.descentM;
        }

        public final long getTimerSec() {
            return this.timerSec;
        }

        public final int getCalories() {
            return this.calories;
        }

        public final int getManufacturer() {
            return this.manufacturer;
        }

        public final int getProduct() {
            return this.product;
        }

        public final long getSerialNumber() {
            return this.serialNumber;
        }
    }

    /* compiled from: TrackMerger.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b/\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0006\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0006HÆ\u0003J\t\u0010/\u001a\u00020\bHÆ\u0003J\t\u00100\u001a\u00020\nHÆ\u0003J\t\u00101\u001a\u00020\nHÆ\u0003J\t\u00102\u001a\u00020\nHÆ\u0003J\t\u00103\u001a\u00020\u000eHÆ\u0003J\t\u00104\u001a\u00020\u000eHÆ\u0003J\t\u00105\u001a\u00020\u000eHÆ\u0003J\t\u00106\u001a\u00020\u0006HÆ\u0003J\t\u00107\u001a\u00020\u0006HÆ\u0003J\t\u00108\u001a\u00020\u0006HÆ\u0003J\t\u00109\u001a\u00020\u0006HÆ\u0003J\t\u0010:\u001a\u00020\u0006HÆ\u0003J\t\u0010;\u001a\u00020\u0006HÆ\u0003J¥\u0001\u0010<\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00062\b\b\u0002\u0010\u0013\u001a\u00020\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\u00062\b\b\u0002\u0010\u0016\u001a\u00020\u0006HÆ\u0001J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010@\u001a\u00020\u0006HÖ\u0001J\t\u0010A\u001a\u00020\bHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010 R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u000f\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b%\u0010$R\u0011\u0010\u0010\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b&\u0010$R\u0011\u0010\u0011\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001cR\u0011\u0010\u0012\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001cR\u0011\u0010\u0013\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001cR\u0011\u0010\u0014\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001cR\u0011\u0010\u0015\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001cR\u0011\u0010\u0016\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001c¨\u0006B"}, d2 = {"Lcom/jichi/ob/merge/TrackMerger$MergedResult;", "", "points", "", "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;", BikeService.EXTRA_SPORT, "", "sportName", "", "startTime", "", "endTime", "totalDurationSec", "totalDistanceKm", "", "ascentM", "descentM", "avgHr", "maxHr", "avgCad", "avgPower", "segmentCount", "pointCount", "<init>", "(Ljava/util/List;ILjava/lang/String;JJJDDDIIIIII)V", "getPoints", "()Ljava/util/List;", "getSport", "()I", "getSportName", "()Ljava/lang/String;", "getStartTime", "()J", "getEndTime", "getTotalDurationSec", "getTotalDistanceKm", "()D", "getAscentM", "getDescentM", "getAvgHr", "getMaxHr", "getAvgCad", "getAvgPower", "getSegmentCount", "getPointCount", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "equals", "", "other", "hashCode", "toString", "app_devRelease"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class MergedResult {
        private final double ascentM;
        private final int avgCad;
        private final int avgHr;
        private final int avgPower;
        private final double descentM;
        private final long endTime;
        private final int maxHr;
        private final int pointCount;
        private final List<GpxToFitConverter.TrackPoint> points;
        private final int segmentCount;
        private final int sport;
        private final String sportName;
        private final long startTime;
        private final double totalDistanceKm;
        private final long totalDurationSec;
        // v9.6.9: 按天分圈（lap 起点下标、各段爬升/下降）与第一段原件的设备信息、卡路里合计。
        private final List<Integer> lapStartIndices;
        private final List<Integer> lapAscents;
        private final List<Integer> lapDescents;
        private final int totalCalories;
        private final int manufacturer;
        private final int product;
        private final long serialNumber;

        public static /* synthetic */ MergedResult copy$default(MergedResult mergedResult, List list, int i, String str, long j, long j2, long j3, double d, double d2, double d3, int i2, int i3, int i4, int i5, int i6, int i7, List list4, List list5, List list6, int i9b, int i10b, int i11b, long j7, int i8, Object obj) {
            List list2 = (i8 & 1) != 0 ? mergedResult.points : list;
            int i9 = (i8 & 2) != 0 ? mergedResult.sport : i;
            String str2 = (i8 & 4) != 0 ? mergedResult.sportName : str;
            long j4 = (i8 & 8) != 0 ? mergedResult.startTime : j;
            long j5 = (i8 & 16) != 0 ? mergedResult.endTime : j2;
            long j6 = (i8 & 32) != 0 ? mergedResult.totalDurationSec : j3;
            double d4 = (i8 & 64) != 0 ? mergedResult.totalDistanceKm : d;
            double d5 = (i8 & 128) != 0 ? mergedResult.ascentM : d2;
            List list3 = list2;
            int i10 = i9;
            double d6 = (i8 & 256) != 0 ? mergedResult.descentM : d3;
            int i11 = (i8 & 512) != 0 ? mergedResult.avgHr : i2;
            double d7 = d6;
            int i12 = (i8 & 1024) != 0 ? mergedResult.maxHr : i3;
            int i13 = (i8 & 2048) != 0 ? mergedResult.avgCad : i4;
            int i14 = (i8 & 4096) != 0 ? mergedResult.avgPower : i5;
            int i15 = (i8 & 8192) != 0 ? mergedResult.segmentCount : i6;
            int i16 = (i8 & 16384) != 0 ? mergedResult.pointCount : i7;
            List list7 = (i8 & 32768) != 0 ? mergedResult.lapStartIndices : list4;
            List list8 = (i8 & 65536) != 0 ? mergedResult.lapAscents : list5;
            List list9 = (i8 & 131072) != 0 ? mergedResult.lapDescents : list6;
            int i17 = (i8 & 262144) != 0 ? mergedResult.totalCalories : i9b;
            int i18 = (i8 & 524288) != 0 ? mergedResult.manufacturer : i10b;
            int i19 = (i8 & 1048576) != 0 ? mergedResult.product : i11b;
            long j8 = (i8 & 2097152) != 0 ? mergedResult.serialNumber : j7;
            return mergedResult.copy(list3, i10, str2, j4, j5, j6, d4, d5, d7, i11, i12, i13, i14, i15, i16, list7, list8, list9, i17, i18, i19, j8);
        }

        public final List<GpxToFitConverter.TrackPoint> component1() {
            return this.points;
        }

        /* renamed from: component10, reason: from getter */
        public final int getAvgHr() {
            return this.avgHr;
        }

        /* renamed from: component11, reason: from getter */
        public final int getMaxHr() {
            return this.maxHr;
        }

        /* renamed from: component12, reason: from getter */
        public final int getAvgCad() {
            return this.avgCad;
        }

        /* renamed from: component13, reason: from getter */
        public final int getAvgPower() {
            return this.avgPower;
        }

        /* renamed from: component14, reason: from getter */
        public final int getSegmentCount() {
            return this.segmentCount;
        }

        /* renamed from: component15, reason: from getter */
        public final int getPointCount() {
            return this.pointCount;
        }

        public final List<Integer> component16() {
            return this.lapStartIndices;
        }

        public final List<Integer> component17() {
            return this.lapAscents;
        }

        public final List<Integer> component18() {
            return this.lapDescents;
        }

        /* renamed from: component19, reason: from getter */
        public final int getTotalCalories() {
            return this.totalCalories;
        }

        /* renamed from: component20, reason: from getter */
        public final int getManufacturer() {
            return this.manufacturer;
        }

        /* renamed from: component21, reason: from getter */
        public final int getProduct() {
            return this.product;
        }

        /* renamed from: component22, reason: from getter */
        public final long getSerialNumber() {
            return this.serialNumber;
        }

        /* renamed from: component2, reason: from getter */
        public final int getSport() {
            return this.sport;
        }

        /* renamed from: component3, reason: from getter */
        public final String getSportName() {
            return this.sportName;
        }

        /* renamed from: component4, reason: from getter */
        public final long getStartTime() {
            return this.startTime;
        }

        /* renamed from: component5, reason: from getter */
        public final long getEndTime() {
            return this.endTime;
        }

        /* renamed from: component6, reason: from getter */
        public final long getTotalDurationSec() {
            return this.totalDurationSec;
        }

        /* renamed from: component7, reason: from getter */
        public final double getTotalDistanceKm() {
            return this.totalDistanceKm;
        }

        /* renamed from: component8, reason: from getter */
        public final double getAscentM() {
            return this.ascentM;
        }

        /* renamed from: component9, reason: from getter */
        public final double getDescentM() {
            return this.descentM;
        }

        public final MergedResult copy(List<GpxToFitConverter.TrackPoint> points, int sport, String sportName, long startTime, long endTime, long totalDurationSec, double totalDistanceKm, double ascentM, double descentM, int avgHr, int maxHr, int avgCad, int avgPower, int segmentCount, int pointCount, List<Integer> lapStartIndices, List<Integer> lapAscents, List<Integer> lapDescents, int totalCalories, int manufacturer, int product, long serialNumber) {
            Intrinsics.checkNotNullParameter(points, "points");
            Intrinsics.checkNotNullParameter(sportName, "sportName");
            Intrinsics.checkNotNullParameter(lapStartIndices, "lapStartIndices");
            Intrinsics.checkNotNullParameter(lapAscents, "lapAscents");
            Intrinsics.checkNotNullParameter(lapDescents, "lapDescents");
            return new MergedResult(points, sport, sportName, startTime, endTime, totalDurationSec, totalDistanceKm, ascentM, descentM, avgHr, maxHr, avgCad, avgPower, segmentCount, pointCount, lapStartIndices, lapAscents, lapDescents, totalCalories, manufacturer, product, serialNumber);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MergedResult)) {
                return false;
            }
            MergedResult mergedResult = (MergedResult) other;
            return Intrinsics.areEqual(this.points, mergedResult.points) && this.sport == mergedResult.sport && Intrinsics.areEqual(this.sportName, mergedResult.sportName) && this.startTime == mergedResult.startTime && this.endTime == mergedResult.endTime && this.totalDurationSec == mergedResult.totalDurationSec && Double.compare(this.totalDistanceKm, mergedResult.totalDistanceKm) == 0 && Double.compare(this.ascentM, mergedResult.ascentM) == 0 && Double.compare(this.descentM, mergedResult.descentM) == 0 && this.avgHr == mergedResult.avgHr && this.maxHr == mergedResult.maxHr && this.avgCad == mergedResult.avgCad && this.avgPower == mergedResult.avgPower && this.segmentCount == mergedResult.segmentCount && this.pointCount == mergedResult.pointCount && Intrinsics.areEqual(this.lapStartIndices, mergedResult.lapStartIndices) && Intrinsics.areEqual(this.lapAscents, mergedResult.lapAscents) && Intrinsics.areEqual(this.lapDescents, mergedResult.lapDescents) && this.totalCalories == mergedResult.totalCalories && this.manufacturer == mergedResult.manufacturer && this.product == mergedResult.product && this.serialNumber == mergedResult.serialNumber;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((((this.points.hashCode() * 31) + Integer.hashCode(this.sport)) * 31) + this.sportName.hashCode()) * 31) + Long.hashCode(this.startTime)) * 31) + Long.hashCode(this.endTime)) * 31) + Long.hashCode(this.totalDurationSec)) * 31) + Double.hashCode(this.totalDistanceKm)) * 31) + Double.hashCode(this.ascentM)) * 31) + Double.hashCode(this.descentM)) * 31) + Integer.hashCode(this.avgHr)) * 31) + Integer.hashCode(this.maxHr)) * 31) + Integer.hashCode(this.avgCad)) * 31) + Integer.hashCode(this.avgPower)) * 31) + Integer.hashCode(this.segmentCount)) * 31) + Integer.hashCode(this.pointCount)) * 31) + this.lapStartIndices.hashCode()) * 31) + this.lapAscents.hashCode()) * 31) + this.lapDescents.hashCode()) * 31) + Integer.hashCode(this.totalCalories)) * 31) + Integer.hashCode(this.manufacturer)) * 31) + Integer.hashCode(this.product)) * 31) + Long.hashCode(this.serialNumber);
        }

        public String toString() {
            return "MergedResult(points=" + this.points + ", sport=" + this.sport + ", sportName=" + this.sportName + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", totalDurationSec=" + this.totalDurationSec + ", totalDistanceKm=" + this.totalDistanceKm + ", ascentM=" + this.ascentM + ", descentM=" + this.descentM + ", avgHr=" + this.avgHr + ", maxHr=" + this.maxHr + ", avgCad=" + this.avgCad + ", avgPower=" + this.avgPower + ", segmentCount=" + this.segmentCount + ", pointCount=" + this.pointCount + ", lapStartIndices=" + this.lapStartIndices + ", lapAscents=" + this.lapAscents + ", lapDescents=" + this.lapDescents + ", totalCalories=" + this.totalCalories + ", manufacturer=" + this.manufacturer + ", product=" + this.product + ", serialNumber=" + this.serialNumber + ")";
        }

        public MergedResult(List<GpxToFitConverter.TrackPoint> points, int i, String sportName, long j, long j2, long j3, double d, double d2, double d3, int i2, int i3, int i4, int i5, int i6, int i7, List<Integer> lapStartIndices, List<Integer> lapAscents, List<Integer> lapDescents, int i8, int i9, int i10, long j4) {
            Intrinsics.checkNotNullParameter(points, "points");
            Intrinsics.checkNotNullParameter(sportName, "sportName");
            Intrinsics.checkNotNullParameter(lapStartIndices, "lapStartIndices");
            Intrinsics.checkNotNullParameter(lapAscents, "lapAscents");
            Intrinsics.checkNotNullParameter(lapDescents, "lapDescents");
            this.points = points;
            this.sport = i;
            this.sportName = sportName;
            this.startTime = j;
            this.endTime = j2;
            this.totalDurationSec = j3;
            this.totalDistanceKm = d;
            this.ascentM = d2;
            this.descentM = d3;
            this.avgHr = i2;
            this.maxHr = i3;
            this.avgCad = i4;
            this.avgPower = i5;
            this.segmentCount = i6;
            this.pointCount = i7;
            this.lapStartIndices = lapStartIndices;
            this.lapAscents = lapAscents;
            this.lapDescents = lapDescents;
            this.totalCalories = i8;
            this.manufacturer = i9;
            this.product = i10;
            this.serialNumber = j4;
        }

        public final List<GpxToFitConverter.TrackPoint> getPoints() {
            return this.points;
        }

        public final int getSport() {
            return this.sport;
        }

        public final String getSportName() {
            return this.sportName;
        }

        public final long getStartTime() {
            return this.startTime;
        }

        public final long getEndTime() {
            return this.endTime;
        }

        public final long getTotalDurationSec() {
            return this.totalDurationSec;
        }

        public final double getTotalDistanceKm() {
            return this.totalDistanceKm;
        }

        public final double getAscentM() {
            return this.ascentM;
        }

        public final double getDescentM() {
            return this.descentM;
        }

        public final int getAvgHr() {
            return this.avgHr;
        }

        public final int getMaxHr() {
            return this.maxHr;
        }

        public final int getAvgCad() {
            return this.avgCad;
        }

        public final int getAvgPower() {
            return this.avgPower;
        }

        public final int getSegmentCount() {
            return this.segmentCount;
        }

        public final int getPointCount() {
            return this.pointCount;
        }

        public final List<Integer> getLapStartIndices() {
            return this.lapStartIndices;
        }

        public final List<Integer> getLapAscents() {
            return this.lapAscents;
        }

        public final List<Integer> getLapDescents() {
            return this.lapDescents;
        }

        public final int getTotalCalories() {
            return this.totalCalories;
        }

        public final int getManufacturer() {
            return this.manufacturer;
        }

        public final int getProduct() {
            return this.product;
        }

        public final long getSerialNumber() {
            return this.serialNumber;
        }
    }

    public static /* synthetic */ MergedResult mergeGpxFiles$default(TrackMerger trackMerger, List list, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return trackMerger.mergeGpxFiles(list, i);
    }

    public final MergedResult mergeGpxFiles(List<Pair<String, byte[]>> files, int forcedSport) {
        Intrinsics.checkNotNullParameter(files, "files");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = files.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            String str = (String) pair.component1();
            Segment segment = null;
            try {
                List<GpxToFitConverter.TrackPoint> parseGpxBytes = GpxToFitConverter.INSTANCE.parseGpxBytes((byte[]) pair.component2());
                if (!parseGpxBytes.isEmpty()) {
                    segment = new Segment(str, INSTANCE.detectSport(str), parseGpxBytes, 0, 0, 0L, 0, 255, 1, 0L, 24, null);
                }
            } catch (Exception unused) {
            }
            if (segment != null) {
                arrayList.add(segment);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            throw new IllegalArgumentException("所有轨迹均解析失败");
        }
        return mergeSegments(arrayList2, forcedSport);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MergedResult mergePointGroups$default(TrackMerger trackMerger, List list, int i, List list2, List list3, List list4, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        if ((i2 & 4) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        if ((i2 & 8) != 0) {
            list3 = CollectionsKt.emptyList();
        }
        if ((i2 & 16) != 0) {
            list4 = CollectionsKt.emptyList();
        }
        return trackMerger.mergePointGroups(list, i, list2, list3, list4);
    }

    public final MergedResult mergePointGroups(List<? extends List<GpxToFitConverter.TrackPoint>> groups, int forcedSport, List<Integer> ascents, List<Integer> descents, List<FileMeta> fileMetas) {
        Intrinsics.checkNotNullParameter(groups, "groups");
        Intrinsics.checkNotNullParameter(ascents, "ascents");
        Intrinsics.checkNotNullParameter(descents, "descents");
        Intrinsics.checkNotNullParameter(fileMetas, "fileMetas");
        List<? extends List<GpxToFitConverter.TrackPoint>> list = groups;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            // v9.6.9: 每段的 session / file_id 原值随段走（计时、卡路里、厂商/产品/序列号），缺失时取默认值。
            FileMeta meta = (i < 0 || i >= fileMetas.size() || fileMetas.get(i) == null) ? new FileMeta(0L, 0, 255, 1, 0L) : fileMetas.get(i);
            arrayList.add(new Segment("segment" + i2, i == 0 ? INSTANCE.detectSport("") : -1, (List) obj, ((i < 0 || i >= ascents.size()) ? 0 : ascents.get(i)).intValue(), ((i < 0 || i >= descents.size()) ? 0 : descents.get(i)).intValue(), meta.getTimerSec(), meta.getCalories(), meta.getManufacturer(), meta.getProduct(), meta.getSerialNumber()));
            i = i2;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!((Segment) obj2).getPoints().isEmpty()) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = arrayList2;
        if (arrayList3.isEmpty()) {
            throw new IllegalArgumentException("无可合并的轨迹");
        }
        return mergeSegments(arrayList3, forcedSport);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.jichi.ob.merge.TrackMerger.MergedResult mergeSegments(java.util.List<com.jichi.ob.merge.TrackMerger.Segment> r51, int r52) {
        // v9.6.9 修复 1：删掉 90 秒时间压缩，保留原始时间戳，不做任何压缩；
        // 过夜、休整的间隔就是真实的间隔。总时长（totalDurationSec）改成各段
        // 计时时间之和（优先用各段 session 的 total_timer_time，没有再用该段
        // 记录跨度），不再用“结束减开始”算。
        List<Segment> segments = r51;
        int forcedSport = r52;
        ArrayList<Segment> nonEmpty = new ArrayList<>();
        for (Segment seg : segments) {
            if (!seg.getPoints().isEmpty()) {
                nonEmpty.add(seg);
            }
        }
        List<Segment> sorted = CollectionsKt.sortedWith(nonEmpty, new Comparator<Segment>() {
            @Override
            public int compare(Segment a, Segment b) {
                GpxToFitConverter.TrackPoint firstA = (GpxToFitConverter.TrackPoint) CollectionsKt.firstOrNull(a.getPoints());
                Long tsA = Long.valueOf(firstA != null ? firstA.getTs() : 0L);
                GpxToFitConverter.TrackPoint firstB = (GpxToFitConverter.TrackPoint) CollectionsKt.firstOrNull(b.getPoints());
                return ComparisonsKt.compareValues(tsA, Long.valueOf(firstB != null ? firstB.getTs() : 0L));
            }
        });
        int sport;
        if (forcedSport > 0) {
            sport = forcedSport;
        } else {
            Segment first = (Segment) CollectionsKt.firstOrNull(sorted);
            int s = first != null ? first.getSport() : 0;
            sport = s > 0 ? s : 2;
        }
        ArrayList<GpxToFitConverter.TrackPoint> points = new ArrayList<>();
        ArrayList<Integer> boundaries = new ArrayList<>();
        // v9.6.9: 实际贡献了点的段（时间戳全被丢掉的段不计入 lap 与计时）。
        ArrayList<Segment> keptSegments = new ArrayList<>();
        long lastTs = -1;
        for (Segment seg : sorted) {
            boolean firstInSeg = true;
            for (GpxToFitConverter.TrackPoint p : seg.getPoints()) {
                // 保留原始时间戳；没有时间戳的点按上一毫秒+1 补，保证 FIT 时间单调递增。
                long newTs;
                if (p.getTs() <= 0) {
                    newTs = lastTs < 0 ? 1L : lastTs + 1;
                } else {
                    newTs = p.getTs();
                }
                if (newTs > lastTs) {
                    if (firstInSeg) {
                        boundaries.add(Integer.valueOf(points.size()));
                        keptSegments.add(seg);
                        firstInSeg = false;
                    }
                    points.add(p.copy(p.getLat(), p.getLon(), p.getEle(), newTs, p.getHr(), p.getCad(), p.getPower(), p.getDistM(), p.getSpeedMs()));
                    lastTs = newTs;
                }
            }
        }
        if (points.isEmpty()) {
            throw new IllegalArgumentException("合并后无有效轨迹点");
        }
        HashSet<Integer> boundarySet = CollectionsKt.toHashSet(boundaries);
        double segAscentSum = 0.0;
        double segDescentSum = 0.0;
        boolean hasSegAscent = false;
        for (Segment seg : keptSegments) {
            int a = seg.getAscentM();
            int d = seg.getDescentM();
            if (a > 0 || d > 0) {
                hasSegAscent = true;
            }
            segAscentSum += a;
            segDescentSum += d;
        }
        double totalKm = 0.0;
        double ascent = 0.0;
        double descent = 0.0;
        long hrSum = 0;
        long hrCount = 0;
        int maxHr = 0;
        long cadSum = 0;
        long cadCount = 0;
        long powSum = 0;
        long powCount = 0;
        GpxToFitConverter.TrackPoint prev = null;
        Double eleBase = null;
        for (int i = 0; i < points.size(); i++) {
            GpxToFitConverter.TrackPoint curr = points.get(i);
            if (boundarySet.contains(Integer.valueOf(i))) {
                prev = null;
                eleBase = null;
            }
            if (prev != null) {
                if (curr.getDistM() > 0.0d && prev.getDistM() > 0.0d) {
                    double deltaKm = (curr.getDistM() - prev.getDistM()) / 1000.0d;
                    if (deltaKm > 0.0d && deltaKm < 5.0d) {
                        totalKm += deltaKm;
                    }
                } else {
                    totalKm += haversineKm(prev.getLat(), prev.getLon(), curr.getLat(), curr.getLon());
                }
            }
            // 海拔基准只在单点变化 ≥8 米时更新（smali 核对：变化 <8 米时基准不动）。
            if (!hasSegAscent && curr.getEle() > 0.0d) {
                if (eleBase == null) {
                    eleBase = Double.valueOf(curr.getEle());
                } else {
                    double dEle = curr.getEle() - eleBase.doubleValue();
                    if (dEle >= 8.0d) {
                        ascent += dEle;
                        eleBase = Double.valueOf(curr.getEle());
                    } else if (dEle <= -8.0d) {
                        descent += -dEle;
                        eleBase = Double.valueOf(curr.getEle());
                    }
                }
            }
            if (curr.getHr() > 0) {
                hrSum += curr.getHr();
                hrCount++;
                if (curr.getHr() > maxHr) {
                    maxHr = curr.getHr();
                }
            }
            if (curr.getCad() > 0) {
                cadSum += curr.getCad();
                cadCount++;
            }
            if (curr.getPower() > 0) {
                powSum += curr.getPower();
                powCount++;
            }
            prev = curr;
        }
        double finalAscent = hasSegAscent ? segAscentSum : ascent;
        double finalDescent = hasSegAscent ? segDescentSum : descent;
        long startTs = ((GpxToFitConverter.TrackPoint) CollectionsKt.first(points)).getTs();
        if (startTs <= 0) {
            startTs = System.currentTimeMillis() / 1000;
        }
        long endTs = ((GpxToFitConverter.TrackPoint) CollectionsKt.last(points)).getTs();
        if (endTs <= 0) {
            endTs = startTs + points.size();
        }
        // v9.6.9: 总时长 = 各段计时时间之和（优先用各段 session 的 total_timer_time，
        // 没有再用该段记录跨度）；开始/结束时间是真实时间戳，跨度（endTs - startTs）
        // 另作 total_elapsed_time，由转换器从点列首尾算，不再与计时混在一起。
        long duration = 0L;
        ArrayList<Integer> lapAscents = new ArrayList<>();
        ArrayList<Integer> lapDescents = new ArrayList<>();
        int totalCalories = 0;
        for (Segment seg : keptSegments) {
            long segTimer = seg.getTimerSec();
            if (segTimer <= 0 && !seg.getPoints().isEmpty()) {
                GpxToFitConverter.TrackPoint segFirst = (GpxToFitConverter.TrackPoint) CollectionsKt.first(seg.getPoints());
                GpxToFitConverter.TrackPoint segLast = (GpxToFitConverter.TrackPoint) CollectionsKt.last(seg.getPoints());
                segTimer = Math.max(0L, segLast.getTs() - segFirst.getTs());
            }
            duration += Math.max(0L, segTimer);
            lapAscents.add(Integer.valueOf(seg.getAscentM()));
            lapDescents.add(Integer.valueOf(seg.getDescentM()));
            totalCalories += seg.getCalories();
        }
        duration = RangesKt.coerceAtLeast(duration, 1L);
        // 设备信息照抄第一段（时间最早且实际贡献了点的那段）原件，不再写死 255/1。
        Segment firstSeg = (Segment) CollectionsKt.first(keptSegments);
        int manufacturer = firstSeg != null ? firstSeg.getManufacturer() : 255;
        int product = firstSeg != null ? firstSeg.getProduct() : 1;
        long serialNumber = firstSeg != null ? firstSeg.getSerialNumber() : 0L;
        int avgHr = hrCount > 0 ? (int) (hrSum / hrCount) : 0;
        int avgCad = cadCount > 0 ? (int) (cadSum / cadCount) : 0;
        int avgPow = powCount > 0 ? (int) (powSum / powCount) : 0;
        return new MergedResult(points, sport, sportName(sport), startTs, endTs, duration, totalKm, finalAscent, finalDescent, avgHr, maxHr, avgCad, avgPow, sorted.size(), points.size(), boundaries, lapAscents, lapDescents, totalCalories, manufacturer, product, serialNumber);
    }

    public final byte[] buildGpx(MergedResult result, String title) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(title, "title");
        StringBuilder sb = new StringBuilder("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<gpx version=\"1.1\" creator=\"鸡翅幸哲迈进OB\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\">\n<trk>\n<name>");
        sb.append(esc(title)).append("</name>\n<type>");
        sb.append(sportName(result.getSport())).append("</type>\n<trkseg>\n");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        for (GpxToFitConverter.TrackPoint trackPoint : result.getPoints()) {
            sb.append("<trkpt lat=\"").append(trimNum(trackPoint.getLat())).append("\" lon=\"").append(trimNum(trackPoint.getLon())).append("\">\n");
            if (trackPoint.getEle() > Degrees.MIN_VALUE) {
                sb.append("<ele>").append(trimNum(trackPoint.getEle())).append("</ele>\n");
            }
            if (trackPoint.getTs() > 0) {
                sb.append("<time>").append(simpleDateFormat.format(new Date(trackPoint.getTs() * 1000))).append("</time>\n");
            }
            if (trackPoint.getHr() > 0 || trackPoint.getCad() > 0 || trackPoint.getPower() > 0) {
                sb.append("<extensions><gpxtpx:TrackPointExtension>\n");
                if (trackPoint.getHr() > 0) {
                    sb.append("<gpxtpx:hr>").append(trackPoint.getHr()).append("</gpxtpx:hr>\n");
                }
                if (trackPoint.getCad() > 0) {
                    sb.append("<gpxtpx:cad>").append(trackPoint.getCad()).append("</gpxtpx:cad>\n");
                }
                if (trackPoint.getPower() > 0) {
                    sb.append("<gpxtpx:power>").append(trackPoint.getPower()).append("</gpxtpx:power>\n");
                }
                sb.append("</gpxtpx:TrackPointExtension></extensions>\n");
            }
            sb.append("</trkpt>\n");
        }
        sb.append("</trkseg>\n</trk>\n</gpx>\n");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        byte[] bytes = sb2.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes;
    }

    public final String sportName(int sport) {
        if (sport == 1) {
            return "running";
        }
        if (sport == 17) {
            return "hiking";
        }
        return "cycling";
    }

    public final int detectSportFromName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return detectSport(name);
    }

    private final int detectSport(String name) {
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String str = lowerCase;
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "cycling", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "riding", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "bike", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "骑行", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "公路", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "山地", false, 2, (Object) null)) {
            return 2;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "hiking", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "walking", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "trail", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "徒步", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "登山", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "健走", false, 2, (Object) null)) {
            return 17;
        }
        return (StringsKt.contains$default((CharSequence) str, (CharSequence) "running", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "run", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "跑步", false, 2, (Object) null)) ? 1 : -1;
    }

    private final double haversineKm(double lat1, double lon1, double lat2, double lon2) {
        double radians = Math.toRadians(lat2 - lat1);
        double radians2 = Math.toRadians(lon2 - lon1);
        double d = 2;
        double d2 = radians / d;
        double d3 = radians2 / d;
        double sin = (Math.sin(d2) * Math.sin(d2)) + (Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) * Math.sin(d3) * Math.sin(d3));
        return d * 6371.0088d * Math.atan2(Math.sqrt(sin), Math.sqrt(1 - sin));
    }

    private final String trimNum(double v) {
        if (v == Math.floor(v) && !Double.isInfinite(v)) {
            return String.valueOf((long) v);
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.US, "%.7f", Arrays.copyOf(new Object[]{Double.valueOf(v)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    private final String esc(String s) {
        return StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(s, "&", "&amp;", false, 4, (Object) null), "<", "&lt;", false, 4, (Object) null), ">", "&gt;", false, 4, (Object) null), "\"", "&quot;", false, 4, (Object) null);
    }
}

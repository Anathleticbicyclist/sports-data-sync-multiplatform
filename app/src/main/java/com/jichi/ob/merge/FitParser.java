package com.jichi.ob.merge;

import com.garmin.fit.DateTime;
import com.garmin.fit.Decode;
import com.garmin.fit.FileIdMesg;
import com.garmin.fit.FileIdMesgListener;
import com.garmin.fit.MesgBroadcaster;
import com.garmin.fit.MesgListener;
import com.garmin.fit.RecordMesg;
import com.garmin.fit.RecordMesgListener;
import com.garmin.fit.SessionMesg;
import com.garmin.fit.SessionMesgListener;
import com.garmin.fit.Sport;
import com.garmin.fit.SportMesg;
import com.garmin.fit.SportMesgListener;
import com.jichi.ob.GpxToFitConverter;
import com.jichi.ob.api.FitBuilder;
import io.jenetics.jpx.Degrees;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* compiled from: FitParser.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\t"}, d2 = {"Lcom/jichi/ob/merge/FitParser;", "", "<init>", "()V", "parse", "Lcom/jichi/ob/merge/FitParser$FitResult;", "bytes", "", "FitResult", "app_devRelease"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FitParser {
    public static final FitParser INSTANCE = new FitParser();

    private FitParser() {
    }

    /* compiled from: FitParser.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003JA\u0010\u001a\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001f\u001a\u00020\bHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010¨\u0006 "}, d2 = {"Lcom/jichi/ob/merge/FitParser$FitResult;", "", "points", "", "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;", BikeService.EXTRA_SPORT, "", "title", "", "ascentM", "descentM", "<init>", "(Ljava/util/List;ILjava/lang/String;II)V", "getPoints", "()Ljava/util/List;", "getSport", "()I", "getTitle", "()Ljava/lang/String;", "getAscentM", "getDescentM", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_devRelease"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class FitResult {
        private final int ascentM;
        private final int descentM;
        private final List<GpxToFitConverter.TrackPoint> points;
        private final int sport;
        private final String title;
        // v9.6.9: 每段 session / file_id 的原值，供轨迹合并照抄（计时、卡路里、设备信息）。
        private final long timerSec;
        private final int totalCalories;
        private final int manufacturer;
        private final int product;
        private final long serialNumber;

        public static /* synthetic */ FitResult copy$default(FitResult fitResult, List list, int i, String str, int i2, int i3, long j, int i4, int i5, int i6, long j2, int i7, Object obj) {
            if ((i7 & 1) != 0) {
                list = fitResult.points;
            }
            if ((i7 & 2) != 0) {
                i = fitResult.sport;
            }
            if ((i7 & 4) != 0) {
                str = fitResult.title;
            }
            if ((i7 & 8) != 0) {
                i2 = fitResult.ascentM;
            }
            if ((i7 & 16) != 0) {
                i3 = fitResult.descentM;
            }
            if ((i7 & 32) != 0) {
                j = fitResult.timerSec;
            }
            if ((i7 & 64) != 0) {
                i4 = fitResult.totalCalories;
            }
            if ((i7 & 128) != 0) {
                i5 = fitResult.manufacturer;
            }
            if ((i7 & 256) != 0) {
                i6 = fitResult.product;
            }
            if ((i7 & 512) != 0) {
                j2 = fitResult.serialNumber;
            }
            long j3 = j2;
            int i8 = i6;
            int i9 = i5;
            int i10 = i4;
            long j4 = j;
            int i5b = i3;
            String str2 = str;
            return fitResult.copy(list, i, str2, i2, i5b, j4, i10, i9, i8, j3);
        }

        public final List<GpxToFitConverter.TrackPoint> component1() {
            return this.points;
        }

        /* renamed from: component2, reason: from getter */
        public final int getSport() {
            return this.sport;
        }

        /* renamed from: component3, reason: from getter */
        public final String getTitle() {
            return this.title;
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
        public final int getTotalCalories() {
            return this.totalCalories;
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

        public final FitResult copy(List<GpxToFitConverter.TrackPoint> points, int sport, String title, int ascentM, int descentM, long timerSec, int totalCalories, int manufacturer, int product, long serialNumber) {
            Intrinsics.checkNotNullParameter(points, "points");
            Intrinsics.checkNotNullParameter(title, "title");
            return new FitResult(points, sport, title, ascentM, descentM, timerSec, totalCalories, manufacturer, product, serialNumber);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FitResult)) {
                return false;
            }
            FitResult fitResult = (FitResult) other;
            return Intrinsics.areEqual(this.points, fitResult.points) && this.sport == fitResult.sport && Intrinsics.areEqual(this.title, fitResult.title) && this.ascentM == fitResult.ascentM && this.descentM == fitResult.descentM && this.timerSec == fitResult.timerSec && this.totalCalories == fitResult.totalCalories && this.manufacturer == fitResult.manufacturer && this.product == fitResult.product && this.serialNumber == fitResult.serialNumber;
        }

        public int hashCode() {
            return (((((((((((((((((this.points.hashCode() * 31) + Integer.hashCode(this.sport)) * 31) + this.title.hashCode()) * 31) + Integer.hashCode(this.ascentM)) * 31) + Integer.hashCode(this.descentM)) * 31) + Long.hashCode(this.timerSec)) * 31) + Integer.hashCode(this.totalCalories)) * 31) + Integer.hashCode(this.manufacturer)) * 31) + Integer.hashCode(this.product)) * 31) + Long.hashCode(this.serialNumber);
        }

        public String toString() {
            return "FitResult(points=" + this.points + ", sport=" + this.sport + ", title=" + this.title + ", ascentM=" + this.ascentM + ", descentM=" + this.descentM + ", timerSec=" + this.timerSec + ", totalCalories=" + this.totalCalories + ", manufacturer=" + this.manufacturer + ", product=" + this.product + ", serialNumber=" + this.serialNumber + ")";
        }

        public FitResult(List<GpxToFitConverter.TrackPoint> points, int i, String title, int i2, int i3, long j, int i4, int i5, int i6, long j2) {
            Intrinsics.checkNotNullParameter(points, "points");
            Intrinsics.checkNotNullParameter(title, "title");
            this.points = points;
            this.sport = i;
            this.title = title;
            this.ascentM = i2;
            this.descentM = i3;
            this.timerSec = j;
            this.totalCalories = i4;
            this.manufacturer = i5;
            this.product = i6;
            this.serialNumber = j2;
        }

        public /* synthetic */ FitResult(List list, int i, String str, int i2, int i3, long j, int i4, int i5, int i6, long j2, int i7, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, i, str, (i7 & 8) != 0 ? 0 : i2, (i7 & 16) != 0 ? 0 : i3, (i7 & 32) != 0 ? 0L : j, (i7 & 64) != 0 ? 0 : i4, (i7 & 128) != 0 ? 255 : i5, (i7 & 256) != 0 ? 1 : i6, (i7 & 512) != 0 ? 0L : j2);
        }

        public final List<GpxToFitConverter.TrackPoint> getPoints() {
            return this.points;
        }

        public final int getSport() {
            return this.sport;
        }

        public final String getTitle() {
            return this.title;
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

    public final FitResult parse(byte[] bytes) {
        boolean z;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        try {
            if (bytes.length >= 14 && (bytes[8] & UByte.MAX_VALUE) == 46 && (bytes[9] & UByte.MAX_VALUE) == 70) {
                final ArrayList arrayList = new ArrayList(8192);
                final Ref.IntRef intRef = new Ref.IntRef();
                intRef.element = -1;
                final Ref.IntRef intRef2 = new Ref.IntRef();
                final Ref.IntRef intRef3 = new Ref.IntRef();
                // v9.6.9: 每段 session / file_id 的原值（计时、卡路里、厂商/产品/序列号），供合并照抄。
                final Ref.LongRef timerRef = new Ref.LongRef();
                final Ref.IntRef caloriesRef = new Ref.IntRef();
                final Ref.IntRef manufacturerRef = new Ref.IntRef();
                manufacturerRef.element = 255;
                final Ref.IntRef productRef = new Ref.IntRef();
                productRef.element = 1;
                final Ref.LongRef serialRef = new Ref.LongRef();
                final Ref.LongRef longRef = new Ref.LongRef();
                Decode decode = new Decode();
                MesgBroadcaster mesgBroadcaster = new MesgBroadcaster(decode);
                decode.addListener((MesgListener) mesgBroadcaster);
                mesgBroadcaster.addListener(new RecordMesgListener() { // from class: com.jichi.ob.merge.FitParser$parse$1
                    @Override // com.garmin.fit.RecordMesgListener
                    public void onMesg(RecordMesg mesg) {
                        Long timestamp;
                        Intrinsics.checkNotNullParameter(mesg, "mesg");
                        Integer positionLat = mesg.getPositionLat();
                        if (positionLat != null) {
                            int intValue = positionLat.intValue();
                            Integer positionLong = mesg.getPositionLong();
                            if (positionLong != null) {
                                int intValue2 = positionLong.intValue();
                                // jadx 残留的 r4 未声明：原意就是取 getAltitude() 的值，先存局部变量再用。
                                Float altitude = mesg.getAltitude();
                                double floatValue = altitude != null ? altitude.floatValue() : Degrees.MIN_VALUE;
                                DateTime timestamp2 = mesg.getTimestamp();
                                long longValue = (timestamp2 == null || (timestamp = timestamp2.getTimestamp()) == null) ? 0L : timestamp.longValue() + FitBuilder.FIT_EPOCH;
                                if (longValue > 0) {
                                    // jadx 把捕获的局部变量 longRef 写成了 Ref.LongRef.this（不合法），改回变量名。
                                    longRef.element = longValue;
                                }
                                ArrayList<GpxToFitConverter.TrackPoint> arrayList2 = arrayList;
                                Ref.LongRef longRef2 = longRef;
                                synchronized (arrayList2) {
                                    double d = (intValue * 180.0d) / 2.147483648E9d;
                                    double d2 = (intValue2 * 180.0d) / 2.147483648E9d;
                                    // v9.6.9: 海拔优先取 enhanced_altitude，没有再取 altitude；
                                    // 速度留下来：优先 enhanced_speed，没有再取 speed，都没有记 -1。
                                    Float enhancedAlt = mesg.getEnhancedAltitude();
                                    double altValue = enhancedAlt != null ? enhancedAlt.floatValue() : floatValue;
                                    double d3 = altValue > Degrees.MIN_VALUE ? altValue : 0.0d;
                                    if (longValue <= 0) {
                                        longValue = longRef2.element;
                                    }
                                    long j = longValue;
                                    Short heartRate = mesg.getHeartRate();
                                    int coerceIn = RangesKt.coerceIn((int) (heartRate != null ? heartRate.shortValue() : (short) 0), 0, 255);
                                    Short cadence = mesg.getCadence();
                                    int coerceIn2 = RangesKt.coerceIn((int) (cadence != null ? cadence.shortValue() : (short) 0), 0, 255);
                                    Integer power = mesg.getPower();
                                    Float enhancedSpeed = mesg.getEnhancedSpeed();
                                    Float speed = enhancedSpeed != null ? enhancedSpeed : mesg.getSpeed();
                                    double speedMs = speed != null ? speed.doubleValue() : -1.0d;
                                    // jadx 残留的 r0 未声明：原意就是取 getDistance() 的值，先存局部变量再用。
                                    Float distance = mesg.getDistance();
                                    arrayList2.add(new GpxToFitConverter.TrackPoint(d, d2, d3, j, coerceIn, coerceIn2, RangesKt.coerceIn(power != null ? power.intValue() : 0, 0, 65535), distance != null ? distance.floatValue() : -1.0d, speedMs));
                                }
                            }
                        }
                    }
                });
                mesgBroadcaster.addListener(new SportMesgListener() { // from class: com.jichi.ob.merge.FitParser$parse$2
                    @Override // com.garmin.fit.SportMesgListener
                    public void onMesg(SportMesg mesg) {
                        Intrinsics.checkNotNullParameter(mesg, "mesg");
                        Sport sport = mesg.getSport();
                        if (sport == null || sport == Sport.INVALID) {
                            return;
                        }
                        // jadx 把捕获的局部变量 intRef 写成了 Ref.IntRef.this（不合法），改回变量名。
                        intRef.element = sport.getValue();
                    }
                });
                mesgBroadcaster.addListener(new SessionMesgListener() { // from class: com.jichi.ob.merge.FitParser$parse$3
                    @Override // com.garmin.fit.SessionMesgListener
                    public void onMesg(SessionMesg mesg) {
                        Sport sport;
                        Intrinsics.checkNotNullParameter(mesg, "mesg");
                        if (intRef.element == -1 && (sport = mesg.getSport()) != null && sport != Sport.INVALID) {
                            intRef.element = sport.getValue();
                        }
                        Integer totalAscent = mesg.getTotalAscent();
                        if (totalAscent != null) {
                            intRef2.element = totalAscent.intValue();
                        }
                        Integer totalDescent = mesg.getTotalDescent();
                        if (totalDescent != null) {
                            intRef3.element = totalDescent.intValue();
                        }
                        // v9.6.9: 每段 session 的计时时间与卡路里，供合并照抄求和（不用记录跨度估算）。
                        Float totalTimerTime = mesg.getTotalTimerTime();
                        if (totalTimerTime != null) {
                            timerRef.element = totalTimerTime.longValue();
                        }
                        Integer totalCalories = mesg.getTotalCalories();
                        if (totalCalories != null) {
                            caloriesRef.element = totalCalories.intValue();
                        }
                    }
                });
                // v9.6.9: file_id 监听——厂商/产品/序列号，供合并照抄第一段原件。
                mesgBroadcaster.addListener(new FileIdMesgListener() { // from class: com.jichi.ob.merge.FitParser$parse$4
                    @Override // com.garmin.fit.FileIdMesgListener
                    public void onMesg(FileIdMesg mesg) {
                        Intrinsics.checkNotNullParameter(mesg, "mesg");
                        Integer manufacturer = mesg.getManufacturer();
                        if (manufacturer != null) {
                            manufacturerRef.element = manufacturer.intValue();
                        }
                        Integer product = mesg.getProduct();
                        if (product != null) {
                            productRef.element = product.intValue();
                        }
                        Long serialNumber = mesg.getSerialNumber();
                        if (serialNumber != null) {
                            serialRef.element = serialNumber.longValue();
                        }
                    }
                });
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                    z = decode.read(byteArrayInputStream instanceof BufferedInputStream ? (BufferedInputStream) byteArrayInputStream : new BufferedInputStream(byteArrayInputStream, 8192));
                } catch (Exception unused) {
                    z = false;
                }
                if (z && !arrayList.isEmpty()) {
                    // v9.6.9: 计时优先用 session 的 total_timer_time；原件没有该值时退到记录跨度。
                    long timerSec = timerRef.element;
                    if (timerSec <= 0) {
                        GpxToFitConverter.TrackPoint firstPt = (GpxToFitConverter.TrackPoint) arrayList.get(0);
                        GpxToFitConverter.TrackPoint lastPt = (GpxToFitConverter.TrackPoint) arrayList.get(arrayList.size() - 1);
                        timerSec = Math.max(0L, lastPt.getTs() - firstPt.getTs());
                    }
                    return new FitResult(arrayList, intRef.element, "", intRef2.element, intRef3.element, timerSec, caloriesRef.element, manufacturerRef.element, productRef.element, serialRef.element);
                }
                return null;
            }
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }
}

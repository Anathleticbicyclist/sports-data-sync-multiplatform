package com.jichi.ob.merge;

import com.garmin.fit.DateTime;
import com.garmin.fit.Decode;
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

        public static /* synthetic */ FitResult copy$default(FitResult fitResult, List list, int i, String str, int i2, int i3, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                list = fitResult.points;
            }
            if ((i4 & 2) != 0) {
                i = fitResult.sport;
            }
            if ((i4 & 4) != 0) {
                str = fitResult.title;
            }
            if ((i4 & 8) != 0) {
                i2 = fitResult.ascentM;
            }
            if ((i4 & 16) != 0) {
                i3 = fitResult.descentM;
            }
            int i5 = i3;
            String str2 = str;
            return fitResult.copy(list, i, str2, i2, i5);
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

        public final FitResult copy(List<GpxToFitConverter.TrackPoint> points, int sport, String title, int ascentM, int descentM) {
            Intrinsics.checkNotNullParameter(points, "points");
            Intrinsics.checkNotNullParameter(title, "title");
            return new FitResult(points, sport, title, ascentM, descentM);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FitResult)) {
                return false;
            }
            FitResult fitResult = (FitResult) other;
            return Intrinsics.areEqual(this.points, fitResult.points) && this.sport == fitResult.sport && Intrinsics.areEqual(this.title, fitResult.title) && this.ascentM == fitResult.ascentM && this.descentM == fitResult.descentM;
        }

        public int hashCode() {
            return (((((((this.points.hashCode() * 31) + Integer.hashCode(this.sport)) * 31) + this.title.hashCode()) * 31) + Integer.hashCode(this.ascentM)) * 31) + Integer.hashCode(this.descentM);
        }

        public String toString() {
            return "FitResult(points=" + this.points + ", sport=" + this.sport + ", title=" + this.title + ", ascentM=" + this.ascentM + ", descentM=" + this.descentM + ")";
        }

        public FitResult(List<GpxToFitConverter.TrackPoint> points, int i, String title, int i2, int i3) {
            Intrinsics.checkNotNullParameter(points, "points");
            Intrinsics.checkNotNullParameter(title, "title");
            this.points = points;
            this.sport = i;
            this.title = title;
            this.ascentM = i2;
            this.descentM = i3;
        }

        public /* synthetic */ FitResult(List list, int i, String str, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, i, str, (i4 & 8) != 0 ? 0 : i2, (i4 & 16) != 0 ? 0 : i3);
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
                                double floatValue = mesg.getAltitude() != null ? r4.floatValue() : Degrees.MIN_VALUE;
                                DateTime timestamp2 = mesg.getTimestamp();
                                long longValue = (timestamp2 == null || (timestamp = timestamp2.getTimestamp()) == null) ? 0L : timestamp.longValue() + FitBuilder.FIT_EPOCH;
                                if (longValue > 0) {
                                    Ref.LongRef.this.element = longValue;
                                }
                                ArrayList<GpxToFitConverter.TrackPoint> arrayList2 = arrayList;
                                Ref.LongRef longRef2 = Ref.LongRef.this;
                                synchronized (arrayList2) {
                                    double d = (intValue * 180.0d) / 2.147483648E9d;
                                    double d2 = (intValue2 * 180.0d) / 2.147483648E9d;
                                    double d3 = floatValue > Degrees.MIN_VALUE ? floatValue : 0.0d;
                                    if (longValue <= 0) {
                                        longValue = longRef2.element;
                                    }
                                    long j = longValue;
                                    Short heartRate = mesg.getHeartRate();
                                    int coerceIn = RangesKt.coerceIn((int) (heartRate != null ? heartRate.shortValue() : (short) 0), 0, 255);
                                    Short cadence = mesg.getCadence();
                                    int coerceIn2 = RangesKt.coerceIn((int) (cadence != null ? cadence.shortValue() : (short) 0), 0, 255);
                                    Integer power = mesg.getPower();
                                    arrayList2.add(new GpxToFitConverter.TrackPoint(d, d2, d3, j, coerceIn, coerceIn2, RangesKt.coerceIn(power != null ? power.intValue() : 0, 0, 65535), mesg.getDistance() != null ? r0.floatValue() : -1.0d));
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
                        Ref.IntRef.this.element = sport.getValue();
                    }
                });
                mesgBroadcaster.addListener(new SessionMesgListener() { // from class: com.jichi.ob.merge.FitParser$parse$3
                    @Override // com.garmin.fit.SessionMesgListener
                    public void onMesg(SessionMesg mesg) {
                        Sport sport;
                        Intrinsics.checkNotNullParameter(mesg, "mesg");
                        if (Ref.IntRef.this.element == -1 && (sport = mesg.getSport()) != null && sport != Sport.INVALID) {
                            Ref.IntRef.this.element = sport.getValue();
                        }
                        Integer totalAscent = mesg.getTotalAscent();
                        if (totalAscent != null) {
                            intRef2.element = totalAscent.intValue();
                        }
                        Integer totalDescent = mesg.getTotalDescent();
                        if (totalDescent != null) {
                            intRef3.element = totalDescent.intValue();
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
                    return new FitResult(arrayList, intRef.element, "", intRef2.element, intRef3.element);
                }
                return null;
            }
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }
}

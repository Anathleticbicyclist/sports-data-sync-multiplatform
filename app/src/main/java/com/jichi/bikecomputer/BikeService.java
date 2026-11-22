package com.jichi.bikecomputer;

import com.jichi.ob.R;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import com.jichi.bikecomputer.export.FitExporter;
import com.jichi.bikecomputer.export.GpxExporter;
import com.jichi.bikecomputer.model.SportType;
import com.jichi.bikecomputer.model.TrackPoint;
import com.jichi.bikecomputer.model.TrackStats;
import com.jichi.bikecomputer.sensor.BaroAltimeter;
import com.jichi.bikecomputer.sensor.BleSensors;
import com.jichi.bikecomputer.sensor.GpsTracker;
import com.jichi.bikecomputer.store.PrefsManager;
import com.jichi.bikecomputer.store.TrackStore;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public class BikeService extends Service {
    public static final String ACTION_PAUSE = "com.jichi.bikecomputer.action.PAUSE";
    public static final String ACTION_RESUME = "com.jichi.bikecomputer.action.RESUME";
    public static final String ACTION_START = "com.jichi.bikecomputer.action.START";
    public static final String ACTION_STOP = "com.jichi.bikecomputer.action.STOP";
    public static final String EXTRA_SPORT = "sport";
    public static final int STATE_IDLE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_RECORDING = 1;
    private Sensor accel;
    private BaroAltimeter baro;
    private BleSensors ble;
    private GpsTracker gps;
    private Listener listener;
    private PrefsManager prefs;
    private TrackStore.RecordFile recordFile;
    private SensorManager sm;
    private TrackStore store;
    private final IBinder binder = new LocalBinder();
    private final Handler main = new Handler(Looper.getMainLooper());
    private int state = 0;
    private SportType sport = SportType.CYCLING;
    private final List<TrackPoint> points = new ArrayList();
    private TrackStats stats = new TrackStats();
    private long startMs = 0;
    private long pauseStartTs = -1;
    private long totalPausedMs = 0;
    private float lastPressure = 0.0f;
    private double lastBaroAlt = Double.NaN;
    private int lastHr = 0;
    private int lastCad = 0;
    private int lastRunCad = 0;
    private float lastWheelSpeed = 0.0f;
    private final List<long[]> powerBuf = new ArrayList();
    private int power3s = 0;
    private long lastStepAtMs = 0;
    private int stepCount = 0;
    private long stepWindowStartMs = 0;
    private volatile int stepFreqSpm = 0;
    private final SensorEventListener stepListener = new SensorEventListener() { // from class: com.jichi.bikecomputer.BikeService.4
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float fSqrt = (float) Math.sqrt((sensorEvent.values[0] * sensorEvent.values[0]) + (sensorEvent.values[1] * sensorEvent.values[1]) + (sensorEvent.values[2] * sensorEvent.values[2]));
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (fSqrt > 11.3f && jCurrentTimeMillis - BikeService.this.lastStepAtMs > 350) {
                BikeService.this.lastStepAtMs = jCurrentTimeMillis;
                BikeService.access$1208(BikeService.this);
            }
            if (jCurrentTimeMillis - BikeService.this.stepWindowStartMs >= 6000) {
                BikeService.this.stepFreqSpm = (int) Math.round((BikeService.this.stepCount * 60000.0d) / (jCurrentTimeMillis - BikeService.this.stepWindowStartMs));
                BikeService.this.stepCount = 0;
                BikeService.this.stepWindowStartMs = jCurrentTimeMillis;
            }
        }
    };

    public interface Listener {
        void onFinished(File file, File file2, TrackStats trackStats);

        void onTick();
    }

    static /* synthetic */ int access$1208(BikeService bikeService) {
        int i = bikeService.stepCount;
        bikeService.stepCount = i + 1;
        return i;
    }

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public BikeService getService() {
            return BikeService.this;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            onCreateBody();
        } catch (Throwable th) {
            Log.e("BikeService", "onCreate failed", th);
        }
    }

    private void onCreateBody() {
        Context applicationContext = getApplicationContext();
        this.gps = new GpsTracker(applicationContext);
        this.baro = new BaroAltimeter(applicationContext);
        this.ble = new BleSensors(applicationContext);
        this.store = new TrackStore(applicationContext);
        this.prefs = new PrefsManager(applicationContext);
        createChannel();
        this.gps.setCallback(new AnonymousClass1());
        this.baro.setCallback(new BaroAltimeter.Callback() { // from class: com.jichi.bikecomputer.BikeService.2
            @Override // com.jichi.bikecomputer.sensor.BaroAltimeter.Callback
            public void onBaroReading(float f, double d) {
                BikeService.this.lastPressure = f;
                BikeService.this.lastBaroAlt = d;
            }
        });
        this.ble.setCallback(new AnonymousClass3());
    }

    /* renamed from: com.jichi.bikecomputer.BikeService$1, reason: invalid class name */
    class AnonymousClass1 implements GpsTracker.Callback {
        AnonymousClass1() {
        }

        @Override // com.jichi.bikecomputer.sensor.GpsTracker.Callback
        public void onLocation(Location location) {
            // 修复：Kotlin 回调接口未声明受检异常，override 不能写 throws；此处按原意吞掉 IO 异常。
            try {
                BikeService.this.onGpsLocation(location);
            } catch (IOException ignored) {
            }
        }

        @Override // com.jichi.bikecomputer.sensor.GpsTracker.Callback
        public void onGpsStatus(boolean z, float f) {
            BikeService.this.main.post(new Runnable() { // from class: com.jichi.bikecomputer.BikeService$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    m183lambda$onGpsStatus$0$comjichibikecomputerBikeService$1();
                }
            });
        }

        /* renamed from: lambda$onGpsStatus$0$com-jichi-bikecomputer-BikeService$1, reason: not valid java name */
        /* synthetic */ void m183lambda$onGpsStatus$0$comjichibikecomputerBikeService$1() {
            if (BikeService.this.listener != null) {
                BikeService.this.listener.onTick();
            }
        }
    }

    /* renamed from: com.jichi.bikecomputer.BikeService$3, reason: invalid class name */
    class AnonymousClass3 implements BleSensors.Callback {
        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onScannedDevice(String str, String str2, BleSensors.DeviceType deviceType, int i) {
        }

        AnonymousClass3() {
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onHeartRate(int i) {
            BikeService.this.lastHr = i;
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onPower(int i) {
            synchronized (BikeService.this.powerBuf) {
                int size = 0;
                BikeService.this.powerBuf.add(new long[]{System.currentTimeMillis(), i});
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (!BikeService.this.powerBuf.isEmpty() && jCurrentTimeMillis - ((long[]) BikeService.this.powerBuf.get(0))[0] > 3000) {
                    BikeService.this.powerBuf.remove(0);
                }
                Iterator it = BikeService.this.powerBuf.iterator();
                long j = 0;
                while (it.hasNext()) {
                    j += ((long[]) it.next())[1];
                }
                BikeService bikeService = BikeService.this;
                if (!bikeService.powerBuf.isEmpty()) {
                    size = (int) (j / BikeService.this.powerBuf.size());
                }
                bikeService.power3s = size;
            }
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onCadence(int i) {
            BikeService.this.lastCad = i;
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onRunCadence(int i) {
            BikeService.this.lastRunCad = i;
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onWheelSpeed(float f) {
            BikeService.this.lastWheelSpeed = f;
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onSensorStatus(String str, String str2) {
            BikeService.this.main.post(new Runnable() { // from class: com.jichi.bikecomputer.BikeService$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    m184lambda$onSensorStatus$0$comjichibikecomputerBikeService$3();
                }
            });
        }

        /* renamed from: lambda$onSensorStatus$0$com-jichi-bikecomputer-BikeService$3, reason: not valid java name */
        /* synthetic */ void m184lambda$onSensorStatus$0$comjichibikecomputerBikeService$3() {
            if (BikeService.this.listener != null) {
                BikeService.this.listener.onTick();
            }
        }
    }

    private void createChannel() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        NotificationChannel notificationChannel = new NotificationChannel("bike_record", "码表记录", 2);
        notificationChannel.setDescription("记录进行中的通知");
        notificationManager.createNotificationChannel(notificationChannel);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 1;
        }
        String action = intent.getAction();
        if (ACTION_START.equals(action)) {
            SportType sportType = (SportType) intent.getSerializableExtra(EXTRA_SPORT);
            if (sportType != null) {
                this.sport = sportType;
            }
            startRecording();
        } else if (ACTION_PAUSE.equals(action)) {
            pause();
        } else if (ACTION_RESUME.equals(action)) {
            resume();
        } else if (ACTION_STOP.equals(action)) {
            stopRecording();
        }
        return 1;
    }

    public synchronized void startRecording() {
        if (this.state == 1) {
            return;
        }
        this.startMs = System.currentTimeMillis();
        this.totalPausedMs = 0L;
        this.pauseStartTs = -1L;
        this.points.clear();
        this.stats = new TrackStats();
        this.lastPressure = 0.0f;
        this.lastBaroAlt = Double.NaN;
        this.lastHr = 0;
        this.lastCad = 0;
        this.lastRunCad = 0;
        this.lastWheelSpeed = 0.0f;
        this.powerBuf.clear();
        this.power3s = 0;
        this.stepCount = 0;
        this.stepWindowStartMs = System.currentTimeMillis();
        this.lastStepAtMs = 0L;
        this.stepFreqSpm = 0;
        this.recordFile = this.store.createRecord(this.startMs);
        this.ble.setWheelCircumference(this.prefs.getWheelCircumference());
        this.ble.restoreBindings(this.prefs.getAllBinds());
        this.gps.start();
        this.baro.start();
        startStepSensor();
        this.state = 1;
        startForeground(1, buildNotification());
        this.main.post(new Runnable() { // from class: com.jichi.bikecomputer.BikeService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                m181lambda$startRecording$0$comjichibikecomputerBikeService();
            }
        });
    }

    /* renamed from: lambda$startRecording$0$com-jichi-bikecomputer-BikeService, reason: not valid java name */
    /* synthetic */ void m181lambda$startRecording$0$comjichibikecomputerBikeService() {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onTick();
        }
    }

    public synchronized void pause() {
        if (this.state != 1) {
            return;
        }
        this.pauseStartTs = System.currentTimeMillis();
        this.gps.stop();
        this.baro.stop();
        stopStepSensor();
        this.state = 2;
        updateNotification();
        this.main.post(new Runnable() { // from class: com.jichi.bikecomputer.BikeService$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                m179lambda$pause$1$comjichibikecomputerBikeService();
            }
        });
    }

    /* renamed from: lambda$pause$1$com-jichi-bikecomputer-BikeService, reason: not valid java name */
    /* synthetic */ void m179lambda$pause$1$comjichibikecomputerBikeService() {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onTick();
        }
    }

    public synchronized void resume() {
        if (this.state != 2) {
            return;
        }
        if (this.pauseStartTs > 0) {
            this.totalPausedMs += System.currentTimeMillis() - this.pauseStartTs;
        }
        this.pauseStartTs = -1L;
        this.gps.start();
        this.baro.start();
        startStepSensor();
        this.state = 1;
        updateNotification();
        this.main.post(new Runnable() { // from class: com.jichi.bikecomputer.BikeService$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                m180lambda$resume$2$comjichibikecomputerBikeService();
            }
        });
    }

    /* renamed from: lambda$resume$2$com-jichi-bikecomputer-BikeService, reason: not valid java name */
    /* synthetic */ void m180lambda$resume$2$comjichibikecomputerBikeService() {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onTick();
        }
    }

    public synchronized void stopRecording() {
        final File file;
        int i = this.state;
        if (i == 0) {
            return;
        }
        if (i == 1 && this.pauseStartTs > 0) {
            this.totalPausedMs += System.currentTimeMillis() - this.pauseStartTs;
        }
        this.gps.stop();
        this.baro.stop();
        this.ble.stop();
        stopStepSensor();
        this.state = 0;
        this.stats = TrackStats.fromPoints(this.points);
        TrackStore.RecordFile recordFile = this.recordFile;
        if (recordFile != null) {
            recordFile.close();
        }
        File file2 = null;
        if (this.points.size() >= 2) {
            File file3 = new File(getFilesDir(), "exports");
            if (!file3.exists()) {
                file3.mkdirs();
            }
            String str = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date(this.startMs)) + "_" + this.sport.name().toLowerCase(Locale.US);
            File file4 = new File(file3, str + ".fit");
            file = new File(file3, str + ".gpx");
            if (!FitExporter.export(this.points, this.sport, this.startMs, this.stats, file4.getAbsolutePath())) {
                file4 = null;
            }
            if (!GpxExporter.export(this.points, this.sport, this.startMs, file.getAbsolutePath())) {
                file = null;
            }
            file2 = file4;
        } else {
            file = null;
        }
        stopForeground(true);
        stopSelf();
        final TrackStats trackStats = this.stats;
        this.main.post(new Runnable() { // from class: com.jichi.bikecomputer.BikeService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                m182lambda$stopRecording$3$comjichibikecomputerBikeService(file2, file, trackStats);
            }
        });
    }

    /* renamed from: lambda$stopRecording$3$com-jichi-bikecomputer-BikeService, reason: not valid java name */
    /* synthetic */ void m182lambda$stopRecording$3$comjichibikecomputerBikeService(File file, File file2, TrackStats trackStats) {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onFinished(file, file2, trackStats);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGpsLocation(Location location) throws IOException {
        TrackPoint trackPoint;
        if (this.state != 1) {
            return;
        }
        long time = location.getTime();
        if (time < this.startMs) {
            time = System.currentTimeMillis();
        }
        TrackPoint trackPoint2 = new TrackPoint(time, location.getLatitude(), location.getLongitude());
        trackPoint2.altGps = location.hasAltitude() ? location.getAltitude() : Double.NaN;
        trackPoint2.speed = location.hasSpeed() ? location.getSpeed() : 0.0f;
        trackPoint2.bearing = location.hasBearing() ? location.getBearing() : 0.0f;
        trackPoint2.pressure = this.lastPressure;
        if (this.baro.hasBarometer() && !this.baro.isCalibrated() && !Double.isNaN(trackPoint2.altGps) && this.lastPressure > 500.0f) {
            this.baro.calibrate(trackPoint2.altGps, this.lastPressure);
        }
        trackPoint2.altBaro = this.lastBaroAlt;
        trackPoint2.alt = this.baro.resolve(this.lastBaroAlt, trackPoint2.altGps);
        trackPoint2.heartRate = this.lastHr;
        trackPoint2.cadence = this.lastCad;
        trackPoint2.power = this.power3s;
        trackPoint2.wheelSpeed = this.lastWheelSpeed;
        float speed = location.hasSpeed() ? location.getSpeed() : 0.0f;
        if (speed > 0.5f) {
            trackPoint2.speed = speed;
        } else {
            float f = this.lastWheelSpeed;
            if (f > 0.5f) {
                trackPoint2.speed = f;
            }
        }
        if (this.points.isEmpty()) {
            trackPoint = null;
        } else {
            List<TrackPoint> list = this.points;
            trackPoint = list.get(list.size() - 1);
        }
        this.points.add(trackPoint2);
        this.stats.update(trackPoint, trackPoint2);
        TrackStore.RecordFile recordFile = this.recordFile;
        if (recordFile != null && recordFile.isOpen()) {
            this.recordFile.append(trackPoint2);
        }
        this.main.post(new Runnable() { // from class: com.jichi.bikecomputer.BikeService$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                m178lambda$onGpsLocation$4$comjichibikecomputerBikeService();
            }
        });
    }

    /* renamed from: lambda$onGpsLocation$4$com-jichi-bikecomputer-BikeService, reason: not valid java name */
    /* synthetic */ void m178lambda$onGpsLocation$4$comjichibikecomputerBikeService() {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onTick();
        }
    }

    public synchronized long elapsedMs() {
        if (this.state == 0) {
            return this.stats.elapsedMs;
        }
        long jCurrentTimeMillis = (System.currentTimeMillis() - this.startMs) - this.totalPausedMs;
        if (this.pauseStartTs > 0) {
            jCurrentTimeMillis -= System.currentTimeMillis() - this.pauseStartTs;
        }
        return jCurrentTimeMillis;
    }

    public synchronized long activeMs() {
        return elapsedMs();
    }

    public synchronized TrackStats getStats() {
        return this.stats;
    }

    public synchronized List<TrackPoint> getPoints() {
        return new ArrayList(this.points);
    }

    public synchronized int getState() {
        return this.state;
    }

    public SportType getSport() {
        return this.sport;
    }

    public synchronized boolean gpsFix() {
        // jadx 坏代码修复：原体在 gps==null 时返回未赋值变量；smali 原意为 gps!=null && hasFix()。
        GpsTracker gpsTracker = this.gps;
        return gpsTracker != null && gpsTracker.hasFix();
    }

    public synchronized float gpsAccuracy() {
        GpsTracker gpsTracker;
        gpsTracker = this.gps;
        return gpsTracker != null ? gpsTracker.getLastAccuracy() : 999.0f;
    }

    public synchronized boolean hasBaro() {
        // jadx 坏代码修复：原体在 baro==null 时返回未赋值变量；smali 原意为 baro!=null && hasBarometer()。
        BaroAltimeter baroAltimeter = this.baro;
        return baroAltimeter != null && baroAltimeter.hasBarometer();
    }

    public synchronized double baroAltitude() {
        return this.lastBaroAlt;
    }

    public synchronized String baroStatus() {
        BaroAltimeter baroAltimeter = this.baro;
        return baroAltimeter == null ? "气压计不可用" : !baroAltimeter.hasBarometer() ? "无气压计(GPS海拔)" : this.baro.isRegisterFailed() ? "气压计注册失败" : !this.baro.hasData() ? "气压计(等待数据)" : "气压计";
    }

    private void startStepSensor() {
        try {
            if (this.sm == null) {
                this.sm = (SensorManager) getSystemService("sensor");
            }
            if (this.accel == null) {
                this.accel = this.sm.getDefaultSensor(1);
            }
            Sensor sensor = this.accel;
            if (sensor != null) {
                this.sm.registerListener(this.stepListener, sensor, 1);
            }
        } catch (Exception unused) {
        }
    }

    private void stopStepSensor() {
        SensorEventListener sensorEventListener;
        try {
            SensorManager sensorManager = this.sm;
            if (sensorManager == null || (sensorEventListener = this.stepListener) == null) {
                return;
            }
            sensorManager.unregisterListener(sensorEventListener);
        } catch (Exception unused) {
        }
    }

    public synchronized boolean bleConnected() {
        // jadx 坏代码修复：原体在 ble==null 时返回未赋值变量；smali 原意为 ble!=null && anyConnected()。
        BleSensors bleSensors = this.ble;
        return bleSensors != null && bleSensors.anyConnected();
    }

    public synchronized int power3s() {
        return this.power3s;
    }

    public synchronized int lastHeartRate() {
        return this.lastHr;
    }

    public synchronized int lastCadence() {
        return this.lastCad;
    }

    public synchronized int lastRunCadence() {
        return this.lastRunCad;
    }

    public synchronized int stepFreq() {
        return this.stepFreqSpm;
    }

    public synchronized int runCadence() {
        int i;
        i = this.lastRunCad;
        if (i <= 0) {
            i = this.stepFreqSpm;
        }
        return i;
    }

    public synchronized float lastWheelSpeed() {
        return this.lastWheelSpeed;
    }

    public synchronized boolean isGpsSpeedPrimary() {
        return this.lastWheelSpeed <= 0.5f;
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    private void updateNotification() {
        ((NotificationManager) getSystemService("notification")).notify(1, buildNotification());
    }

    private Notification buildNotification() {
        String str;
        int i = this.state;
        if (i == 1) {
            str = "记录中 · " + fmtTime(elapsedMs()) + " · " + fmtKm(this.stats.distanceM);
        } else if (i == 2) {
            str = "已暂停 · " + fmtTime(elapsedMs()) + " · " + fmtKm(this.stats.distanceM);
        } else {
            str = "码表";
        }
        return new Notification.Builder(this, "bike_record").setContentTitle("临时码表 · " + this.sport.label).setContentText(str).setSmallIcon(android.R.drawable.ic_menu_mylocation).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) BikeActivity.class), 201326592)).setOngoing(true).build();
    }

    static String fmtTime(long j) {
        long j2 = j / 1000;
        return String.format(Locale.US, "%02d:%02d:%02d", Long.valueOf(j2 / 3600), Long.valueOf((j2 / 60) % 60), Long.valueOf(j2 % 60));
    }

    static String fmtKm(double d) {
        if (d < 1000.0d) {
            return String.format(Locale.US, "%.0fm", Double.valueOf(d));
        }
        return String.format(Locale.US, "%.2fkm", Double.valueOf(d / 1000.0d));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        try {
            this.gps.stop();
            this.baro.stop();
            this.ble.stop();
        } catch (Exception unused) {
        }
    }
}

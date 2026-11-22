package com.jichi.bikecomputer;

import com.jichi.ob.R;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.jichi.bikecomputer.BikeService;
import com.jichi.bikecomputer.model.SportType;
import com.jichi.bikecomputer.model.TrackPoint;
import com.jichi.bikecomputer.model.TrackStats;
import com.jichi.bikecomputer.store.PrefsManager;
import com.jichi.bikecomputer.ui.TrackPreviewView;
import com.jichi.bikecomputer.util.NightContext;
import io.jenetics.jpx.Degrees;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public class BikeActivity extends Activity implements BikeService.Listener {
    private View blockCad;
    private View blockHr;
    private View blockPower;
    private Button btnPause;
    private Button btnStart;
    private Button btnStop;
    private View cardAscent;
    private View cardDist;
    private View itemAlt;
    private View itemAvg;
    private View itemBaro;
    private View itemGrade;
    private View itemMax;
    private PrefsManager prefs;
    private View rowTime;
    private BikeService service;
    private TrackPreviewView trackView;
    private TextView tvAlt;
    private TextView tvAscent;
    private TextView tvAvg;
    private TextView tvAvgLabel;
    private TextView tvBaro;
    private TextView tvBaroAlt;
    private TextView tvBle;
    private TextView tvCad;
    private TextView tvCadLabel;
    private TextView tvDist;
    private TextView tvGpsState;
    private TextView tvGrade;
    private TextView tvHr;
    private TextView tvMain;
    private TextView tvMainLabel;
    private TextView tvMainUnit;
    private TextView tvMax;
    private TextView tvMaxLabel;
    private TextView tvPower;
    private TextView tvSportName;
    private TextView tvTime;
    private TextView tvTimeText;
    private boolean bound = false;
    private final Handler ui = new Handler(Looper.getMainLooper());
    private SportType sport = SportType.CYCLING;
    private String mainMode = "speed";
    private final Runnable ticker = new Runnable() { // from class: com.jichi.bikecomputer.BikeActivity.1
        @Override // java.lang.Runnable
        public void run() {
            BikeActivity.this.refresh();
            BikeActivity.this.ui.postDelayed(this, 500L);
        }
    };
    private final ServiceConnection conn = new ServiceConnection() { // from class: com.jichi.bikecomputer.BikeActivity.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            BikeActivity.this.service = ((BikeService.LocalBinder) iBinder).getService();
            BikeActivity.this.service.setListener(BikeActivity.this);
            BikeActivity.this.bound = true;
            BikeActivity.this.updateButtons();
            BikeActivity.this.refresh();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            BikeActivity.this.bound = false;
            BikeActivity.this.service = null;
        }
    };

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(NightContext.apply(context));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            onCreateBody(bundle);
        } catch (Throwable th) {
            Toast.makeText(this, "码表页面加载失败：" + th.getMessage(), 1).show();
            finish();
        }
    }

    private void onCreateBody(Bundle bundle) {
        setContentView(com.jichi.ob.R.layout.bc_activity_bike);
        this.prefs = new PrefsManager(this);
        SportType sportType = (SportType) getIntent().getSerializableExtra(BikeService.EXTRA_SPORT);
        if (sportType != null) {
            this.sport = sportType;
        }
        this.tvMain = (TextView) findViewById(com.jichi.ob.R.id.bc_tvMain);
        this.tvMainUnit = (TextView) findViewById(com.jichi.ob.R.id.bc_tvMainUnit);
        this.tvMainLabel = (TextView) findViewById(com.jichi.ob.R.id.bc_tvMainLabel);
        this.tvTime = (TextView) findViewById(com.jichi.ob.R.id.bc_tvTime);
        this.tvTimeText = (TextView) findViewById(com.jichi.ob.R.id.bc_tvTimeText);
        this.tvPower = (TextView) findViewById(com.jichi.ob.R.id.bc_tvPower);
        this.tvHr = (TextView) findViewById(com.jichi.ob.R.id.bc_tvHr);
        this.tvCad = (TextView) findViewById(com.jichi.ob.R.id.bc_tvCad);
        this.tvCadLabel = (TextView) findViewById(com.jichi.ob.R.id.bc_tvCadLabel);
        this.tvDist = (TextView) findViewById(com.jichi.ob.R.id.bc_tvDist);
        this.tvAscent = (TextView) findViewById(com.jichi.ob.R.id.bc_tvAscent);
        this.tvGrade = (TextView) findViewById(com.jichi.ob.R.id.bc_tvGrade);
        this.tvAlt = (TextView) findViewById(com.jichi.ob.R.id.bc_tvAlt);
        this.tvAvg = (TextView) findViewById(com.jichi.ob.R.id.bc_tvAvg);
        this.tvMax = (TextView) findViewById(com.jichi.ob.R.id.bc_tvMax);
        this.tvAvgLabel = (TextView) findViewById(com.jichi.ob.R.id.bc_tvAvgLabel);
        this.tvMaxLabel = (TextView) findViewById(com.jichi.ob.R.id.bc_tvMaxLabel);
        this.tvBaroAlt = (TextView) findViewById(com.jichi.ob.R.id.bc_tvBaroAlt);
        this.tvGpsState = (TextView) findViewById(com.jichi.ob.R.id.bc_tvGpsState);
        this.tvBaro = (TextView) findViewById(com.jichi.ob.R.id.bc_tvBaro);
        this.tvBle = (TextView) findViewById(com.jichi.ob.R.id.bc_tvBle);
        this.tvSportName = (TextView) findViewById(com.jichi.ob.R.id.bc_tvSportName);
        this.rowTime = findViewById(com.jichi.ob.R.id.bc_rowTime);
        this.blockPower = findViewById(com.jichi.ob.R.id.bc_blockPower);
        this.blockHr = findViewById(com.jichi.ob.R.id.bc_blockHr);
        this.blockCad = findViewById(com.jichi.ob.R.id.bc_blockCad);
        this.cardDist = findViewById(com.jichi.ob.R.id.bc_cardDist);
        this.cardAscent = findViewById(com.jichi.ob.R.id.bc_cardAscent);
        this.itemGrade = findViewById(com.jichi.ob.R.id.bc_itemGrade);
        this.itemAlt = findViewById(com.jichi.ob.R.id.bc_itemAlt);
        this.itemAvg = findViewById(com.jichi.ob.R.id.bc_itemAvg);
        this.itemMax = findViewById(com.jichi.ob.R.id.bc_itemMax);
        this.itemBaro = findViewById(com.jichi.ob.R.id.bc_itemBaro);
        this.trackView = (TrackPreviewView) findViewById(com.jichi.ob.R.id.bc_trackView);
        this.btnStart = (Button) findViewById(com.jichi.ob.R.id.bc_btnStart);
        this.btnPause = (Button) findViewById(com.jichi.ob.R.id.bc_btnPause);
        this.btnStop = (Button) findViewById(com.jichi.ob.R.id.bc_btnStop);
        this.tvSportName.setText(this.sport.label);
        initMainMode();
        this.btnStart.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.BikeActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m171lambda$onCreateBody$0$comjichibikecomputerBikeActivity(view);
            }
        });
        this.btnPause.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.BikeActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m172lambda$onCreateBody$1$comjichibikecomputerBikeActivity(view);
            }
        });
        this.btnStop.setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.BikeActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m173lambda$onCreateBody$2$comjichibikecomputerBikeActivity(view);
            }
        });
        findViewById(com.jichi.ob.R.id.bc_rowStatus).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.BikeActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m174lambda$onCreateBody$3$comjichibikecomputerBikeActivity(view);
            }
        });
        findViewById(com.jichi.ob.R.id.bc_mainCard).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.BikeActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m175lambda$onCreateBody$4$comjichibikecomputerBikeActivity(view);
            }
        });
        Intent intent = new Intent(this, (Class<?>) BikeService.class);
        startService(intent);
        bindService(intent, this.conn, 1);
        findViewById(com.jichi.ob.R.id.bc_btnBack).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.BikeActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m176lambda$onCreateBody$5$comjichibikecomputerBikeActivity(view);
            }
        });
    }

    /* renamed from: lambda$onCreateBody$0$com-jichi-bikecomputer-BikeActivity, reason: not valid java name */
    /* synthetic */ void m171lambda$onCreateBody$0$comjichibikecomputerBikeActivity(View view) {
        sendAction(BikeService.ACTION_START);
    }

    /* renamed from: lambda$onCreateBody$1$com-jichi-bikecomputer-BikeActivity, reason: not valid java name */
    /* synthetic */ void m172lambda$onCreateBody$1$comjichibikecomputerBikeActivity(View view) {
        BikeService bikeService = this.service;
        if (bikeService != null && bikeService.getState() == 1) {
            sendAction(BikeService.ACTION_PAUSE);
        } else {
            sendAction(BikeService.ACTION_RESUME);
        }
    }

    /* renamed from: lambda$onCreateBody$2$com-jichi-bikecomputer-BikeActivity, reason: not valid java name */
    /* synthetic */ void m173lambda$onCreateBody$2$comjichibikecomputerBikeActivity(View view) {
        sendAction(BikeService.ACTION_STOP);
    }

    /* renamed from: lambda$onCreateBody$3$com-jichi-bikecomputer-BikeActivity, reason: not valid java name */
    /* synthetic */ void m174lambda$onCreateBody$3$comjichibikecomputerBikeActivity(View view) {
        startActivity(new Intent(this, (Class<?>) SensorActivity.class));
    }

    /* renamed from: lambda$onCreateBody$4$com-jichi-bikecomputer-BikeActivity, reason: not valid java name */
    /* synthetic */ void m175lambda$onCreateBody$4$comjichibikecomputerBikeActivity(View view) {
        Intent intent = new Intent(this, (Class<?>) DisplayActivity.class);
        intent.putExtra(BikeService.EXTRA_SPORT, this.sport);
        startActivity(intent);
    }

    /* renamed from: lambda$onCreateBody$5$com-jichi-bikecomputer-BikeActivity, reason: not valid java name */
    /* synthetic */ void m176lambda$onCreateBody$5$comjichibikecomputerBikeActivity(View view) {
        finish();
    }

    private void sendAction(String str) {
        Intent intent = new Intent(this, (Class<?>) BikeService.class);
        intent.setAction(str);
        intent.putExtra(BikeService.EXTRA_SPORT, this.sport);
        startService(intent);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.ui.post(this.ticker);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.ui.removeCallbacks(this.ticker);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        initMainMode();
        applyDisplayConfig();
        refresh();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.bound) {
            BikeService bikeService = this.service;
            if (bikeService != null) {
                bikeService.setListener(null);
            }
            unbindService(this.conn);
            this.bound = false;
        }
    }

    private static String[] validModes(SportType sportType) {
        return sportType == SportType.RUNNING ? new String[]{"pace", "hr", "speed"} : sportType == SportType.WALKING ? new String[]{"alt", "speed", "hr"} : new String[]{"speed", "power", "hr"};
    }

    private static String defaultMode(SportType sportType) {
        return sportType == SportType.RUNNING ? "pace" : sportType == SportType.WALKING ? "alt" : "speed";
    }

    private void initMainMode() {
        String mainDisplay = this.prefs.getMainDisplay();
        for (String str : validModes(this.sport)) {
            if (str.equals(mainDisplay)) {
                this.mainMode = str;
                return;
            }
        }
        this.mainMode = defaultMode(this.sport);
    }

    static String fmtPace(float f) {
        if (f <= 0.0f || Float.isNaN(f)) {
            return "--";
        }
        double d = 1000.0d / f;
        if (d > 3600.0d) {
            return "--";
        }
        int i = (int) (d / 60.0d);
        int iRound = (int) Math.round(d - (i * 60));
        if (iRound == 60) {
            i++;
            iRound = 0;
        }
        return String.format(Locale.US, "%d'%02d\"", Integer.valueOf(i), Integer.valueOf(iRound));
    }

    private void applyDisplayConfig() {
        boolean z = this.sport == SportType.RUNNING || this.sport == SportType.WALKING;
        if (this.sport == SportType.RUNNING || this.sport == SportType.WALKING) {
            this.blockPower.setVisibility(8);
        } else {
            this.blockPower.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_POWER) ? 0 : 8);
        }
        this.blockCad.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_CAD) ? 0 : 8);
        this.tvCadLabel.setText(z ? "步频 spm" : "踏频 rpm");
        boolean z2 = this.sport == SportType.RUNNING;
        this.tvAvgLabel.setText(z2 ? "均配" : "均速");
        this.tvMaxLabel.setText(z2 ? "最快" : "最大");
        this.rowTime.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_TIME) ? 0 : 8);
        this.blockHr.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_HR) ? 0 : 8);
        this.cardDist.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_DIST) ? 0 : 8);
        this.cardAscent.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_ASCENT) ? 0 : 8);
        this.itemGrade.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_GRADE) ? 0 : 8);
        this.itemAlt.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_ALT) ? 0 : 8);
        this.itemAvg.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_AVG) ? 0 : 8);
        this.itemMax.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_MAX) ? 0 : 8);
        this.itemBaro.setVisibility(this.prefs.isShow(PrefsManager.KEY_SHOW_BARO) ? 0 : 8);
        BikeService bikeService = this.service;
        if (bikeService == null) {
            return;
        }
        int iPower3s = bikeService.power3s();
        int iLastHeartRate = this.service.lastHeartRate();
        List<TrackPoint> points = this.service.getPoints();
        float f = !points.isEmpty() ? points.get(points.size() - 1).speed : 0.0f;
        double d = !points.isEmpty() ? points.get(points.size() - 1).alt : Double.NaN;
        if ("power".equals(this.mainMode)) {
            this.tvMain.setText(iPower3s > 0 ? String.valueOf(iPower3s) : "--");
            this.tvMainUnit.setText("W");
            this.tvMainLabel.setText("3秒功率 · 点击切换");
            return;
        }
        if ("hr".equals(this.mainMode)) {
            this.tvMain.setText(iLastHeartRate > 0 ? String.valueOf(iLastHeartRate) : "--");
            this.tvMainUnit.setText("bpm");
            this.tvMainLabel.setText("心率 · 点击切换");
        } else if ("pace".equals(this.mainMode)) {
            this.tvMain.setText(fmtPace(f));
            this.tvMainUnit.setText("/km");
            this.tvMainLabel.setText("配速 · 点击切换");
        } else if ("alt".equals(this.mainMode)) {
            this.tvMain.setText(Double.isNaN(d) ? "--" : String.format(Locale.US, "%.0f", Double.valueOf(d)));
            this.tvMainUnit.setText("m");
            this.tvMainLabel.setText("海拔 · 点击切换");
        } else {
            this.tvMain.setText(String.format(Locale.US, "%.1f", Float.valueOf(f * 3.6f)));
            this.tvMainUnit.setText("km/h");
            this.tvMainLabel.setText("速度 · 点击切换");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtons() {
        BikeService bikeService = this.service;
        int state = bikeService != null ? bikeService.getState() : 0;
        this.btnStart.setVisibility(state == 0 ? 0 : 8);
        this.btnPause.setVisibility(state == 0 ? 8 : 0);
        this.btnStop.setVisibility(state == 0 ? 8 : 0);
        if (state == 2) {
            this.btnPause.setText("继续");
        } else {
            this.btnPause.setText("暂停");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresh() {
        String str;
        BikeService bikeService = this.service;
        if (bikeService == null) {
            return;
        }
        TrackStats stats = bikeService.getStats();
        long jElapsedMs = this.service.elapsedMs();
        List<TrackPoint> points = this.service.getPoints();
        int state = this.service.getState();
        applyDisplayConfig();
        this.tvTime.setText(BikeService.fmtTime(jElapsedMs));
        this.tvTimeText.setText(BikeService.fmtTime(jElapsedMs));
        int iPower3s = this.service.power3s();
        int iLastHeartRate = this.service.lastHeartRate();
        int iRunCadence = (this.sport == SportType.RUNNING || this.sport == SportType.WALKING) ? this.service.runCadence() : this.service.lastCadence();
        this.tvPower.setText(iPower3s > 0 ? String.valueOf(iPower3s) : "--");
        this.tvHr.setText(iLastHeartRate > 0 ? String.valueOf(iLastHeartRate) : "--");
        this.tvCad.setText(iRunCadence > 0 ? String.valueOf(iRunCadence) : "--");
        this.tvDist.setText(BikeService.fmtKm(stats.distanceM));
        this.tvAscent.setText(String.format(Locale.US, "%.0fm", Double.valueOf(stats.ascentM)));
        double d = stats.distanceM;
        double d2 = Degrees.MIN_VALUE;
        this.tvGrade.setText(String.format(Locale.US, "%.1f%%", Double.valueOf(d > Degrees.MIN_VALUE ? (stats.ascentM / stats.distanceM) * 100.0d : 0.0d)));
        if (!points.isEmpty() && !Double.isNaN(points.get(points.size() - 1).alt)) {
            d2 = points.get(points.size() - 1).alt;
        }
        this.tvAlt.setText(String.format(Locale.US, "%.0fm", Double.valueOf(d2)));
        if (this.sport == SportType.RUNNING) {
            this.tvAvg.setText(fmtPace((float) stats.avgSpeedMs()));
            this.tvMax.setText(fmtPace(stats.maxSpeedMs));
        } else {
            this.tvAvg.setText(String.format(Locale.US, "%.1f", Double.valueOf(stats.avgSpeedMs() * 3.5999999046325684d)));
            this.tvMax.setText(String.format(Locale.US, "%.1f", Float.valueOf(stats.maxSpeedMs * 3.6f)));
        }
        double dBaroAltitude = this.service.baroAltitude();
        this.tvBaroAlt.setText(Double.isNaN(dBaroAltitude) ? "--" : String.format(Locale.US, "%.0fm", Double.valueOf(dBaroAltitude)));
        if (this.service.gpsFix()) {
            str = "定位中 · " + String.format(Locale.US, "%.0fm", Float.valueOf(this.service.gpsAccuracy()));
        } else {
            str = "等待定位…";
        }
        this.tvGpsState.setText(str);
        int i = -689152;
        this.tvGpsState.setTextColor(this.service.gpsFix() ? -11751600 : -689152);
        String strBaroStatus = this.service.baroStatus();
        this.tvBaro.setText(strBaroStatus);
        if ("气压计".equals(strBaroStatus)) {
            i = -11751600;
        } else if (!"气压计(等待数据)".equals(strBaroStatus)) {
            i = "气压计注册失败".equals(strBaroStatus) ? -3790808 : -6642769;
        }
        this.tvBaro.setTextColor(i);
        this.tvBle.setText(this.service.bleConnected() ? "传感器已连" : "传感器未连");
        this.tvBle.setTextColor(this.service.bleConnected() ? -11751600 : -6642769);
        if (state != 0) {
            this.trackView.setPoints(points);
        }
        updateButtons();
    }

    @Override // com.jichi.bikecomputer.BikeService.Listener
    public void onTick() {
        refresh();
    }

    @Override // com.jichi.bikecomputer.BikeService.Listener
    public void onFinished(final File file, final File file2, TrackStats trackStats) {
        updateButtons();
        TrackPreviewView trackPreviewView = this.trackView;
        BikeService bikeService = this.service;
        trackPreviewView.setPoints(bikeService != null ? bikeService.getPoints() : null);
        if (file == null && file2 == null) {
            new AlertDialog.Builder(this).setTitle("记录完成").setMessage("轨迹点数不足（少于2个有效点），未导出文件").setPositiveButton("好的", (DialogInterface.OnClickListener) null).show();
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (trackStats != null) {
            sb.append("距离 ");
            sb.append(BikeService.fmtKm(trackStats.distanceM));
            sb.append(" · 时长 ");
            sb.append(BikeService.fmtTime(trackStats.durationMs));
            sb.append("\n爬升 ");
            sb.append(String.format(Locale.US, "%.0f", Double.valueOf(trackStats.ascentM)));
            sb.append("m · ");
            if (this.sport == SportType.RUNNING) {
                sb.append("均配 ");
                sb.append(fmtPace((float) trackStats.avgSpeedMs()));
                sb.append("/km\n");
            } else {
                sb.append("均速 ");
                sb.append(String.format(Locale.US, "%.1f", Double.valueOf(trackStats.avgSpeedMs() * 3.6d)));
                sb.append("km/h\n");
            }
        }
        if (file != null) {
            sb.append("FIT: ");
            sb.append(file.getName());
            sb.append('\n');
        }
        if (file2 != null) {
            sb.append("GPX: ");
            sb.append(file2.getName());
        }
        new AlertDialog.Builder(this).setTitle("记录完成 · " + this.sport.label).setMessage(sb.toString().trim()).setPositiveButton("分享文件", new DialogInterface.OnClickListener() { // from class: com.jichi.bikecomputer.BikeActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                m177lambda$onFinished$6$comjichibikecomputerBikeActivity(file, file2, dialogInterface, i);
            }
        }).setNegativeButton("关闭", (DialogInterface.OnClickListener) null).show();
    }

    /* renamed from: lambda$onFinished$6$com-jichi-bikecomputer-BikeActivity, reason: not valid java name */
    /* synthetic */ void m177lambda$onFinished$6$comjichibikecomputerBikeActivity(File file, File file2, DialogInterface dialogInterface, int i) {
        shareFiles(file, file2);
    }

    private void shareFiles(File file, File file2) {
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.setType("application/octet-stream");
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (file != null) {
            arrayList.add(FileProvider.getUriForFile(this, "com.jichi.bikecomputer.fileprovider", file));
        }
        if (file2 != null) {
            arrayList.add(FileProvider.getUriForFile(this, "com.jichi.bikecomputer.fileprovider", file2));
        }
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        intent.addFlags(1);
        try {
            startActivity(Intent.createChooser(intent, "分享轨迹文件"));
        } catch (Exception unused) {
            Toast.makeText(this, "无可用分享应用", 0).show();
        }
    }
}

package com.jichi.bikecomputer;

import com.jichi.ob.R;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.jichi.bikecomputer.sensor.BleSensors;
import com.jichi.bikecomputer.store.PrefsManager;
import com.jichi.bikecomputer.util.NightContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public class SensorActivity extends Activity {
    private static final int REQ_BT = 2001;
    private BleSensors ble;
    private ScannedAdapter listAdapter;
    private PrefsManager prefs;
    private final Map<String, TextView> devViews = new HashMap();
    private final Map<String, TextView> stateViews = new HashMap();
    private final Map<String, TextView> unbindViews = new HashMap();
    private final List<ScannedItem> scanned = new ArrayList();
    private final Set<String> scannedMacs = new HashSet();

    private static class ScannedItem {
        String mac;
        String name;
        int rssi;
        BleSensors.DeviceType type;

        ScannedItem(String str, String str2, BleSensors.DeviceType deviceType, int i) {
            this.name = str;
            this.mac = str2;
            this.type = deviceType;
            this.rssi = i;
        }
    }

    private class ScannedAdapter extends BaseAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        private ScannedAdapter() {
        }

        /* synthetic */ ScannedAdapter(SensorActivity sensorActivity, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return SensorActivity.this.scanned.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return SensorActivity.this.scanned.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            String str;
            if (view == null) {
                view = LayoutInflater.from(SensorActivity.this).inflate(com.jichi.ob.R.layout.bc_item_scanned_device, viewGroup, false);
            }
            ScannedItem scannedItem = (ScannedItem) SensorActivity.this.scanned.get(i);
            TextView textView = (TextView) view.findViewById(com.jichi.ob.R.id.bc_tvDevName);
            TextView textView2 = (TextView) view.findViewById(com.jichi.ob.R.id.bc_tvDevType);
            TextView textView3 = (TextView) view.findViewById(com.jichi.ob.R.id.bc_tvDevMac);
            TextView textView4 = (TextView) view.findViewById(com.jichi.ob.R.id.bc_tvDevRssi);
            String str2 = scannedItem.name;
            String strBoundTypeOf = SensorActivity.this.boundTypeOf(scannedItem.mac);
            textView.setText(str2);
            if (scannedItem.type == BleSensors.DeviceType.UNKNOWN) {
                str = "未知设备";
            } else {
                str = scannedItem.type.label;
            }
            textView2.setText(str);
            if (strBoundTypeOf != null) {
                textView.setText(str2 + "（已绑定" + strBoundTypeOf + "）");
                textView2.setText("已绑定");
            }
            textView3.setText(scannedItem.mac);
            textView4.setText(scannedItem.rssi + " dBm");
            boolean z = scannedItem.rssi < -95;
            textView.setTextColor(z ? -6642769 : -14999255);
            textView3.setTextColor(z ? -6642769 : -9735552);
            return view;
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(NightContext.apply(context));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.jichi.ob.R.layout.bc_activity_sensor);
        this.prefs = new PrefsManager(this);
        BleSensors bleSensors = new BleSensors(this);
        this.ble = bleSensors;
        bleSensors.setCallback(new AnonymousClass1());
        findViewById(com.jichi.ob.R.id.bc_btnBack).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.SensorActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m201lambda$onCreate$0$comjichibikecomputerSensorActivity(view);
            }
        });
        findViewById(com.jichi.ob.R.id.bc_btnScan).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.SensorActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m202lambda$onCreate$1$comjichibikecomputerSensorActivity(view);
            }
        });
        this.devViews.put("HEART_RATE", (TextView) findViewById(com.jichi.ob.R.id.bc_tvHeartDev));
        this.devViews.put("POWER", (TextView) findViewById(com.jichi.ob.R.id.bc_tvPowerDev));
        this.devViews.put("CADENCE", (TextView) findViewById(com.jichi.ob.R.id.bc_tvCadDev));
        this.devViews.put("SPEED", (TextView) findViewById(com.jichi.ob.R.id.bc_tvSpeedDev));
        this.devViews.put("CADENCE_RUN", (TextView) findViewById(com.jichi.ob.R.id.bc_tvCadRunDev));
        this.stateViews.put("HEART_RATE", (TextView) findViewById(com.jichi.ob.R.id.bc_tvHeartState));
        this.stateViews.put("POWER", (TextView) findViewById(com.jichi.ob.R.id.bc_tvPowerState));
        this.stateViews.put("CADENCE", (TextView) findViewById(com.jichi.ob.R.id.bc_tvCadState));
        this.stateViews.put("SPEED", (TextView) findViewById(com.jichi.ob.R.id.bc_tvSpeedState));
        this.stateViews.put("CADENCE_RUN", (TextView) findViewById(com.jichi.ob.R.id.bc_tvCadRunState));
        this.unbindViews.put("HEART_RATE", (TextView) findViewById(com.jichi.ob.R.id.bc_btnHeartUnbind));
        this.unbindViews.put("POWER", (TextView) findViewById(com.jichi.ob.R.id.bc_btnPowerUnbind));
        this.unbindViews.put("CADENCE", (TextView) findViewById(com.jichi.ob.R.id.bc_btnCadUnbind));
        this.unbindViews.put("SPEED", (TextView) findViewById(com.jichi.ob.R.id.bc_btnSpeedUnbind));
        this.unbindViews.put("CADENCE_RUN", (TextView) findViewById(com.jichi.ob.R.id.bc_btnCadRunUnbind));
        String[] strArr = {"HEART_RATE", "POWER", "CADENCE", "SPEED", "CADENCE_RUN"};
        for (int i = 0; i < 5; i++) {
            final String str = strArr[i];
            this.unbindViews.get(str).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.SensorActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    m203lambda$onCreate$2$comjichibikecomputerSensorActivity(str, view);
                }
            });
        }
        this.listAdapter = new ScannedAdapter(this, null);
        ListView listView = (ListView) findViewById(com.jichi.ob.R.id.bc_listScanned);
        listView.setAdapter((ListAdapter) this.listAdapter);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.jichi.bikecomputer.SensorActivity$$ExternalSyntheticLambda3
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                m204lambda$onCreate$3$comjichibikecomputerSensorActivity(adapterView, view, i2, j);
            }
        });
        refreshBinds();
    }

    /* renamed from: com.jichi.bikecomputer.SensorActivity$1, reason: invalid class name */
    class AnonymousClass1 implements BleSensors.Callback {
        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onCadence(int i) {
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onHeartRate(int i) {
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onPower(int i) {
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onRunCadence(int i) {
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onWheelSpeed(float f) {
        }

        AnonymousClass1() {
        }

        /* renamed from: lambda$onScannedDevice$0$com-jichi-bikecomputer-SensorActivity$1, reason: not valid java name */
        /* synthetic */ void m206lambda$onScannedDevice$0$comjichibikecomputerSensorActivity$1(String str, String str2, BleSensors.DeviceType deviceType, int i) {
            SensorActivity.this.addScanned(str, str2, deviceType, i);
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onScannedDevice(final String str, final String str2, final BleSensors.DeviceType deviceType, final int i) {
            SensorActivity.this.runOnUiThread(new Runnable() { // from class: com.jichi.bikecomputer.SensorActivity$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    m206lambda$onScannedDevice$0$comjichibikecomputerSensorActivity$1(str, str2, deviceType, i);
                }
            });
        }

        @Override // com.jichi.bikecomputer.sensor.BleSensors.Callback
        public void onSensorStatus(String str, final String str2) {
            SensorActivity.this.runOnUiThread(new Runnable() { // from class: com.jichi.bikecomputer.SensorActivity$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    m207lambda$onSensorStatus$1$comjichibikecomputerSensorActivity$1(str2);
                }
            });
        }

        /* renamed from: lambda$onSensorStatus$1$com-jichi-bikecomputer-SensorActivity$1, reason: not valid java name */
        /* synthetic */ void m207lambda$onSensorStatus$1$comjichibikecomputerSensorActivity$1(String str) {
            if (str != null && !str.isEmpty()) {
                Toast.makeText(SensorActivity.this, str, 0).show();
            }
            SensorActivity.this.refreshBinds();
        }
    }

    /* renamed from: lambda$onCreate$0$com-jichi-bikecomputer-SensorActivity, reason: not valid java name */
    /* synthetic */ void m201lambda$onCreate$0$comjichibikecomputerSensorActivity(View view) {
        finish();
    }

    /* renamed from: lambda$onCreate$1$com-jichi-bikecomputer-SensorActivity, reason: not valid java name */
    /* synthetic */ void m202lambda$onCreate$1$comjichibikecomputerSensorActivity(View view) {
        startScanning();
    }

    /* renamed from: lambda$onCreate$2$com-jichi-bikecomputer-SensorActivity, reason: not valid java name */
    /* synthetic */ void m203lambda$onCreate$2$comjichibikecomputerSensorActivity(String str, View view) {
        this.prefs.unbindSensor(str);
        this.ble.forget(this.prefs.getBoundMac(str));
        refreshBinds();
    }

    /* renamed from: lambda$onCreate$3$com-jichi-bikecomputer-SensorActivity, reason: not valid java name */
    /* synthetic */ void m204lambda$onCreate$3$comjichibikecomputerSensorActivity(AdapterView adapterView, View view, int i, long j) {
        if (i >= this.scanned.size()) {
            return;
        }
        ScannedItem scannedItem = this.scanned.get(i);
        promptType(scannedItem.mac, scannedItem.name, scannedItem.type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String boundTypeOf(String str) {
        String[] strArr = {"HEART_RATE", "POWER", "CADENCE", "SPEED", "CADENCE_RUN"};
        for (int i = 0; i < 5; i++) {
            String str2 = strArr[i];
            if (str.equals(this.prefs.getBoundMac(str2))) {
                return BleSensors.DeviceType.valueOf(str2).label;
            }
        }
        return null;
    }

    private void startScanning() {
        if (Build.VERSION.SDK_INT >= 31 && checkSelfPermission("android.permission.BLUETOOTH_SCAN") != 0) {
            requestPermissions(new String[]{"android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT"}, REQ_BT);
            return;
        }
        this.scanned.clear();
        this.scannedMacs.clear();
        this.listAdapter.notifyDataSetChanged();
        this.ble.startScan();
        Toast.makeText(this, "扫描中…", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addScanned(String str, String str2, BleSensors.DeviceType deviceType, int i) {
        if (this.scannedMacs.contains(str2)) {
            Iterator<ScannedItem> it = this.scanned.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ScannedItem next = it.next();
                if (next.mac.equals(str2)) {
                    next.rssi = i;
                    if (next.type == BleSensors.DeviceType.UNKNOWN) {
                        next.type = deviceType;
                    }
                }
            }
            this.listAdapter.notifyDataSetChanged();
            return;
        }
        this.scannedMacs.add(str2);
        this.scanned.add(new ScannedItem(str, str2, deviceType, i));
        this.listAdapter.notifyDataSetChanged();
    }

    private void promptType(final String str, final String str2, BleSensors.DeviceType deviceType) {
        // jadx 坏代码修复：deviceType==HEART_RATE 时原体不给 i 赋值；smali 原意为默认 0。
        int i = 0;
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        String[] strArr = {"HEART_RATE", "POWER", "CADENCE", "SPEED", "CADENCE_RUN"};
        if (deviceType != BleSensors.DeviceType.HEART_RATE) {
            if (deviceType == BleSensors.DeviceType.POWER) {
                i = 1;
            } else if (deviceType == BleSensors.DeviceType.CADENCE || deviceType == BleSensors.DeviceType.SPEED) {
                i = 2;
            } else {
                i = deviceType == BleSensors.DeviceType.CADENCE_RUN ? 4 : 0;
            }
        }
        for (int i2 = 0; i2 < 5; i2++) {
            String str3 = strArr[i2];
            String str4 = BleSensors.DeviceType.valueOf(str3).label;
            String boundMac = this.prefs.getBoundMac(str3);
            if (boundMac != null) {
                str4 = boundMac.equals(str) ? str4 + "（已绑定当前设备）" : str4 + "（替换 " + boundMac + "）";
            }
            arrayList.add(str4);
            arrayList2.add(str3);
        }
        new AlertDialog.Builder(this).setTitle("绑定为：" + str2).setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i, new DialogInterface.OnClickListener() { // from class: com.jichi.bikecomputer.SensorActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                m205lambda$promptType$4$comjichibikecomputerSensorActivity(arrayList2, str, str2, dialogInterface, i3);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
    }

    /* renamed from: lambda$promptType$4$com-jichi-bikecomputer-SensorActivity, reason: not valid java name */
    /* synthetic */ void m205lambda$promptType$4$comjichibikecomputerSensorActivity(List list, String str, String str2, DialogInterface dialogInterface, int i) {
        String str3 = (String) list.get(i);
        this.prefs.bindSensor(str3, str);
        this.ble.connect(str, BleSensors.DeviceType.valueOf(str3));
        Toast.makeText(this, "正在连接 " + str2 + "…", 0).show();
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshBinds() {
        String[] strArr = {"HEART_RATE", "POWER", "CADENCE", "SPEED", "CADENCE_RUN"};
        for (int i = 0; i < 5; i++) {
            String str = strArr[i];
            String boundMac = this.prefs.getBoundMac(str);
            TextView textView = this.devViews.get(str);
            TextView textView2 = this.stateViews.get(str);
            TextView textView3 = this.unbindViews.get(str);
            if (boundMac == null) {
                textView.setText("未绑定");
                textView2.setText("—");
                textView3.setVisibility(8);
            } else {
                textView.setText(this.ble.nameOf(boundMac));
                if (this.ble.isConnected(boundMac)) {
                    textView2.setText("已连接");
                    textView2.setTextColor(-11751600);
                } else {
                    textView2.setText("未连接");
                    textView2.setTextColor(-689152);
                }
                textView3.setVisibility(0);
            }
        }
        ScannedAdapter scannedAdapter = this.listAdapter;
        if (scannedAdapter != null) {
            scannedAdapter.notifyDataSetChanged();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.ble.stop();
    }
}

package com.jichi.bikecomputer;

import com.jichi.ob.R;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.jichi.bikecomputer.model.SportType;
import com.jichi.bikecomputer.util.NightContext;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class MainActivity extends Activity {
    private static final int REQ_BODY = 1002;
    private static final int REQ_PERMS = 1001;
    private SportType selected = SportType.CYCLING;
    private final TextView[] cards = new TextView[3];
    private final SportType[] types = {SportType.CYCLING, SportType.RUNNING, SportType.WALKING};

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(NightContext.apply(context));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.jichi.ob.R.layout.bc_activity_main);
        this.cards[0] = (TextView) findViewById(com.jichi.ob.R.id.bc_cardCycling);
        this.cards[1] = (TextView) findViewById(com.jichi.ob.R.id.bc_cardRunning);
        this.cards[2] = (TextView) findViewById(com.jichi.ob.R.id.bc_cardWalking);
        for (final int i = 0; i < 3; i++) {
            this.cards[i].setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.MainActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    m194lambda$onCreate$0$comjichibikecomputerMainActivity(i, view);
                }
            });
        }
        select(0);
        findViewById(com.jichi.ob.R.id.bc_btnGo).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.MainActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m195lambda$onCreate$1$comjichibikecomputerMainActivity(view);
            }
        });
        findViewById(com.jichi.ob.R.id.bc_btnHistory).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.MainActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m196lambda$onCreate$2$comjichibikecomputerMainActivity(view);
            }
        });
        findViewById(com.jichi.ob.R.id.bc_btnSensors).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m197lambda$onCreate$3$comjichibikecomputerMainActivity(view);
            }
        });
        findViewById(com.jichi.ob.R.id.bc_btnDisplay).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.MainActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m198lambda$onCreate$4$comjichibikecomputerMainActivity(view);
            }
        });
    }

    /* renamed from: lambda$onCreate$0$com-jichi-bikecomputer-MainActivity, reason: not valid java name */
    /* synthetic */ void m194lambda$onCreate$0$comjichibikecomputerMainActivity(int i, View view) {
        select(i);
    }

    /* renamed from: lambda$onCreate$1$com-jichi-bikecomputer-MainActivity, reason: not valid java name */
    /* synthetic */ void m195lambda$onCreate$1$comjichibikecomputerMainActivity(View view) {
        checkAndGo();
    }

    /* renamed from: lambda$onCreate$2$com-jichi-bikecomputer-MainActivity, reason: not valid java name */
    /* synthetic */ void m196lambda$onCreate$2$comjichibikecomputerMainActivity(View view) {
        openHistory();
    }

    /* renamed from: lambda$onCreate$3$com-jichi-bikecomputer-MainActivity, reason: not valid java name */
    /* synthetic */ void m197lambda$onCreate$3$comjichibikecomputerMainActivity(View view) {
        startActivity(new Intent(this, (Class<?>) SensorActivity.class));
    }

    /* renamed from: lambda$onCreate$4$com-jichi-bikecomputer-MainActivity, reason: not valid java name */
    /* synthetic */ void m198lambda$onCreate$4$comjichibikecomputerMainActivity(View view) {
        startActivity(new Intent(this, (Class<?>) DisplayActivity.class));
    }

    private void select(int i) {
        this.selected = this.types[i];
        int i2 = 0;
        while (i2 < 3) {
            boolean z = i2 == i;
            this.cards[i2].setSelected(z);
            this.cards[i2].setBackgroundResource(z ? com.jichi.ob.R.drawable.bc_bg_sport_selected : com.jichi.ob.R.drawable.bc_bg_sport_normal);
            i2++;
        }
    }

    private void checkAndGo() {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add("android.permission.ACCESS_FINE_LOCATION");
        arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
        if (Build.VERSION.SDK_INT >= 33) {
            arrayList.add("android.permission.POST_NOTIFICATIONS");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            arrayList.add("android.permission.BLUETOOTH_SCAN");
            arrayList.add("android.permission.BLUETOOTH_CONNECT");
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : arrayList) {
            if (checkSelfPermission(str) != 0) {
                arrayList2.add(str);
            }
        }
        if (arrayList2.isEmpty()) {
            requestBodySensors();
        } else {
            requestPermissions((String[]) arrayList2.toArray(new String[0]), 1001);
        }
    }

    private void requestBodySensors() {
        if (Build.VERSION.SDK_INT >= 31 && checkSelfPermission("android.permission.BODY_SENSORS") != 0) {
            requestPermissions(new String[]{"android.permission.BODY_SENSORS"}, 1002);
        } else {
            enterBike();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1001) {
            if (checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) {
                Toast.makeText(this, "需要定位权限才能记录轨迹", 1).show();
                return;
            } else {
                requestBodySensors();
                return;
            }
        }
        if (i == 1002) {
            if (Build.VERSION.SDK_INT >= 31 && checkSelfPermission("android.permission.BODY_SENSORS") != 0) {
                new AlertDialog.Builder(this).setTitle("身体传感器未授权").setMessage("心率/步频设备将无法显示。可在系统设置→应用→权限中开启（部分系统未提供该权限项时，可忽略，仅心率/步频不可用，其余功能正常）").setPositiveButton("去系统设置", new DialogInterface.OnClickListener() { // from class: com.jichi.bikecomputer.MainActivity$$ExternalSyntheticLambda5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        m199x56c4e900(dialogInterface, i2);
                    }
                }).setNegativeButton("继续", new DialogInterface.OnClickListener() { // from class: com.jichi.bikecomputer.MainActivity$$ExternalSyntheticLambda6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        m200x6a6cbc81(dialogInterface, i2);
                    }
                }).setCancelable(false).show();
            } else {
                enterBike();
            }
        }
    }

    /* renamed from: lambda$onRequestPermissionsResult$5$com-jichi-bikecomputer-MainActivity, reason: not valid java name */
    /* synthetic */ void m199x56c4e900(DialogInterface dialogInterface, int i) {
        try {
            startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", getPackageName(), null)));
        } catch (Throwable unused) {
        }
    }

    /* renamed from: lambda$onRequestPermissionsResult$6$com-jichi-bikecomputer-MainActivity, reason: not valid java name */
    /* synthetic */ void m200x6a6cbc81(DialogInterface dialogInterface, int i) {
        enterBike();
    }

    private void enterBike() {
        Intent intent = new Intent(this, (Class<?>) BikeActivity.class);
        intent.putExtra(BikeService.EXTRA_SPORT, this.selected);
        startActivity(intent);
    }

    private void openHistory() {
        startActivity(new Intent(this, (Class<?>) HistoryActivity.class));
    }
}

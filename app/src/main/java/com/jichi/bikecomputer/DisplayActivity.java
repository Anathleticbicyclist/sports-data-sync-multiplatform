package com.jichi.bikecomputer;

import com.jichi.ob.R;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.jichi.bikecomputer.model.SportType;
import com.jichi.bikecomputer.store.PrefsManager;
import com.jichi.bikecomputer.util.NightContext;
import java.util.Locale;

/* loaded from: classes4.dex */
public class DisplayActivity extends Activity {
    private PrefsManager prefs;
    private final TextView[] opts = new TextView[5];
    private final String[] optKeys = {"speed", "power", "hr", "pace", "alt"};
    private SportType sport = SportType.CYCLING;

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(NightContext.apply(context));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.jichi.ob.R.layout.bc_activity_display);
        this.prefs = new PrefsManager(this);
        SportType sportType = (SportType) getIntent().getSerializableExtra(BikeService.EXTRA_SPORT);
        if (sportType != null) {
            this.sport = sportType;
        }
        this.opts[0] = (TextView) findViewById(com.jichi.ob.R.id.bc_optSpeed);
        this.opts[1] = (TextView) findViewById(com.jichi.ob.R.id.bc_optPower);
        this.opts[2] = (TextView) findViewById(com.jichi.ob.R.id.bc_optHr);
        this.opts[3] = (TextView) findViewById(com.jichi.ob.R.id.bc_optPace);
        this.opts[4] = (TextView) findViewById(com.jichi.ob.R.id.bc_optAlt);
        for (int i = 0; i < 5; i++) {
            this.opts[i].setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.DisplayActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    m186lambda$onCreate$0$comjichibikecomputerDisplayActivity(i, view);
                }
            });
        }
        if (this.sport == SportType.RUNNING) {
            this.opts[1].setVisibility(8);
            this.opts[4].setVisibility(8);
        } else if (this.sport == SportType.WALKING) {
            this.opts[1].setVisibility(8);
            this.opts[3].setVisibility(8);
        } else {
            this.opts[3].setVisibility(8);
            this.opts[4].setVisibility(8);
        }
        selectMain(indexOf(this.prefs.getMainDisplay()));
        bindSwitch(com.jichi.ob.R.id.bc_swTime, PrefsManager.KEY_SHOW_TIME);
        bindSwitch(com.jichi.ob.R.id.bc_swPower, PrefsManager.KEY_SHOW_POWER);
        bindSwitch(com.jichi.ob.R.id.bc_swHr, PrefsManager.KEY_SHOW_HR);
        bindSwitch(com.jichi.ob.R.id.bc_swCad, PrefsManager.KEY_SHOW_CAD);
        bindSwitch(com.jichi.ob.R.id.bc_swDist, PrefsManager.KEY_SHOW_DIST);
        bindSwitch(com.jichi.ob.R.id.bc_swAscent, PrefsManager.KEY_SHOW_ASCENT);
        bindSwitch(com.jichi.ob.R.id.bc_swGrade, PrefsManager.KEY_SHOW_GRADE);
        bindSwitch(com.jichi.ob.R.id.bc_swAlt, PrefsManager.KEY_SHOW_ALT);
        bindSwitch(com.jichi.ob.R.id.bc_swAvg, PrefsManager.KEY_SHOW_AVG);
        bindSwitch(com.jichi.ob.R.id.bc_swMax, PrefsManager.KEY_SHOW_MAX);
        bindSwitch(com.jichi.ob.R.id.bc_swBaro, PrefsManager.KEY_SHOW_BARO);
        final EditText editText = (EditText) findViewById(com.jichi.ob.R.id.bc_edtWheel);
        editText.setText(String.format(Locale.US, "%.3f", Double.valueOf(this.prefs.getWheelCircumference())));
        findViewById(com.jichi.ob.R.id.bc_btnSaveWheel).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.DisplayActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NumberFormatException {
                m187lambda$onCreate$1$comjichibikecomputerDisplayActivity(editText, view);
            }
        });
        findViewById(com.jichi.ob.R.id.bc_btnBack).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.DisplayActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m188lambda$onCreate$2$comjichibikecomputerDisplayActivity(view);
            }
        });
    }

    /* renamed from: lambda$onCreate$0$com-jichi-bikecomputer-DisplayActivity, reason: not valid java name */
    /* synthetic */ void m186lambda$onCreate$0$comjichibikecomputerDisplayActivity(int i, View view) {
        selectMain(i);
    }

    /* renamed from: lambda$onCreate$1$com-jichi-bikecomputer-DisplayActivity, reason: not valid java name */
    /* synthetic */ void m187lambda$onCreate$1$comjichibikecomputerDisplayActivity(EditText editText, View view) throws NumberFormatException {
        String strTrim = editText.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            return;
        }
        try {
            double d = Double.parseDouble(strTrim);
            if (d < 1.0d || d > 3.0d) {
                Toast.makeText(this, "轮周长需在 1.0~3.0m 之间", 0).show();
            } else {
                this.prefs.setWheelCircumference(d);
                Toast.makeText(this, "轮周长已保存：" + String.format(Locale.US, "%.3fm", Double.valueOf(d)), 0).show();
            }
        } catch (NumberFormatException unused) {
            Toast.makeText(this, "请输入有效数字", 0).show();
        }
    }

    /* renamed from: lambda$onCreate$2$com-jichi-bikecomputer-DisplayActivity, reason: not valid java name */
    /* synthetic */ void m188lambda$onCreate$2$comjichibikecomputerDisplayActivity(View view) {
        finish();
    }

    private int indexOf(String str) {
        for (int i = 0; i < 5; i++) {
            if (this.optKeys[i].equals(str)) {
                return i;
            }
        }
        return 0;
    }

    private void selectMain(int i) {
        this.prefs.setMainDisplay(this.optKeys[i]);
        int i2 = 0;
        while (i2 < 5) {
            if (this.opts[i2].getVisibility() == 0) {
                this.opts[i2].setBackgroundResource(i2 == i ? com.jichi.ob.R.drawable.bc_bg_sport_selected : com.jichi.ob.R.drawable.bc_bg_sport_normal);
            }
            i2++;
        }
    }

    private void bindSwitch(int i, final String str) {
        Switch r2 = (Switch) findViewById(i);
        r2.setChecked(this.prefs.isShow(str));
        r2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.jichi.bikecomputer.DisplayActivity$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                m185lambda$bindSwitch$3$comjichibikecomputerDisplayActivity(str, compoundButton, z);
            }
        });
    }

    /* renamed from: lambda$bindSwitch$3$com-jichi-bikecomputer-DisplayActivity, reason: not valid java name */
    /* synthetic */ void m185lambda$bindSwitch$3$comjichibikecomputerDisplayActivity(String str, CompoundButton compoundButton, boolean z) {
        this.prefs.setShow(str, z);
    }
}

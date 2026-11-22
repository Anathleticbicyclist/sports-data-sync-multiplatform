package com.jichi.bikecomputer;

import com.jichi.ob.R;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.jichi.bikecomputer.export.FitExporter;
import com.jichi.bikecomputer.export.GpxExporter;
import com.jichi.bikecomputer.model.SportType;
import com.jichi.bikecomputer.model.TrackPoint;
import com.jichi.bikecomputer.model.TrackStats;
import com.jichi.bikecomputer.store.TrackStore;
import com.jichi.bikecomputer.util.NightContext;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.ToLongFunction;

/* loaded from: classes4.dex */
public class HistoryActivity extends Activity {
    private ArrayAdapter<String> adapter;
    private ListView list;
    private final List<File> exports = new ArrayList();
    private final List<File> unfinished = new ArrayList();

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(NightContext.apply(context));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.jichi.ob.R.layout.bc_activity_history);
        this.list = (ListView) findViewById(com.jichi.ob.R.id.bc_listHistory);
        findViewById(com.jichi.ob.R.id.bc_btnBack).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.HistoryActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m189lambda$onCreate$0$comjichibikecomputerHistoryActivity(view);
            }
        });
        findViewById(com.jichi.ob.R.id.bc_btnResume).setOnClickListener(new View.OnClickListener() { // from class: com.jichi.bikecomputer.HistoryActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m190lambda$onCreate$1$comjichibikecomputerHistoryActivity(view);
            }
        });
        scan();
    }

    /* renamed from: lambda$onCreate$0$com-jichi-bikecomputer-HistoryActivity, reason: not valid java name */
    /* synthetic */ void m189lambda$onCreate$0$comjichibikecomputerHistoryActivity(View view) {
        finish();
    }

    /* renamed from: lambda$onCreate$1$com-jichi-bikecomputer-HistoryActivity, reason: not valid java name */
    /* synthetic */ void m190lambda$onCreate$1$comjichibikecomputerHistoryActivity(View view) {
        resumeLast();
    }

    private void scan() {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        this.exports.clear();
        this.unfinished.clear();
        File file = new File(getFilesDir(), "exports");
        if (file.exists() && (fileArrListFiles2 = file.listFiles()) != null) {
            ArrayList arrayList = new ArrayList(Arrays.asList(fileArrListFiles2));
            arrayList.sort(Comparator.comparingLong(new ToLongFunction() { // from class: com.jichi.bikecomputer.HistoryActivity$$ExternalSyntheticLambda0
                @Override // java.util.function.ToLongFunction
                public final long applyAsLong(Object obj) {
                    return ((File) obj).lastModified();
                }
            }).reversed());
            this.exports.addAll(arrayList);
        }
        File file2 = new File(getFilesDir(), "records");
        if (file2.exists() && (fileArrListFiles = file2.listFiles()) != null) {
            for (File file3 : fileArrListFiles) {
                File[] fileArrListFiles3 = file3.listFiles();
                if (fileArrListFiles3 != null) {
                    this.unfinished.addAll(Arrays.asList(fileArrListFiles3));
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<File> it = this.exports.iterator();
        while (it.hasNext()) {
            arrayList2.add("已导出 · " + it.next().getName());
        }
        Iterator<File> it2 = this.unfinished.iterator();
        while (it2.hasNext()) {
            arrayList2.add("未完成记录 · " + it2.next().getName() + "（可恢复）");
        }
        if (arrayList2.isEmpty()) {
            arrayList2.add("暂无记录");
        }
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, arrayList2);
        this.adapter = arrayAdapter;
        this.list.setAdapter((ListAdapter) arrayAdapter);
        this.list.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.jichi.bikecomputer.HistoryActivity$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                m193lambda$scan$4$comjichibikecomputerHistoryActivity(adapterView, view, i, j);
            }
        });
    }

    /* renamed from: lambda$scan$4$com-jichi-bikecomputer-HistoryActivity, reason: not valid java name */
    /* synthetic */ void m193lambda$scan$4$comjichibikecomputerHistoryActivity(AdapterView adapterView, View view, int i, long j) {
        if (i < this.exports.size()) {
            shareFile(this.exports.get(i));
            return;
        }
        if (i < this.exports.size() + this.unfinished.size()) {
            final File file = this.unfinished.get(i - this.exports.size());
            new AlertDialog.Builder(this).setTitle("未完成记录").setMessage(file.getName() + "\n可直接导出为 FIT/GPX，或删除。").setPositiveButton("导出", new DialogInterface.OnClickListener() { // from class: com.jichi.bikecomputer.HistoryActivity$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    // 修复：OnClickListener 未声明受检异常，override 不能写 throws；导出失败时按原意吞掉。
                    try {
                        m191lambda$scan$2$comjichibikecomputerHistoryActivity(file, dialogInterface, i2);
                    } catch (IOException ignored) {
                    }
                }
            }).setNegativeButton("删除", new DialogInterface.OnClickListener() { // from class: com.jichi.bikecomputer.HistoryActivity$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    m192lambda$scan$3$comjichibikecomputerHistoryActivity(file, dialogInterface, i2);
                }
            }).show();
        }
    }

    /* renamed from: lambda$scan$2$com-jichi-bikecomputer-HistoryActivity, reason: not valid java name */
    /* synthetic */ void m191lambda$scan$2$comjichibikecomputerHistoryActivity(File file, DialogInterface dialogInterface, int i) throws IOException {
        exportUnfinished(file);
    }

    /* renamed from: lambda$scan$3$com-jichi-bikecomputer-HistoryActivity, reason: not valid java name */
    /* synthetic */ void m192lambda$scan$3$comjichibikecomputerHistoryActivity(File file, DialogInterface dialogInterface, int i) {
        file.delete();
        scan();
    }

    private void exportUnfinished(File file) throws IOException {
        List<TrackPoint> all = TrackStore.readAll(file);
        if (all.size() < 2) {
            Toast.makeText(this, "有效点不足，无法导出", 0).show();
            return;
        }
        String strReplace = file.getName().replace("_track.json", "");
        File file2 = new File(getFilesDir(), "exports");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        File file3 = new File(file2, strReplace + "_recovered.fit");
        File file4 = new File(file2, strReplace + "_recovered.gpx");
        TrackStats trackStatsFromPoints = TrackStats.fromPoints(all);
        long j = all.get(0).timestamp;
        boolean zExport = FitExporter.export(all, SportType.CYCLING, j, trackStatsFromPoints, file3.getAbsolutePath());
        boolean zExport2 = GpxExporter.export(all, SportType.CYCLING, j, file4.getAbsolutePath());
        if (zExport || zExport2) {
            StringBuilder sb = new StringBuilder("已导出 ");
            sb.append(zExport ? "FIT " : "");
            sb.append(zExport2 ? "GPX" : "");
            Toast.makeText(this, sb.toString(), 0).show();
            file.delete();
            scan();
            return;
        }
        Toast.makeText(this, "导出失败", 0).show();
    }

    private void shareFile(File file) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/octet-stream");
        intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(this, "com.jichi.bikecomputer.fileprovider", file));
        intent.addFlags(1);
        try {
            startActivity(Intent.createChooser(intent, "分享 " + file.getName()));
        } catch (Exception unused) {
            Toast.makeText(this, "无可用分享应用", 0).show();
        }
    }

    private void resumeLast() {
        if (this.unfinished.isEmpty()) {
            Toast.makeText(this, "没有可恢复的记录", 0).show();
        } else {
            Toast.makeText(this, "点击列表中的未完成记录可导出或删除", 1).show();
        }
    }
}

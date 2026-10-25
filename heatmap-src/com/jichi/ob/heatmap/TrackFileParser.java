package com.jichi.ob.heatmap;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * 轨迹文件解析器：FIT / GPX / TCX → 经纬度点列表
 * 纯本地解析，不依赖任何第三方库。
 */
public class TrackFileParser {

    /** 扫描文件夹下所有 .fit/.gpx/.tcx 文件 */
    public static List<File> scanFiles(File dir) {
        List<File> out = new ArrayList<File>();
        if (dir == null || !dir.isDirectory()) return out;
        File[] fs = dir.listFiles();
        if (fs == null) return out;
        for (File f : fs) {
            if (f.isFile()) {
                String n = f.getName().toLowerCase();
                if (n.endsWith(".fit") || n.endsWith(".gpx") || n.endsWith(".tcx")) {
                    out.add(f);
                }
            }
        }
        return out;
    }

    /** 解析单个文件 → 轨迹点（lat,lon 度） */
    public static List<double[]> parseFile(File f) throws IOException {
        String n = f.getName().toLowerCase();
        if (n.endsWith(".fit")) return parseFit(f);
        if (n.endsWith(".gpx")) return parseGpx(f);
        if (n.endsWith(".tcx")) return parseTcx(f);
        return new ArrayList<double[]>();
    }

    /** FIT 二进制解析：消息 20 (record) 的 position_lat/long */
    public static List<double[]> parseFit(File f) throws IOException {
        List<double[]> pts = new ArrayList<double[]>();
        byte[] buf = readAll(f);
        if (buf == null || buf.length < 14) return pts;
        int headerSize = buf[0] & 0xFF;
        if (headerSize < 12 || headerSize >= buf.length) return pts;
        // 数据区
        int off = headerSize;
        int end = buf.length - 2; // 末尾 2 字节 CRC
        // 本地消息定义表：globalMsgNum, fieldDefNum->{size, type}
        int[] defGlobal = new int[16];
        int[][] defFields = new int[16][];      // field def num
        int[][] defSizes = new int[16][];
        byte[][] defTypes = new byte[16][];
        for (int i = 0; i < 16; i++) { defGlobal[i] = -1; }

        while (off < end) {
            int hdr = buf[off++] & 0xFF;
            if ((hdr & 0x80) != 0) {
                // compressed timestamp header：timestamp 字段省略，数据从 field 1 开始
                int local = (hdr >> 5) & 0x03;
                int g = (local < 16) ? defGlobal[local] : -1;
                if (g == 20 && local < 16 && defFields[local] != null) {
                    readDataRecord(buf, off, defFields[local], defSizes[local], defTypes[local], pts, 1);
                }
                int skip = skipCompressed(buf, off, local < 16 ? defSizes[local] : null);
                off += skip;
                continue;
            }
            int local = hdr & 0x0F;
            if ((hdr & 0x40) != 0) {
                // definition record
                if (off + 5 > end) break;
                int reserved = buf[off++] & 0xFF;
                int arch = buf[off++] & 0xFF;
                int gnum = (buf[off] & 0xFF) | ((buf[off + 1] & 0xFF) << 8);
                off += 2;
                int nf = buf[off++] & 0xFF;
                if (nf > 32) nf = 32;
                if (local < 16) {
                    defGlobal[local] = gnum;
                    defFields[local] = new int[nf];
                    defSizes[local] = new int[nf];
                    defTypes[local] = new byte[nf];
                    for (int k = 0; k < nf; k++) {
                        if (off + 3 > end) { defFields[local][k] = -1; defSizes[local][k] = 0; defTypes[local][k] = 0; break; }
                        defFields[local][k] = buf[off++] & 0xFF;
                        defSizes[local][k] = buf[off++] & 0xFF;
                        defTypes[local][k] = buf[off++];
                    }
                } else {
                    // 越界 local：跳过定义字段
                    for (int k = 0; k < nf; k++) {
                        if (off + 3 > end) break;
                        off += 3;
                    }
                }
            } else {
                // data record（hdr 已消费，off 指向字段区）
                int total = 0;
                if (local < 16 && defSizes[local] != null) {
                    int[] szs = defSizes[local];
                    for (int s : szs) total += s;
                    if (defGlobal[local] == 20 && defFields[local] != null) {
                        readDataRecord(buf, off, defFields[local], defSizes[local], defTypes[local], pts, 0);
                    }
                }
                off += total;
            }
        }
        return pts;
    }

    private static int skipCompressed(byte[] buf, int off, int[] sizes) {
        // 压缩时间戳头省略 timestamp 字段（通常 field 253，即 sizes[0]），其余字段照常
        if (sizes == null || sizes.length == 0) return 0;
        int total = 0;
        for (int s : sizes) total += s;
        return total - sizes[0];
    }

    private static void readDataRecord(byte[] buf, int off, int[] fields, int[] sizes, byte[] types, List<double[]> pts, int startField) {
        int p = off;
        double lat = 0, lon = 0;
        for (int k = startField; k < fields.length; k++) {
            int fnum = fields[k];
            int sz = sizes[k];
            if (fnum == 0 && sz == 4) {
                lat = readSint32(buf, p) * (180.0 / 2147483648.0);
            } else if (fnum == 1 && sz == 4) {
                lon = readSint32(buf, p) * (180.0 / 2147483648.0);
            }
            p += sz;
        }
        if (lat != 0 || lon != 0) {
            pts.add(new double[]{lat, lon});
        }
    }

    private static int readSint32(byte[] b, int p) {
        int v = (b[p] & 0xFF) | ((b[p + 1] & 0xFF) << 8) | ((b[p + 2] & 0xFF) << 16) | ((b[p + 3] & 0xFF) << 24);
        return v;
    }

    /** GPX 解析：文本扫描 <trkpt lat=".." lon=".."> */
    public static List<double[]> parseGpx(File f) throws IOException {
        List<double[]> pts = new ArrayList<double[]>();
        String s = readText(f);
        if (s == null) return pts;
        int i = 0;
        while (true) {
            i = s.indexOf("<trkpt", i);
            if (i < 0) break;
            int j = s.indexOf('>', i);
            if (j < 0) break;
            String tag = s.substring(i, j);
            double lat = attr(tag, "lat");
            double lon = attr(tag, "lon");
            if (lat != 1e99 && lon != 1e99) pts.add(new double[]{lat, lon});
            i = j + 1;
        }
        return pts;
    }

    /** TCX 解析：<LatitudeDegrees>..</LatitudeDegrees> <LongitudeDegrees>..</LongitudeDegrees> */
    public static List<double[]> parseTcx(File f) throws IOException {
        List<double[]> pts = new ArrayList<double[]>();
        String s = readText(f);
        if (s == null) return pts;
        int i = 0;
        double lat = 1e99, lon = 1e99;
        while (i < s.length()) {
            int la = s.indexOf("<LatitudeDegrees>", i);
            int lo = s.indexOf("<LongitudeDegrees>", i);
            if (la < 0 && lo < 0) break;
            if (la >= 0 && (lo < 0 || la < lo)) {
                int e = s.indexOf("</LatitudeDegrees>", la);
                if (e < 0) break;
                try { lat = Double.parseDouble(s.substring(la + 18, e).trim()); } catch (Exception ex) { lat = 1e99; }
                i = e + 18;
                if (lat != 1e99 && lon != 1e99) { pts.add(new double[]{lat, lon}); lat = 1e99; lon = 1e99; }
            } else {
                int e = s.indexOf("</LongitudeDegrees>", lo);
                if (e < 0) break;
                try { lon = Double.parseDouble(s.substring(lo + 19, e).trim()); } catch (Exception ex) { lon = 1e99; }
                i = e + 19;
                if (lat != 1e99 && lon != 1e99) { pts.add(new double[]{lat, lon}); lat = 1e99; lon = 1e99; }
            }
        }
        return pts;
    }

    private static double attr(String tag, String name) {
        String key = name + "=\"";
        int p = tag.indexOf(key);
        if (p < 0) return 1e99;
        int q = tag.indexOf('"', p + key.length());
        if (q < 0) return 1e99;
        try { return Double.parseDouble(tag.substring(p + key.length(), q)); } catch (Exception e) { return 1e99; }
    }

    private static byte[] readAll(File f) throws IOException {
        if (f == null || !f.isFile() || f.length() > 64 * 1024 * 1024) return null;
        byte[] buf = new byte[(int) f.length()];
        InputStream in = new FileInputStream(f);
        try {
            int off = 0;
            while (off < buf.length) {
                int r = in.read(buf, off, buf.length - off);
                if (r < 0) break;
                off += r;
            }
        } finally {
            in.close();
        }
        return buf;
    }

    private static String readText(File f) throws IOException {
        if (f == null || !f.isFile() || f.length() > 64 * 1024 * 1024) return null;
        byte[] buf = readAll(f);
        if (buf == null) return null;
        return new String(buf, "UTF-8");
    }
}

package com.jichi.ob.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/** 兼容层：这些方法在 Kotlin 源码里是带默认参数的扩展函数，
 *  jadx 反编译成 Java 后调用的是 stdlib 内部实现类上的 $default 方法，源码编译不可用。
 *  这里按原签名提供等价实现，行为与 Kotlin 默认参数一致（只覆盖本工程实际用到的分支）。 */
public final class KtCompat {

    private KtCompat() {}

    public static boolean contains$default(CharSequence self, CharSequence other, boolean ignoreCase, int mask, Object marker) {
        if (ignoreCase) {
            return self.toString().toLowerCase().contains(other.toString().toLowerCase());
        }
        return self.toString().contains(other.toString());
    }

    public static boolean startsWith$default(String self, String prefix, boolean ignoreCase, int mask, Object marker) {
        if (ignoreCase) {
            return self.toLowerCase().startsWith(prefix.toLowerCase());
        }
        return self.startsWith(prefix);
    }

    public static boolean endsWith$default(String self, String suffix, boolean ignoreCase, int mask, Object marker) {
        if (ignoreCase) {
            return self.toLowerCase().endsWith(suffix.toLowerCase());
        }
        return self.endsWith(suffix);
    }

    public static String replace$default(String self, String oldValue, String newValue, boolean ignoreCase, int mask, Object marker) {
        if (ignoreCase) {
            return self.replaceAll("(?i)" + Regex.escape(oldValue), newValue);
        }
        return self.replace(oldValue, newValue);
    }

    public static MatchResult find$default(Regex self, CharSequence input, int startIndex, int mask, Object marker) {
        return self.find(input, startIndex);
    }

    public static String joinToString$default(Iterable self, CharSequence separator, CharSequence prefix,
                                              CharSequence suffix, int limit, CharSequence truncated,
                                              Function1 transform, int mask, Object marker) {
        String sep = separator == null ? ", " : separator.toString();
        String pre = prefix == null ? "" : prefix.toString();
        String suf = suffix == null ? "" : suffix.toString();
        String tr = truncated == null ? "..." : truncated.toString();
        int lim = limit <= 0 ? -1 : limit;
        StringBuilder sb = new StringBuilder(pre);
        Iterator it = self.iterator();
        int idx = 0;
        boolean first = true;
        while (it.hasNext()) {
            if (lim >= 0 && idx >= lim) {
                sb.append(sep).append(tr);
                break;
            }
            Object v = it.next();
            Object out = transform == null ? v : transform.invoke(v);
            if (!first) {
                sb.append(sep);
            }
            sb.append(out);
            first = false;
            idx++;
        }
        return sb.append(suf).toString();
    }

    /** 供反编译代码里 List 拼接兜底使用。 */
    public static List asList(Object[] arr) {
        List list = new ArrayList();
        for (Object o : arr) {
            list.add(o);
        }
        return list;
    }
}

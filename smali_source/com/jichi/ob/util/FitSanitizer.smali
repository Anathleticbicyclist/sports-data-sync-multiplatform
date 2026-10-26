.class public final Lcom/jichi/ob/util/FitSanitizer;
.super Ljava/lang/Object;

.field private static final CRC_TABLE:[I
.field public static final INSTANCE:Lcom/jichi/ob/util/FitSanitizer;

.method static constructor <clinit>()V
    .locals 1
    new-instance v0, Lcom/jichi/ob/util/FitSanitizer;
    invoke-direct {v0}, Lcom/jichi/ob/util/FitSanitizer;-><init>()V
    sput-object v0, Lcom/jichi/ob/util/FitSanitizer;->INSTANCE:Lcom/jichi/ob/util/FitSanitizer;
    const/16 v0, 0x10
    new-array v0, v0, [I
    fill-array-data v0, :array_0
    sput-object v0, Lcom/jichi/ob/util/FitSanitizer;->CRC_TABLE:[I
    return-void
    nop
    :array_0
    .array-data 4
        0x0
        0xcc01
        0xd801
        0x1400
        0xf001
        0x3c00
        0x2800
        0xe401
        0xa001
        0x6c00
        0x7800
        0xb401
        0x5000
        0x9c01
        0x8801
        0x4400
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private final fitCrc([B)I
    .locals 7
    array-length v0, p1
    const/4 v1, 0x0
    move v2, v1
    :goto_0
    if-ge v1, v0, :cond_0
    aget-byte v3, p1, v1   # v3=byte
    sget-object v5, Lcom/jichi/ob/util/FitSanitizer;->CRC_TABLE:[I
    # 第一次: 低4位
    and-int/lit8 v6, v2, 0xf
    aget v6, v5, v6
    shr-int/lit8 v2, v2, 0x4
    and-int/lit16 v2, v2, 0xfff
    xor-int/2addr v2, v6
    and-int/lit8 v6, v3, 0xf
    aget v6, v5, v6
    xor-int/2addr v2, v6
    # 第二次: 高4位
    and-int/lit8 v6, v2, 0xf
    aget v6, v5, v6
    shr-int/lit8 v2, v2, 0x4
    and-int/lit16 v2, v2, 0xfff
    xor-int/2addr v2, v6
    shr-int/lit8 v6, v3, 0x4
    and-int/lit8 v6, v6, 0xf
    aget v6, v5, v6
    xor-int/2addr v2, v6
    add-int/lit8 v1, v1, 0x1
    goto :goto_0
    :cond_0
    return v2
.end method

.method public final sanitize([B)[B
    .locals 16
    # v14=this v15=data v5=baos v6=defs v7=offset v8=dataEnd v9=hdr
    # v0=tmp v1=counter/devFc v2=dev v3=std v4=defOffset/defTotal
    # v10=lmt/writeLen v11=hasDev/Integer/writeStart v12=gm v13=fc

    if-eqz p1, :cond_ret
    move-object/from16 v14, p0   # this -> v14
    move-object/from16 v15, p1   # data -> v15
    array-length v0, v15
    const/16 v1, 0xe
    if-ge v0, v1, :cond_chk
    :cond_ret
    return-object p1
    :cond_chk
    aget-byte v0, v15, v1
    and-int/lit16 v2, v0, 0xff
    const/16 v3, 0xc
    if-eq v2, v3, :cond_sig
    const/16 v3, 0xe
    if-eq v2, v3, :cond_sig
    return-object p1
    :cond_sig
    const/16 v3, 0x8
    aget-byte v4, v15, v3
    and-int/lit16 v4, v4, 0xff
    const/16 v0, 0x2e
    if-ne v4, v0, :cond_ret
    const/16 v3, 0x9
    aget-byte v4, v15, v3
    and-int/lit16 v4, v4, 0xff
    const/16 v0, 0x46
    if-ne v4, v0, :cond_ret
    const/16 v3, 0xa
    aget-byte v4, v15, v3
    and-int/lit16 v4, v4, 0xff
    const/16 v0, 0x49
    if-ne v4, v0, :cond_ret
    const/16 v3, 0xb
    aget-byte v4, v15, v3
    and-int/lit16 v4, v4, 0xff
    const/16 v0, 0x54
    if-ne v4, v0, :cond_ret
    # dataSize -> v4
    const/4 v3, 0x4
    aget-byte v4, v15, v3
    and-int/lit16 v4, v4, 0xff
    const/4 v3, 0x5
    aget-byte v0, v15, v3
    and-int/lit16 v0, v0, 0xff
    shl-int/lit8 v0, v0, 0x8
    or-int/2addr v4, v0
    const/4 v3, 0x6
    aget-byte v0, v15, v3
    and-int/lit16 v0, v0, 0xff
    shl-int/lit8 v0, v0, 0x10
    or-int/2addr v4, v0
    const/4 v3, 0x7
    aget-byte v0, v15, v3
    and-int/lit16 v0, v0, 0xff
    shl-int/lit8 v0, v0, 0x18
    or-int/2addr v4, v0
    # v2=hdrSize v4=dataSize
    new-instance v5, Ljava/io/ByteArrayOutputStream;
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    const/4 v6, 0x0
    invoke-virtual {v5, v15, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    new-instance v6, Ljava/util/HashMap;
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    move v7, v2
    add-int v8, v2, v4

    :loop_start
    if-ge v7, v8, :loop_end
    aget-byte v9, v15, v7
    and-int/lit16 v9, v9, 0xff
    add-int/lit8 v7, v7, 0x1
    and-int/lit16 v10, v9, 0x80
    if-eqz v10, :cond_normal

    # === compressed timestamp ===
    shr-int/lit8 v10, v9, 0x5
    and-int/lit8 v10, v10, 0x3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v11
    if-eqz v11, :cond_comp_nodef
    check-cast v11, [I
    const/4 v0, 0x0
    aget v12, v11, v0
    const/4 v0, 0x1
    aget v13, v11, v0
    const/4 v0, 0x2
    aget v2, v11, v0
    const/16 v0, 0x14
    if-ne v12, v0, :cond_comp_all
    if-lez v2, :cond_comp_all
    # 剥离dev: compressed写 std字节(header1+data std-1), offset推进 std-1
    move v10, v13
    add-int/lit8 v11, v7, -1
    invoke-virtual {v5, v15, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    add-int/lit8 v7, v7, -1
    add-int v7, v7, v13
    goto :loop_start
    :cond_comp_all
    # 不剥离: compressed写 std+dev字节, offset推进 std+dev-1
    add-int v10, v13, v2
    add-int/lit8 v11, v7, -1
    invoke-virtual {v5, v15, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    add-int/lit8 v7, v7, -1
    add-int v7, v7, v10
    goto :loop_start
    :cond_comp_nodef
    add-int/lit8 v7, v7, 0x1
    goto :loop_start

    # === normal header ===
    :cond_normal
    and-int/lit8 v10, v9, 0xf
    and-int/lit16 v11, v9, 0x40
    if-eqz v11, :cond_data

    # === definition message ===
    # FIT def格式: reserved(1)+arch(1)+gm(2)+fc(1)+fields(3*fc)+[devFc(1)+devFields(3*devFc)]
    # v7指向reserved字节
    and-int/lit16 v11, v9, 0x20   # hasDev -> v11
    add-int/lit8 v12, v7, 0x1
    aget-byte v12, v15, v12
    and-int/lit16 v12, v12, 0xff   # arch=data[v7+1]
    if-eqz v12, :cond_le
    # big-endian gm = data[v7+2]<<8 | data[v7+3]
    add-int/lit8 v13, v7, 0x2
    aget-byte v13, v15, v13
    and-int/lit16 v13, v13, 0xff
    shl-int/lit8 v13, v13, 0x8
    add-int/lit8 v0, v7, 0x3
    aget-byte v0, v15, v0
    and-int/lit16 v0, v0, 0xff
    or-int/2addr v13, v0
    move v12, v13
    goto :cond_gm
    :cond_le
    # little-endian gm = data[v7+2] | data[v7+3]<<8
    add-int/lit8 v13, v7, 0x3
    aget-byte v13, v15, v13
    and-int/lit16 v13, v13, 0xff
    shl-int/lit8 v13, v13, 0x8
    add-int/lit8 v0, v7, 0x2
    aget-byte v0, v15, v0
    and-int/lit16 v0, v0, 0xff
    or-int/2addr v13, v0
    move v12, v13
    :cond_gm
    # fc = data[v7+4] -> v13
    add-int/lit8 v13, v7, 0x4
    aget-byte v13, v15, v13
    and-int/lit16 v13, v13, 0xff
    # defOffset = v7+5 (std fields start)
    add-int/lit8 v4, v7, 0x5
    # stdSize -> v3, counter v1=fc
    const/4 v3, 0x0
    move v1, v13
    :loop_std
    if-lez v1, :cond_std_done
    add-int/lit8 v0, v4, 0x1
    aget-byte v0, v15, v0
    and-int/lit16 v0, v0, 0xff
    add-int/2addr v3, v0
    add-int/lit8 v4, v4, 0x3
    add-int/lit8 v1, v1, -1
    goto :loop_std
    :cond_std_done
    # v3=std v4=afterStd v13=fc v12=gm v11=hasDev
    const/4 v1, 0x0
    const/4 v2, 0x0
    if-eqz v11, :cond_dev_done
    # devFc = data[v4] -> v1, afterDevFc -> v4
    aget-byte v1, v15, v4
    and-int/lit16 v1, v1, 0xff
    add-int/lit8 v4, v4, 0x1
    # dev循环: 只推进v4, 不读字段大小
    move v0, v1   # counter -> v0
    :loop_dev
    if-lez v0, :cond_dev_done
    add-int/lit8 v4, v4, 0x3
    add-int/lit8 v0, v0, -1
    goto :loop_dev
    :cond_dev_done
    # devSize = origDefEnd(v4) - offset(v7) - 6 - fc*3(v13)
    sub-int v2, v4, v7
    mul-int/lit8 v0, v13, 0x3
    add-int/lit8 v0, v0, 0x6
    sub-int v2, v2, v0
    # 存definition int[4]{gm,std,dev,fc} -> v0(数组引用)
    const/4 v0, 0x4
    new-array v0, v0, [I
    const/4 v14, 0x0
    aput v12, v0, v14
    const/4 v14, 0x1
    aput v3, v0, v14
    const/4 v14, 0x2
    aput v2, v0, v14
    const/4 v14, 0x3
    aput v13, v0, v14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v14
    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # if gm==20 && dev>0: 剥离dev
    const/16 v0, 0x14
    if-ne v12, v0, :cond_def_all
    if-lez v2, :cond_def_all
    # 新header = hdr & 0xDF -> v0
    and-int/lit16 v0, v9, 0xdf
    int-to-byte v0, v0
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    # write reserved+arch+gm+fc = 5 bytes from offset(v7)
    const/4 v0, 0x5
    invoke-virtual {v5, v15, v7, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    # write fc*3 std fields from offset+5
    mul-int/lit8 v0, v13, 0x3
    add-int/lit8 v14, v7, 0x5
    invoke-virtual {v5, v15, v14, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    # offset = origDefEnd (v4)
    move v7, v4
    goto :loop_start

    :cond_def_all
    # defTotal = 5 + fc*3 + (hasDev ? 1+devFc*3 : 0) -> v14
    mul-int/lit8 v14, v13, 0x3
    add-int/lit8 v14, v14, 0x5
    if-eqz v11, :cond_def_nodev
    mul-int/lit8 v0, v1, 0x3
    add-int/lit8 v0, v0, 0x1
    add-int/2addr v14, v0
    :cond_def_nodev
    # write(data, offset-1, 1+defTotal)
    add-int/lit8 v11, v7, -1
    add-int/lit8 v0, v14, 0x1
    invoke-virtual {v5, v15, v11, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    add-int v7, v7, v14
    goto :loop_start

    # === data message ===
    :cond_data
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v11
    if-eqz v11, :cond_data_nodef
    check-cast v11, [I
    const/4 v0, 0x0
    aget v12, v11, v0   # gm
    const/4 v0, 0x1
    aget v13, v11, v0   # std
    const/4 v0, 0x2
    aget v2, v11, v0    # dev
    const/16 v0, 0x14
    if-ne v12, v0, :cond_data_all
    if-lez v2, :cond_data_all
    # 只写标准字段: header + std
    add-int/lit8 v11, v7, -1
    add-int/lit8 v0, v13, 0x1
    invoke-virtual {v5, v15, v11, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    add-int v14, v13, v2
    add-int v7, v7, v14
    goto :loop_start
    :cond_data_all
    add-int v14, v13, v2
    add-int/lit8 v11, v7, -1
    add-int/lit8 v0, v14, 0x1
    invoke-virtual {v5, v15, v11, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    add-int v7, v7, v14
    goto :loop_start
    :cond_data_nodef
    add-int/lit8 v11, v7, -1
    sub-int v14, v8, v11
    invoke-virtual {v5, v15, v11, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    move v7, v8
    goto :loop_start

    :loop_end
    # 恢复v14=this(循环中v14被用作int计算覆盖了this指针)
    move-object/from16 v14, p0
    # 追加2字节CRC占位(必须在toByteArray前，否则CRC会覆盖最后2字节数据)
    const/4 v1, 0x0
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
    # 更新header data_size = len - 16
    array-length v1, v0
    add-int/lit8 v1, v1, -16
    const/4 v2, 0x4
    and-int/lit16 v3, v1, 0xff
    int-to-byte v3, v3
    aput-byte v3, v0, v2
    const/4 v2, 0x5
    shr-int/lit8 v3, v1, 0x8
    and-int/lit16 v3, v3, 0xff
    int-to-byte v3, v3
    aput-byte v3, v0, v2
    const/4 v2, 0x6
    shr-int/lit8 v3, v1, 0x10
    and-int/lit16 v3, v3, 0xff
    int-to-byte v3, v3
    aput-byte v3, v0, v2
    const/4 v2, 0x7
    shr-int/lit8 v3, v1, 0x18
    and-int/lit16 v3, v3, 0xff
    int-to-byte v3, v3
    aput-byte v3, v0, v2
    # 重算header CRC(前12字节)
    const/4 v1, 0x0
    const/16 v2, 0xc
    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B
    move-result-object v1
    invoke-direct {v14, v1}, Lcom/jichi/ob/util/FitSanitizer;->fitCrc([B)I
    move-result v1
    const/16 v2, 0xc
    and-int/lit16 v3, v1, 0xff
    int-to-byte v3, v3
    aput-byte v3, v0, v2
    const/16 v2, 0xd
    shr-int/lit8 v1, v1, 0x8
    and-int/lit16 v1, v1, 0xff
    int-to-byte v1, v1
    aput-byte v1, v0, v2
    # 重算文件CRC
    array-length v1, v0
    add-int/lit8 v1, v1, -2
    const/4 v2, 0x0
    invoke-static {v0, v2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B
    move-result-object v1
    invoke-direct {v14, v1}, Lcom/jichi/ob/util/FitSanitizer;->fitCrc([B)I
    move-result v1
    array-length v2, v0
    add-int/lit8 v2, v2, -2
    and-int/lit16 v3, v1, 0xff
    int-to-byte v3, v3
    aput-byte v3, v0, v2
    array-length v2, v0
    add-int/lit8 v2, v2, -1
    shr-int/lit8 v1, v1, 0x8
    and-int/lit16 v1, v1, 0xff
    int-to-byte v1, v1
    aput-byte v1, v0, v2
    return-object v0
.end method

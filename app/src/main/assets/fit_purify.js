/**
 * fit_purify.js — FIT 净化器（鸡翅幸哲迈进OB 专用）
 * 用途：Wahoo 等平台导出的 FIT 常携带 record 开发者字段（field_definition_number 与
 *       标准字段 position_lat(0)/cadence(4) 冲突）且 record 定义不统一、部分记录点
 *       缺坐标，导致 iGPSPORT 解析失败。本脚本：
 *   1) 剥离 record 消息的全部开发者字段（保留标准字段）
 *   2) 将 record 多定义归一化为单一标准定义（字段并集）
 *   3) 无坐标的记录点补最近有效坐标
 *   4) 其他消息（file_id/event/sport/activity/session/lap/device_info 等）原样保留
 *      （含其开发者字段，避免破坏数据区布局）
 *   5) 重算 CRC
 * 纯本地运行。可在 node 下直接单测（module.exports）。
 */
(function () {
  'use strict';

  // ================= 基础工具 =================

  // FIT CRC16-CCITT
  function fitCRC(data) {
    var crc = 0;
    for (var i = 0; i < data.length; i++) {
      crc = (crc & 0xFF) ^ data[i];
      for (var j = 0; j < 8; j++) {
        var mask = -(crc & 1) & 0xFFFF;
        crc = (crc >>> 1) ^ (0x8408 & mask);
      }
    }
    return crc & 0xFFFF;
  }

  function isInvalid(bytes) {
    for (var i = 0; i < bytes.length; i++) {
      if (bytes[i] !== 0xFF) return false;
    }
    return true;
  }

  function copyBytes(data, offset, len) {
    var out = new Uint8Array(len);
    for (var i = 0; i < len; i++) out[i] = data[offset + i];
    return out;
  }

  // 解析定义消息（off 指向 definition 消息的 reserved 字节）
  // 返回：{globalNum, stdFields(标准字段), end(标准字段结束位置)}
  function parseDefinitionAt(data, off) {
    var arch = data[off + 1];
    var littleEndian = arch === 0;
    var globalNum = littleEndian
      ? (data[off + 2] | (data[off + 3] << 8))
      : ((data[off + 2] << 8) | data[off + 3]);
    var fieldCount = data[off + 4];
    var fields = [];
    var p = off + 5;
    for (var i = 0; i < fieldCount; i++) {
      fields.push({ num: data[p], size: data[p + 1], baseType: data[p + 2], isDev: false });
      p += 3;
    }
    return { globalNum: globalNum, stdFields: fields, end: p };
  }

  // 解析 dev 字段区（hasDev 时），返回 {devFields, end}
  function parseDevFieldsAt(data, off) {
    var dCnt = data[off];
    var devFields = [];
    var p = off + 1;
    for (var i = 0; i < dCnt; i++) {
      devFields.push({ num: data[p], size: data[p + 1], baseType: data[p + 2], isDev: true });
      p += 3;
    }
    return { devFields: devFields, end: p };
  }

  function fieldsSize(fields) {
    var s = 0;
    for (var i = 0; i < fields.length; i++) s += fields[i].size;
    return s;
  }

  // 定义中 timestamp(253) 字段的大小（compressed header 会替换掉它）
  function tsSizeOf(def) {
    if (!def) return 0;
    for (var i = 0; i < def.fields.length; i++) {
      if (def.fields[i].num === 253) return def.fields[i].size;
    }
    return 0;
  }

  /**
   * 净化 FIT 文件
   */
  function purifyFit(inputData) {
    var data = inputData;
    if (data.length < 14) throw new Error('FIT file too short');

    var headerSize = data[0];
    if (headerSize !== 12 && headerSize !== 14) throw new Error('Invalid FIT header size: ' + headerSize);

    var signature = String.fromCharCode(data[8], data[9], data[10], data[11]);
    if (signature !== '.FIT') throw new Error('Not a FIT file');

    var dataSize = data[4] | (data[5] << 8) | (data[6] << 16) | (data[7] << 24);
    var expectedSize = headerSize + dataSize + 2;
    if (expectedSize < data.length) data = data.slice(0, expectedSize);
    else if (expectedSize > data.length) throw new Error('FIT truncated');

    var header = copyBytes(data, 0, headerSize);
    var dataEnd = headerSize + dataSize;

    // ===== Pass 1：收集 record 标准字段并集 + 非 record global 首个定义 =====
    var recordFields = {};      // num -> size（标准字段）
    var otherGlobalDefs = {};   // global -> fields（完整：标准+dev，首个定义）
    var globalOrder = [];       // 非 record global 出现顺序
    var localDefs = {};         // local -> {globalNum, fields(完整), size}

    var off = headerSize;
    while (off < dataEnd) {
      var h = data[off];
      if (h & 0x80) {
        // compressed timestamp header：数据 = 定义字节 - timestamp 字段 + 1(time offset)
        var lnC = (h >> 5) & 0x03;
        var ldC = localDefs[lnC];
        if (ldC) off += 1 + (ldC.size - tsSizeOf(ldC)) + 1;
        else off += 4;
        continue;
      }
      var isDef = (h & 0x40) !== 0;
      var hasDev = (h & 0x20) !== 0;
      var ln = h & 0x0F;
      if (isDef) {
        var di = parseDefinitionAt(data, off + 1);
        var allF = di.stdFields.slice();
        var endPos = di.end;
        if (hasDev) {
          var devInfo = parseDevFieldsAt(data, di.end);
          allF = allF.concat(devInfo.devFields);
          endPos = devInfo.end;
        }
        localDefs[ln] = { globalNum: di.globalNum, fields: allF, size: fieldsSize(allF) };
        if (di.globalNum === 20) {
          for (var s = 0; s < di.stdFields.length; s++) {
            var f = di.stdFields[s];
            if (recordFields[f.num] === undefined) recordFields[f.num] = { size: f.size, baseType: f.baseType };
            else if (recordFields[f.num].size !== f.size) throw new Error('record field size conflict at num=' + f.num);
          }
        } else {
          if (otherGlobalDefs[di.globalNum] === undefined) {
            otherGlobalDefs[di.globalNum] = allF.slice();
            globalOrder.push(di.globalNum);
          }
        }
        off = endPos;
      } else {
        var ld = localDefs[ln];
        if (ld) off += 1 + ld.size;
        else off += 1;
      }
    }

    if (Object.keys(recordFields).length === 0) throw new Error('no record messages found');

    // ===== 归一化 record 定义（timestamp 253 放最后）=====
    var sortedNums = Object.keys(recordFields).map(Number).sort(function (a, b) { return a - b; });
    if (recordFields[253] === undefined) recordFields[253] = { size: 4, baseType: 6 };
    sortedNums = sortedNums.filter(function (n) { return n !== 253; });
    sortedNums.push(253);
    var recDefFields = [];
    for (var rn = 0; rn < sortedNums.length; rn++) {
      recDefFields.push({ num: sortedNums[rn], size: recordFields[sortedNums[rn]].size, baseType: recordFields[sortedNums[rn]].baseType, isDev: false });
    }

    // ===== local num 策略 =====
    // 非 record：**原样保留源文件的 local num**（源文件 0-15 循环 redefine 本身是
    //   合法且自洽的，继承它就不会引入解析冲突）
    // record：归一化为单一定义，local 用"第一个 record 定义的 local"（源文件该
    //   local 在 record 区已被 redefine 为 record，数据统一写它即可）
    var recordLocal = -1;

    // ===== Pass 2：重写 =====
    var dyn = [];
    var dynLen = 0;
    function dynWriteBytes(arr) { dyn.push(arr); dynLen += arr.length; }
    function dynWriteByte(b) { dyn.push(new Uint8Array([b])); dynLen += 1; }

    function headerDef(localNum, hasDev) { return new Uint8Array([0x40 | (localNum & 0x0F) | (hasDev ? 0x20 : 0)]); }
    function headerData(localNum) { return new Uint8Array([localNum & 0x0F]); }

    // 构建定义消息体（支持 dev 字段，保留真实 base_type）
    function buildDefBody(stdFields, devFields, globalNum) {
      var body = new Uint8Array(5 + stdFields.length * 3 + (devFields.length > 0 ? 1 + devFields.length * 3 : 0));
      body[0] = 0;           // reserved
      body[1] = 0;           // arch = 0 (little endian)
      body[2] = globalNum & 0xFF;
      body[3] = (globalNum >> 8) & 0xFF;
      body[4] = stdFields.length & 0xFF;
      var p = 5;
      for (var i = 0; i < stdFields.length; i++) {
        body[p] = stdFields[i].num;
        body[p + 1] = stdFields[i].size;
        body[p + 2] = stdFields[i].baseType & 0xFF;
        p += 3;
      }
      if (devFields.length > 0) {
        body[p] = devFields.length & 0xFF;
        p += 1;
        for (var j = 0; j < devFields.length; j++) {
          body[p] = devFields[j].num;
          body[p + 1] = devFields[j].size;
          body[p + 2] = devFields[j].baseType & 0xFF;
          p += 3;
        }
      }
      return body;
    }

    // 最近有效坐标
    var lastLat = null, lastLon = null;
    var latSize = recordFields[0] !== undefined ? recordFields[0].size : 4;
    var lonSize = recordFields[1] !== undefined ? recordFields[1].size : 4;
    function invalidBytes(size) {
      var b = new Uint8Array(size);
      for (var i = 0; i < size; i++) b[i] = 0xFF;
      return b;
    }
    var latInv = invalidBytes(latSize), lonInv = invalidBytes(lonSize);

    // 从源数据读取定义对应字段
    function readFields(srcDef, dataOff) {
      var map = {};
      var pos = dataOff;
      for (var i = 0; i < srcDef.fields.length; i++) {
        var f = srcDef.fields[i];
        map[f.num] = copyBytes(data, pos, f.size);
        pos += f.size;
      }
      return map;
    }

    // 从源数据读取定义对应字段（跳过 timestamp——compressed header 场景）
    function readFieldsSkipTs(srcDef, dataOff) {
      var map = {};
      var pos = dataOff;
      for (var i = 0; i < srcDef.fields.length; i++) {
        var f = srcDef.fields[i];
        if (f.num !== 253) {
          map[f.num] = copyBytes(data, pos, f.size);
          pos += f.size;
        } else {
          pos += f.size;
        }
      }
      return map;
    }

    var curLocalDef = {};    // 原 local -> def（跟随原定义消息）
    var lastRecordTs = 0;

    function writeRecordMessage(fmap, tsBytes) {
      dynWriteBytes(headerData(recordLocal < 0 ? 0 : recordLocal));
      for (var i = 0; i < recDefFields.length; i++) {
        var num = recDefFields[i].num;
        var size = recDefFields[i].size;
        var val;
        if (num === 253) {
          val = tsBytes;
        } else if (num === 0) {
          var lat = fmap[0];
          if (!lat || isInvalid(lat)) { lat = (lastLat !== null) ? lastLat : latInv; }
          else lastLat = lat;
          val = lat;
        } else if (num === 1) {
          var lon = fmap[1];
          if (!lon || isInvalid(lon)) { lon = (lastLon !== null) ? lastLon : lonInv; }
          else lastLon = lon;
          val = lon;
        } else {
          val = fmap[num];
          if (!val) val = invalidBytes(size);
        }
        // dev 字段可能复用标准字段号并覆盖 fmap：强制按定义 size 写（补齐/截断），保证输出字节数与定义一致
        if (val.length !== size) {
          var padded = new Uint8Array(size);
          for (var pi2 = 0; pi2 < size; pi2++) padded[pi2] = (pi2 < val.length) ? val[pi2] : 0xFF;
          val = padded;
        }
        dynWriteBytes(val);
      }
      if (tsBytes) {
        lastRecordTs = (tsBytes[0] | (tsBytes[1] << 8) | (tsBytes[2] << 16) | (tsBytes[3] << 24)) >>> 0;
      }
    }

    // 非 record：定义原样保留（含 dev），数据原样拷贝；local 沿用源 local
    function writeOtherMessage(def, srcDataOff, srcLocal) {
      dynWriteBytes(headerData(srcLocal));
      dynWriteBytes(copyBytes(data, srcDataOff, def.size));
    }

    // 非 record compressed header 数据：原样拷贝（local 沿用源 local 低 2 位）
    // 注意：compressed 消息总长 = 1(header) + (size - ts字段) + 1(time offset)
    function writeOtherCompressed(def, srcDataOff, dataBytesLen, srcLocal) {
      dynWriteByte(0x80 | ((srcLocal & 0x03) << 5));
      dynWriteBytes(copyBytes(data, srcDataOff, dataBytesLen + 1));
    }

    off = headerSize;
    while (off < dataEnd) {
      var h3 = data[off];
      if (h3 & 0x80) {
        var lnC2 = (h3 >> 5) & 0x03;
        var ldC = curLocalDef[lnC2];
        if (!ldC) { off += 4; continue; }
        var msgStart = off + 1;
        var tsSkip = tsSizeOf(ldC);
        var tOff = data[msgStart + (ldC.size - tsSkip)];
        if (ldC.globalNum === 20) {
          var fmapC = readFieldsSkipTs(ldC, msgStart);
          var tsC = (lastRecordTs - (tOff & 0xFF)) >>> 0;
          var tsBytesC = new Uint8Array(4);
          tsBytesC[0] = tsC & 0xFF; tsBytesC[1] = (tsC >> 8) & 0xFF;
          tsBytesC[2] = (tsC >> 16) & 0xFF; tsBytesC[3] = (tsC >>> 24) & 0xFF;
          writeRecordMessage(fmapC, tsBytesC);
        } else {
          writeOtherCompressed(ldC, msgStart, ldC.size - tsSkip, lnC2);
        }
        off = msgStart + (ldC.size - tsSkip) + 1;
        continue;
      }

      var isDef3 = (h3 & 0x40) !== 0;
      var hasDev3 = (h3 & 0x20) !== 0;
      var ln3 = h3 & 0x0F;

      if (isDef3) {
        var di3 = parseDefinitionAt(data, off + 1);
        var allF3 = di3.stdFields.slice();
        var endPos3 = di3.end;
        if (hasDev3) {
          var devInfo3 = parseDevFieldsAt(data, di3.end);
          allF3 = allF3.concat(devInfo3.devFields);
          endPos3 = devInfo3.end;
        }
        curLocalDef[ln3] = { globalNum: di3.globalNum, fields: allF3, size: fieldsSize(allF3) };

        if (di3.globalNum === 20) {
          if (recordLocal < 0) recordLocal = ln3;
          dynWriteBytes(headerDef(recordLocal, false));
          dynWriteBytes(buildDefBody(recDefFields, [], 20));
        } else {
          // 非 record：原样保留源 local
          var devF3 = [];
          var stdF3 = [];
          for (var k = 0; k < allF3.length; k++) {
            if (allF3[k].isDev) devF3.push(allF3[k]); else stdF3.push(allF3[k]);
          }
          dynWriteBytes(headerDef(ln3, devF3.length > 0));
          dynWriteBytes(buildDefBody(stdF3, devF3, di3.globalNum));
        }
        off = endPos3;
      } else {
        var ld3 = curLocalDef[ln3];
        if (!ld3) { off += 1; continue; }
        var msgStart3 = off + 1;
        if (ld3.globalNum === 20) {
          var fmap3 = readFields(ld3, msgStart3);
          var ts3 = fmap3[253];
          if (!ts3) {
            var tsv = new Uint8Array(4);
            tsv[0] = lastRecordTs & 0xFF; tsv[1] = (lastRecordTs >> 8) & 0xFF;
            tsv[2] = (lastRecordTs >> 16) & 0xFF; tsv[3] = (lastRecordTs >>> 24) & 0xFF;
            ts3 = tsv;
          }
          writeRecordMessage(fmap3, ts3);
        } else {
          writeOtherMessage(ld3, msgStart3, ln3);
        }
        off = msgStart3 + ld3.size;
      }
    }

    // ===== 组装 =====
    var finalLen = headerSize + dynLen + 2;
    var finalData = new Uint8Array(finalLen);
    for (var hi = 0; hi < headerSize; hi++) finalData[hi] = header[hi];
    finalData[4] = dynLen & 0xFF;
    finalData[5] = (dynLen >> 8) & 0xFF;
    finalData[6] = (dynLen >> 16) & 0xFF;
    finalData[7] = (dynLen >>> 24) & 0xFF;
    // headerSize=14 时，header 末尾 2 字节是 header CRC（对前 headerSize-2 字节计算）
    if (headerSize === 14) {
      var hdrCrc = fitCRC(finalData.subarray(0, 12));
      finalData[12] = hdrCrc & 0xFF;
      finalData[13] = (hdrCrc >> 8) & 0xFF;
    }
    var pOut = headerSize;
    for (var pi = 0; pi < dyn.length; pi++) {
      var chunk = dyn[pi];
      for (var cj = 0; cj < chunk.length; cj++) finalData[pOut++] = chunk[cj];
    }
    var crcVal = fitCRC(finalData.subarray(0, finalLen - 2));
    finalData[finalLen - 2] = crcVal & 0xFF;
    finalData[finalLen - 1] = (crcVal >> 8) & 0xFF;

    return {
      data: finalData,
      summary: {
        recordDefFieldCount: recDefFields.length,
        originalSize: data.length,
        purifiedSize: finalData.length
      }
    };
  }

  var api = { purifyFit: purifyFit };
  if (typeof window !== 'undefined') window.__purifyFitCore = purifyFit;
  if (typeof module !== 'undefined' && module.exports) module.exports = api;
})();

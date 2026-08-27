/**
 * 迈金 FIT GCJ-02 → WGS-84 坐标修正
 * 基于 dwmer0308-a11y/magene-fit-strava-fix 验证方案移植
 * 已在 Strava 实测验证（修正后能匹配赛段）
 * 青岛地区实测平均偏移约450米
 */
(function(global) {
    'use strict';

    const FIT_EPOCH_UNIX_OFFSET = 631065600;
    const CRC_TABLE = new Uint16Array([
        0x0000, 0xCC01, 0xD801, 0x1400, 0xF001, 0x3C00, 0x2800, 0xE401,
        0xA001, 0x6C00, 0x7800, 0xB401, 0x5000, 0x9C01, 0x8801, 0x4400
    ]);

    function fitCRC(data) {
        let crc = 0;
        for (let i = 0; i < data.length; i++) {
            const byte = data[i];
            let tmp = CRC_TABLE[crc & 0xF];
            crc = (crc >> 4) & 0x0FFF;
            crc = crc ^ tmp ^ CRC_TABLE[byte & 0xF];
            tmp = CRC_TABLE[crc & 0xF];
            crc = (crc >> 4) & 0x0FFF;
            crc = crc ^ tmp ^ CRC_TABLE[(byte >> 4) & 0xF];
        }
        return crc & 0xFFFF;
    }

    function readU16(data, offset, littleEndian) {
        if (littleEndian) return data[offset] | (data[offset+1] << 8);
        return (data[offset] << 8) | data[offset+1];
    }

    function readI32(data, offset, littleEndian) {
        if (littleEndian) {
            return (data[offset] | (data[offset+1] << 8) | (data[offset+2] << 16) | (data[offset+3] << 24)) | 0;
        }
        return ((data[offset] << 24) | (data[offset+1] << 16) | (data[offset+2] << 8) | data[offset+3]) | 0;
    }

    function writeI32(data, offset, value, littleEndian) {
        const b = new ArrayBuffer(4);
        const dv = new DataView(b);
        dv.setInt32(0, value, littleEndian);
        const bytes = new Uint8Array(b);
        data[offset] = bytes[0];
        data[offset+1] = bytes[1];
        data[offset+2] = bytes[2];
        data[offset+3] = bytes[3];
    }

    function semicirclesToDegrees(value) {
        return value * (180.0 / 2147483648.0);
    }

    function degreesToSemicircles(value) {
        return Math.round(value * 2147483648.0 / 180.0);
    }

    function isInChina(lat, lon) {
        return 72.004 <= lon && lon <= 137.8347 && 0.8293 <= lat && lat <= 55.8271;
    }

    function transformLat(x, y) {
        let ret = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y;
        ret += 0.2 * Math.sqrt(Math.abs(x));
        ret += (20.0 * Math.sin(6.0 * x * Math.PI) + 20.0 * Math.sin(2.0 * x * Math.PI)) * 2.0 / 3.0;
        ret += (20.0 * Math.sin(y * Math.PI) + 40.0 * Math.sin(y / 3.0 * Math.PI)) * 2.0 / 3.0;
        ret += (160.0 * Math.sin(y / 12.0 * Math.PI) + 320.0 * Math.sin(y * Math.PI / 30.0)) * 2.0 / 3.0;
        return ret;
    }

    function transformLon(x, y) {
        let ret = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y;
        ret += 0.1 * Math.sqrt(Math.abs(x));
        ret += (20.0 * Math.sin(6.0 * x * Math.PI) + 20.0 * Math.sin(2.0 * x * Math.PI)) * 2.0 / 3.0;
        ret += (20.0 * Math.sin(x * Math.PI) + 40.0 * Math.sin(x / 3.0 * Math.PI)) * 2.0 / 3.0;
        ret += (150.0 * Math.sin(x / 12.0 * Math.PI) + 300.0 * Math.sin(x / 30.0 * Math.PI)) * 2.0 / 3.0;
        return ret;
    }

    function wgs84ToGcj02(lat, lon) {
        const a = 6378245.0;
        const ee = 0.00669342162296594323;
        let dLat = transformLat(lon - 105.0, lat - 35.0);
        let dLon = transformLon(lon - 105.0, lat - 35.0);
        const radLat = lat / 180.0 * Math.PI;
        let magic = Math.sin(radLat);
        magic = 1 - ee * magic * magic;
        const sqrtMagic = Math.sqrt(magic);
        dLat = (dLat * 180.0) / ((a * (1 - ee)) / (magic * sqrtMagic) * Math.PI);
        dLon = (dLon * 180.0) / (a / sqrtMagic * Math.cos(radLat) * Math.PI);
        return [lat + dLat, lon + dLon];
    }

    function gcj02ToWgs84Exact(lat, lon) {
        let minLat = lat - 0.02, maxLat = lat + 0.02;
        let minLon = lon - 0.02, maxLon = lon + 0.02;
        let currentLat = lat, currentLon = lon;
        for (let i = 0; i < 30; i++) {
            currentLat = (minLat + maxLat) / 2;
            currentLon = (minLon + maxLon) / 2;
            const [convLat, convLon] = wgs84ToGcj02(currentLat, currentLon);
            const deltaLat = convLat - lat;
            const deltaLon = convLon - lon;
            if (Math.abs(deltaLat) < 1e-8 && Math.abs(deltaLon) < 1e-8) break;
            if (deltaLat > 0) maxLat = currentLat; else minLat = currentLat;
            if (deltaLon > 0) maxLon = currentLon; else minLon = currentLon;
        }
        return [currentLat, currentLon];
    }

    function distanceMeters(lat1, lon1, lat2, lon2) {
        const radius = 6371000.0;
        const dLat = (lat2 - lat1) * Math.PI / 180;
        const dLon = (lon2 - lon1) * Math.PI / 180;
        const rLat1 = lat1 * Math.PI / 180;
        const rLat2 = lat2 * Math.PI / 180;
        const hav = Math.sin(dLat/2)**2 + Math.cos(rLat1)*Math.cos(rLat2)*Math.sin(dLon/2)**2;
        return radius * 2 * Math.atan2(Math.sqrt(hav), Math.sqrt(1-hav));
    }

    function parseDefinition(data, offset, hasDeveloperData) {
        offset += 1;
        const architecture = data[offset];
        offset += 1;
        const littleEndian = architecture === 0;
        const globalMessageNumber = readU16(data, offset, littleEndian);
        offset += 2;
        const fieldCount = data[offset];
        offset += 1;
        const fields = [];
        let messageOffset = 0;
        for (let i = 0; i < fieldCount; i++) {
            const number = data[offset];
            const size = data[offset+1];
            const baseType = data[offset+2];
            offset += 3;
            fields.push({number, size, baseType, offset: messageOffset});
            messageOffset += size;
        }
        let developerFieldCount = 0;
        if (hasDeveloperData) {
            developerFieldCount = data[offset];
            offset += 1;
            for (let i = 0; i < developerFieldCount; i++) {
                offset += 3;
            }
        }
        return {definition: {globalMessageNumber, littleEndian, fields, size: messageOffset}, offset, developerFieldCount};
    }

    function patchRecord(data, dataOffset, definition) {
        const fieldsByNumber = {};
        for (const f of definition.fields) fieldsByNumber[f.number] = f;
        const latField = fieldsByNumber[0];
        const lonField = fieldsByNumber[1];
        const result = {hasCoordinate: false, changed: false, outsideChina: false, shiftM: 0};

        if (!latField || !lonField) return result;
        if (latField.size !== 4 || lonField.size !== 4) return result;

        const latRaw = readI32(data, dataOffset + latField.offset, definition.littleEndian);
        const lonRaw = readI32(data, dataOffset + lonField.offset, definition.littleEndian);

        if (latRaw === 0x7FFFFFFF || latRaw === -0x80000000 || lonRaw === 0x7FFFFFFF || lonRaw === -0x80000000) return result;

        const lat = semicirclesToDegrees(latRaw);
        const lon = semicirclesToDegrees(lonRaw);

        if (!isFinite(lat) || !isFinite(lon)) return result;
        result.hasCoordinate = true;

        if (!isInChina(lat, lon)) { result.outsideChina = true; return result; }

        const [fixedLat, fixedLon] = gcj02ToWgs84Exact(lat, lon);
        const fixedLatRaw = degreesToSemicircles(fixedLat);
        const fixedLonRaw = degreesToSemicircles(fixedLon);

        if (fixedLatRaw !== latRaw || fixedLonRaw !== lonRaw) {
            writeI32(data, dataOffset + latField.offset, fixedLatRaw, definition.littleEndian);
            writeI32(data, dataOffset + lonField.offset, fixedLonRaw, definition.littleEndian);
            result.changed = true;
            result.shiftM = distanceMeters(lat, lon, fixedLat, fixedLon);
        }
        return result;
    }

    /**
     * 修正FIT文件坐标 GCJ-02 → WGS-84
     * @param {Uint8Array} inputData - 原始FIT文件字节
     * @returns {Object} {data: Uint8Array, summary: Object}
     */
    function fixFitCoordinates(inputData) {
        const data = new Uint8Array(inputData);
        if (data.length < 14) throw new Error('FIT file too short');

        const headerSize = data[0];
        if (headerSize !== 12 && headerSize !== 14) throw new Error('Invalid FIT header size');

        const signature = String.fromCharCode(data[8], data[9], data[10], data[11]);
        if (signature !== '.FIT') throw new Error('Not a FIT file');

        const dataSize = data[4] | (data[5] << 8) | (data[6] << 16) | (data[7] << 24);
        const expectedSize = headerSize + dataSize + 2;
        if (expectedSize < data.length) data = data.slice(0, expectedSize);

        const definitions = {};
        let recordMessages = 0, coordinateRecords = 0, changedRecords = 0, skippedOutsideChina = 0;
        let totalShift = 0, maxShift = 0;

        let offset = headerSize;
        const dataEnd = headerSize + dataSize;

        while (offset < dataEnd) {
            const recordHeader = data[offset];
            offset += 1;

            if (recordHeader & 0x80) {
                // Compressed timestamp header
                const localMessageType = (recordHeader >> 5) & 0x03;
                const definition = definitions[localMessageType];
                if (!definition) { offset += 3; continue; }
                recordMessages++;
                const dataOffset = offset;
                const result = patchRecord(data, dataOffset, definition);
                if (result.hasCoordinate) {
                    coordinateRecords++;
                    if (result.changed) {
                        changedRecords++;
                        totalShift += result.shiftM;
                        if (result.shiftM > maxShift) maxShift = result.shiftM;
                    } else if (result.outsideChina) {
                        skippedOutsideChina++;
                    }
                }
                offset += definition.size + 1; // +1 for time offset byte
            } else {
                const localMessageType = recordHeader & 0x0F;
                const isDefinition = !!(recordHeader & 0x40);
                const hasDeveloperData = !!(recordHeader & 0x20);

                if (isDefinition) {
                    const {definition, offset: newOffset} = parseDefinition(data, offset, hasDeveloperData);
                    definitions[localMessageType] = definition;
                    offset = newOffset;
                } else {
                    const definition = definitions[localMessageType];
                    if (!definition) continue;
                    recordMessages++;
                    const dataOffset = offset;
                    const result = patchRecord(data, dataOffset, definition);
                    if (result.hasCoordinate) {
                        coordinateRecords++;
                        if (result.changed) {
                            changedRecords++;
                            totalShift += result.shiftM;
                            if (result.shiftM > maxShift) maxShift = result.shiftM;
                        } else if (result.outsideChina) {
                            skippedOutsideChina++;
                        }
                    }
                    offset += definition.size;
                }
            }
        }

        // Recalculate CRC
        const newCRC = fitCRC(data.subarray(0, data.length - 2));
        data[data.length - 2] = newCRC & 0xFF;
        data[data.length - 1] = (newCRC >> 8) & 0xFF;

        const summary = {
            recordMessages,
            coordinateRecords,
            changedRecords,
            skippedOutsideChina,
            averageShiftM: changedRecords > 0 ? Math.round(totalShift / changedRecords * 100) / 100 : 0,
            maxShiftM: Math.round(maxShift * 100) / 100,
            newFileCRC: newCRC
        };

        return {data, summary};
    }

    // Expose to global
    global.MageneFitFix = {fixFitCoordinates};
    global.__fixFit = function(base64Input) {
        try {
            const binary = atob(base64Input);
            const bytes = new Uint8Array(binary.length);
            for (let i = 0; i < binary.length; i++) bytes[i] = binary.charCodeAt(i);
            const {data, summary} = fixFitCoordinates(bytes);
            let binaryOut = '';
            for (let i = 0; i < data.length; i++) binaryOut += String.fromCharCode(data[i]);
            return JSON.stringify({ok: true, base64: btoa(binaryOut), summary});
        } catch(e) {
            return JSON.stringify({ok: false, error: e.message});
        }
    };

})(typeof window !== 'undefined' ? window : this);

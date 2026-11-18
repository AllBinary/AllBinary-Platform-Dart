/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
 *  
 * By agreeing to this license you and any business entity you represent are 
 * legally bound to the AllBinary Open License Version 1 legal agreement. 
 *  
 * You may obtain the AllBinary Open License Version 1 legal agreement from 
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
 *  
 * Created By: Travis Berthelot 
 *   
 */
// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Displayable.dart';
import 'package:allbinary/javax/microedition/lcdui/Form.dart';
import 'package:allbinary/javax/microedition/rms/InvalidRecordIDException.dart';
import 'package:allbinary/javax/microedition/rms/RecordStore.dart';
import 'package:allbinary/javax/microedition/rms/RecordStoreException.dart';
import 'package:allbinary/javax/microedition/rms/RecordStoreNotOpenException.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';

//J2SE
class TsUtil {
    static final TsUtil instance = TsUtil();
    

    static TsUtil getInstance() {
        return TsUtil.instance;
    }
    

    double longBitsToDouble(int bits) {
        return JNumber.longBitsToDouble(bits);
    }
    

    double intBitsToFloat(int bits) {
        return JNumber.intBitsToFloat(bits);
    }
    

    int hashCode1(Object anyType) {
        return anyType.hashCode;
    }
    

    void waitFor(Object any, int timeoutMillis) {
        final Object anyType = any;
        anyType.wait(timeoutMillis);
    }
    

    List<int> getRecord(Object anyType, int recordId) {
        final RecordStore recordStore = (anyType as RecordStore);
        late List<int> data;
        {
            data = List<int>.filled(recordStore.getRecordSize(recordId), 0);
            recordStore.getRecord(recordId, data, 0);
        }
        return (data.length < 1 ? NullUtil.getInstance().NULL_BYTE_ARRAY : data);
    }
    

    int compareTo(String a, String b) {
        return a.compareTo(b);
    }
    

    bool equalIgnoreCase(String a, String b) {
        return (a.toLowerCase() == b.toLowerCase());
    }
    

    bool equalsNotstring(Object anyType, Object object2) {
        return anyType.equals(object2);
    }
    

    ClassLoader getClassClassLoader(Object anyType) {
        return jClassName(anyType).getClassLoader();
    }
    

    int toNumberFromChar(int value) {
        return value;
    }
    

    int toNumber(int value) {
        return value;
    }
    

    List<int> getByteArray(String string) {
        return JString.getBytes(string);
    }
    

    bool isItemListener(Displayable owner) {
        if ((owner is Form)) {
            return true;
        } else {
            return false;
        }
    }
    

    void gc() {
        JSystem.gc();
    }
}


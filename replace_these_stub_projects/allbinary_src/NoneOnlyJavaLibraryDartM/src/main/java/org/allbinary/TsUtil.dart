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

//None - Do not use
class TsUtil {
    static final TsUtil instance = TsUtil();
    

    static TsUtil getInstance() {
        return TsUtil.instance;
    }
    

    int hashCode1(Object anyType) {
        return anyType.hashCode;
    }
    

    void waitFor(Object any, int timeoutMillis) {
        final Object anyType = any;
        anyType.wait(timeoutMillis);
    }
    

    List<int> getRecord(Object anyType, int recordId) {
        return List<int>.filled(0, 0);
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
    

    int toNumberFromChar(int value) {
        return value;
    }
    

    int toNumber(int value) {
        return value;
    }
    

    List<int> getByteArray(String string) {
        return JString.getBytes(string);
    }
    

    bool isItemListener(Object owner) {
        return false;
    }
    

    void printAvailableMethods(Object anyType) {
    }
    

    void gc() {
        JSystem.gc();
    }
}


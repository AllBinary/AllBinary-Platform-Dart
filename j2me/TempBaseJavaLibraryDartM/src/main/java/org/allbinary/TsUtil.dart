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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary

import 'package:allbinary/allbinary_java.dart';

//TempBase
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
    

    int compareTo(String a, String b) {
        return a.compareTo(b);
    }
}


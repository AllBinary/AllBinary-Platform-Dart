/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.logic.communication.log

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogFormatUtil.dart';

//ActualPlatform
class PreLogUtil {
    static const String LOG_SUCCESS = "org.allbinary: ";
    

    PreLogUtil() {
    }
    

    static void put(String specialMessage, Object anyType, String functionName) {
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT);
    }
    

    static void putOE(String specialMessage, Object anyType, String functionName, Object exception) {
        String className = CommonStrings.getInstance().EMPTY;
        if (jClassName(anyType) != null) {
            className = jNewString(jClassName(anyType));
        }
        final String message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception);
        JSystem.println(jstr(PreLogUtil.LOG_SUCCESS));
        JSystem.println(jstr(message));
    }
    

    static void putS(String specialMessage, String className, String functionName) {
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT);
    }
    

    static void putSE(String specialMessage, String className, String functionName, Object exception) {
        final String message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception);
        JSystem.println(jstr(PreLogUtil.LOG_SUCCESS));
        JSystem.println(jstr(message));
    }
    

    static String getClassName(Object anyType) {
        return jClassName(anyType);
    }
}


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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.logic.communication.log

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogFormatUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/Log.dart';

//ActualPlatform
class LogUtil {
    static final LogUtil instance = LogUtil();
    late LogFormatUtil logFormatUtil;
    late String LOG_SUCCESS;

    // Java field initializers run after the base constructor
    void initFieldsLogUtil() {
    this.logFormatUtil = LogFormatUtil.getInstance();
    this.LOG_SUCCESS = "org.allbinary: ";
    }
    

    static LogUtil getInstance() {
        return LogUtil.instance;
    }
    

    LogUtil() {
        this.initFieldsLogUtil();
    }
    

    void putL(Log log) {
        final String specialMessage = log.getSpecialMessage();
        final Object anyType = log.getObject();
        final String functionName = log.getFunctionName();
        final Object exception = log.getThrowable();
        this.put(specialMessage, anyType, functionName, exception);
    }
    

    void putF(String specialMessage, Object anyType, String functionName) {
        String className = CommonStrings.getInstance().EMPTY;
        if (jClassName(anyType) != null) {
            className = StringMaker().append(jClassName(anyType)).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode1(anyType))).toString();
        }
        final String message = this.logFormatUtil.getS(className, functionName, specialMessage);
        JSystem.println(jstr(this.LOG_SUCCESS));
        JSystem.println(jstr(message));
    }
    

    void putFS(String specialMessage, String className, String functionName) {
        final String message = this.logFormatUtil.getS(className, functionName, specialMessage);
        JSystem.println(jstr(this.LOG_SUCCESS));
        JSystem.println(jstr(message));
    }
    

    void put(String specialMessage, Object anyType, String functionName, Object exception) {
        String className = CommonStrings.getInstance().EMPTY;
        if (jClassName(anyType) != null) {
            final int hashCodeValue = TsUtil.getInstance().hashCode1(anyType);
            final String hexString = Integer.toHexString(hashCodeValue);
            className = StringMaker().append(jClassName(anyType)).append(CommonSeps.getInstance().COLON).append(hexString).toString();
        }
        final String message = this.logFormatUtil.get(className, functionName, specialMessage, exception);
        JSystem.println(jstr(this.LOG_SUCCESS));
        JSystem.println(jstr(message));
    }
}


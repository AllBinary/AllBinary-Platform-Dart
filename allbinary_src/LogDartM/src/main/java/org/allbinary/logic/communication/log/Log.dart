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
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogFormatUtil.dart';

class Log {
    late LogFormatUtil logFormatUtil;
    late String specialMessage;
    late Object anyType;
    late String functionName;
    late Object exception;

    // Java field initializers run after the base constructor
    void initFieldsLog() {
    this.logFormatUtil = LogFormatUtil.getInstance();
    
    
    
    
    }
    

    Log(String specialMessage, Object anyType, String functionName, Object exception) {
        this.initFieldsLog();
        this.specialMessage = specialMessage;
        this.anyType = anyType;
        this.functionName = functionName;
        this.exception = exception;
    }
    

    String getSpecialMessage() {
        return this.specialMessage;
    }
    

    Object getObject() {
        return this.anyType;
    }
    

    String getFunctionName() {
        return this.functionName;
    }
    

    Object getThrowable() {
        return this.exception;
    }
    

    @override
    String toString() {
        String className = CommonStrings.getInstance().EMPTY;
        String clazz = jClassName(this.anyType);
        if (clazz != null) {
            className = clazz;
        }
        return this.logFormatUtil.get(className, this.functionName, this.specialMessage, this.exception);
    }
}


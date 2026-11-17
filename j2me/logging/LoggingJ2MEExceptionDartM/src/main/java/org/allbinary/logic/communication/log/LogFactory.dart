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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/Log.dart';

//ActualPlatform
class LogFactory {
    static final Log LOG = Log(StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT);
    

    static Log getInstanceD() {
        final StringUtil stringUtil = StringUtil.getInstance();
        final NullUtil nullUtil = NullUtil.getInstance();
        return Log(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT);
    }
    

    static Log getInstance4(String specialMessage, Object anyType, String functionName, Object exception) {
        return Log(specialMessage, anyType, functionName, exception);
    }
    

    static Log getInstanceF(String specialMessage, Object anyType, String functionName) {
        return LogFactory.LOG;
    }
}


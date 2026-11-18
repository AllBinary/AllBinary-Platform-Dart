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
import 'package:allbinary/org/allbinary/logic/java/exception/ExceptionUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/time/TimeStampUtil.dart';

//ActualPlatform
class LogFormatUtil {
    static final LogFormatUtil instance = LogFormatUtil();
    late TimeStampUtil timeStampUtil;
    late CommonSeps commonSeps;
    late String NONE;
    late String LOG_ERROR;
    late String EMPTY;
    late String STACK_TRACE;
    late String TIME;
    late String CLASS_NAME;
    late String FUNCTION_CALL;
    late String SPECIAL_MESSAGE;
    late StringUtil stringUtil;
    late ExceptionUtil exceptionUtil;
    late NullUtil nullUtil;

    // Java field initializers run after the base constructor
    void initFieldsLogFormatUtil() {
    this.timeStampUtil = TimeStampUtil.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.NONE = "None";
    this.LOG_ERROR = "\nLog-Error: ";
    this.EMPTY = "Empty";
    this.STACK_TRACE = "\nStack Trace: ";
    this.TIME = "Time: ";
    this.CLASS_NAME = this.commonSeps.SPACE;
    this.FUNCTION_CALL = CommonLabels.getInstance().COLON_SEP;
    this.SPECIAL_MESSAGE = "> ";
    this.stringUtil = StringUtil.getInstance();
    this.exceptionUtil = ExceptionUtil.getInstance();
    this.nullUtil = NullUtil.getInstance();
    }
    

    static LogFormatUtil getInstance() {
        return LogFormatUtil.instance;
    }
    

    LogFormatUtil() {
        this.initFieldsLogFormatUtil();
    }
    

    String get(String className, String functionName, String specialMessage, Object exception) {
        final StringMaker stringBuffer = this.getF(className, functionName);
        stringBuffer.append(this.getO(exception));
        stringBuffer.append(this.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps.NEW_LINE);
        return stringBuffer.toString();
    }
    

    String getS(String className, String functionName, String specialMessage) {
        final StringMaker stringBuffer = this.getF(className, functionName);
        stringBuffer.append(this.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps.NEW_LINE);
        return stringBuffer.toString();
    }
    

    StringMaker getF(String className, String functionName) {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(this.TIME);
        stringBuffer.append(this.timeStampUtil.getAsString());
        stringBuffer.append(this.CLASS_NAME);
        stringBuffer.append(className);
        stringBuffer.append(this.FUNCTION_CALL);
        stringBuffer.append(functionName);
        return stringBuffer;
    }
    

    String getO(Object exception) {
        if (exception != this.nullUtil.NULL_OBJECT) {
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(this.LOG_ERROR);
            final String exceptionAsString = exception.toString();
            stringBuffer.append(exceptionAsString);
            stringBuffer.append(this.STACK_TRACE);
            if (exception != this.nullUtil.NULL_OBJECT) {
                stringBuffer.append(this.exceptionUtil.getStackTrace((exception as JException)));
            } else {
                stringBuffer.append(this.stringUtil.NULL_STRING);
            }
            return stringBuffer.toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
}


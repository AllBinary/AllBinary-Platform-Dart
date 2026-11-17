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
// package org.allbinary.logic.java.exception

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/PrintStream.dart';

//ActualPlatform
class ExceptionUtil {
    static final ExceptionUtil instance = ExceptionUtil();
    static final JException PRETEND_EXCEPTION = JException('Exception', "Not Really An Exception");
    late String NONE;

    // Java field initializers run after the base constructor
    void initFieldsExceptionUtil() {
    this.NONE = "No Stack Trace";
    }
    

    static ExceptionUtil getInstance() {
        return ExceptionUtil.instance;
    }
    

    ExceptionUtil() {
        this.initFieldsExceptionUtil();
    }
    

    String getStackTrace(JException e) {
        if (e != null) {
            final ByteArrayOutputStream byteArrayOutputStream = ByteArrayOutputStream();
            final PrintStream printStream = PrintStream(byteArrayOutputStream);
            e.printStackTrace(printStream);
            final String output = byteArrayOutputStream.toString();
            return output;
        }
        return this.NONE;
    }
}


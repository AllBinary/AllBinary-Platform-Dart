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

//ActualPlatform
class ExceptionUtil {
    static final ExceptionUtil instance = ExceptionUtil();
    late JException PRETEND_EXCEPTION;
    late String NONE;

    // Java field initializers run after the base constructor
    void initFieldsExceptionUtil() {
    this.PRETEND_EXCEPTION = JException('Exception', "Not Really An Exception");
    this.NONE = "No Stack Trace";
    }
    

    static ExceptionUtil getInstance() {
        return ExceptionUtil.instance;
    }
    

    ExceptionUtil() {
        this.initFieldsExceptionUtil();
    }
    

    String getStackTrace(JException e) {
        final ByteArrayOutputStream bs = ByteArrayOutputStream();
        e.printStackTrace();
        final String output = bs.toString();
        return output;
    }
}


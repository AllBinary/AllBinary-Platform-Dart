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
// package org.allbinary.time

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/text/SimpleDateFormat.dart';
import 'package:allbinary/java/util/Calendar.dart';
import 'package:allbinary/java/util/Date.dart';

//ActualPlatform
class TimeStampUtil {
    static final TimeStampUtil instance = TimeStampUtil();
    late SimpleDateFormat simpleDataFormat;

    // Java field initializers run after the base constructor
    void initFieldsTimeStampUtil() {
    this.simpleDataFormat = SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    }
    

    static TimeStampUtil getInstance() {
        return TimeStampUtil.instance;
    }
    

    TimeStampUtil() {
        this.initFieldsTimeStampUtil();
    }
    

    String getAsString() {
        final Calendar calendar = Calendar.getInstance();
        final Date date = calendar.getTime();
        return this.simpleDataFormat.format(date);
    }
}


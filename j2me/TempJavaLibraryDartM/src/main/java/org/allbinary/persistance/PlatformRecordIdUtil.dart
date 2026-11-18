/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.persistance

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';

class PlatformRecordIdUtil {
    static final PlatformRecordIdUtil instance = PlatformRecordIdUtil();
    late String PLATFORM_SHORT_NAME;

    // Java field initializers run after the base constructor
    void initFieldsPlatformRecordIdUtil() {
    this.PLATFORM_SHORT_NAME = "AVN";
    }

    PlatformRecordIdUtil() {
        this.initFieldsPlatformRecordIdUtil();
    }
    

    static PlatformRecordIdUtil getInstance() {
        return PlatformRecordIdUtil.instance;
    }
    

    String getRecordId(AbeClientInformationInterface abeClientInformation, String baseRecordId) {
        return StringMaker().append(abeClientInformation.toShortString()).append(CommonSeps.getInstance().UNDERSCORE).append(this.PLATFORM_SHORT_NAME).append(baseRecordId).toString();
    }
}


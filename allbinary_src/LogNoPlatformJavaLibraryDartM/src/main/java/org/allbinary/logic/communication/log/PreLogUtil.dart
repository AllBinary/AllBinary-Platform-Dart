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

//NoPlatform
class PreLogUtil {
    

    PreLogUtil() {
    }
    

    static void put(String specialMessage, Object anyType, String functionName) {
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT);
    }
    

    static void putOE(String specialMessage, Object anyType, String functionName, Object exception) {
        throw JException('RuntimeException', '');
    }
    

    static void putSE(String specialMessage, String className, String functionName, Object exception) {
        throw JException('RuntimeException', '');
    }
}


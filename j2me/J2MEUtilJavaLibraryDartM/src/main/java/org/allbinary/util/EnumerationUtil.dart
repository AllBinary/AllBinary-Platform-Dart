/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.util

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Enumeration.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

//ArkTs does not have this.  So this is for the ArkTs build.
class EnumerationUtil {
    static final EnumerationUtil instance = EnumerationUtil();
    

    static EnumerationUtil getInstance() {
        return EnumerationUtil.instance;
    }
    

    bool hasMoreElements(Enumeration enumeration) {
        return enumeration.hasMoreElements();
    }
    

    Object nextElement(Enumeration enumeration) {
        return enumeration.nextElement();
    }
    

    List<Object?> getAsArray(Enumeration enumeration) {
        final BasicArrayList basicArrayList = BasicArrayListD();
        while (this.hasMoreElements(enumeration)) {
            basicArrayList.add(this.nextElement(enumeration));
        }
        return basicArrayList.toArray();
    }
}


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
// package org.allbinary

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/HashMap.dart';
import 'package:allbinary/java/util/Map.dart';
import 'package:allbinary/java/util/Set.dart';

//J2SEForJ2ME
class J2SEUtil {
    static final J2SEUtil instance = J2SEUtil();
    

    static J2SEUtil getInstance() {
        return J2SEUtil.instance;
    }
    

    List<Object?> getHashMapAsArray(HashMap hashMap) {
        final List<Object?> objectArray = hashMap.keySet().toArray();
        return objectArray;
    }
    

    List<Object?> getMapAsArray(Map map) {
        final List<Object?> objectArray = map.keySet().toArray();
        return objectArray;
    }
    

    List<Object?> getSetAsArray(Set set) {
        final List<Object?> objectArray = set.toArray();
        return objectArray;
    }
}


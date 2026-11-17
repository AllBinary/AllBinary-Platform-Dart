/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Vector.dart';

class VectorUtil {
    static final VectorUtil instance = VectorUtil();
    

    static VectorUtil getInstance() {
        return VectorUtil.instance;
    }
    

    int getSize(Object anyType) {
        final Vector vector = (anyType as Vector);
        return vector.size();
    }
    

    Object elementAt(Object anyType, int index) {
        final Vector vector = (anyType as Vector);
        return vector.elementAt(index);
    }
}


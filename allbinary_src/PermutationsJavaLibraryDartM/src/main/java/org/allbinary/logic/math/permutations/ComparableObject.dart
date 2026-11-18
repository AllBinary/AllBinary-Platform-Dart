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
// package org.allbinary.logic.math.permutations

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';

class ComparableObject implements Comparable {
    

    @override
    int compareTo(dynamic anyType) {
        if (TsUtil.getInstance().hashCode1(this) < TsUtil.getInstance().hashCode1(anyType)) {
            return -1;
        } else if (TsUtil.getInstance().hashCode1(this) > TsUtil.getInstance().hashCode1(anyType)) {
            return 1;
        }
        return 0;
    }
}


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
// package org.allbinary.logic.util.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/BaseCircularPool.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.dart';

class AllBinaryEventCircularPool extends BaseCircularPool {
    

    AllBinaryEventCircularPool(int max) {
        this.OBJECT_ARRAY = List<Object?>.filled(max, null);
        this.circularIndexUtil = CircularIndexUtil.createInstance(max);
    }
    

    void initAllBinaryEventCircularPool(AllBinaryEventObjectFactoryInterface allBinaryEventObjectFactoryInterface) {
        this.circularIndexUtil.setIndex(0);
        int size = this.circularIndexUtil.getSize();
        for (int index = 0; index < size; index++) {
            this.OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance();
        }
    }
}


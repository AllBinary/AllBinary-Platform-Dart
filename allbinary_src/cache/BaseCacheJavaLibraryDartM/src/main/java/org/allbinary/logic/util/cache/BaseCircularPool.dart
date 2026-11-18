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
// package org.allbinary.logic.util.cache

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/AllBinaryObjectFactoryInterface.dart';

class BaseCircularPool {
    late CircularIndexUtil circularIndexUtil;
    late List<Object?> OBJECT_ARRAY;

    // Java field initializers run after the base constructor
    void initFieldsBaseCircularPool() {
    this.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
    this.OBJECT_ARRAY = NullUtil.getInstance().NULL_OBJECT_ARRAY;
    }

    BaseCircularPool() {
        this.initFieldsBaseCircularPool();
    }
    

    Object getNextInstance() {
        Object anyType = this.OBJECT_ARRAY[this.circularIndexUtil.getIndex()]!;
        this.circularIndexUtil.next();
        return anyType;
    }
    

    void init(AllBinaryObjectFactoryInterface allBinaryObjectFactoryInterface) {
        this.circularIndexUtil.setIndex(0);
        int size = this.circularIndexUtil.getSize();
        for (int index = 0; index < size; index++) {
            this.OBJECT_ARRAY[index] = allBinaryObjectFactoryInterface.getInstance();
        }
    }
    

    Object getInstance1(int index) {
        return this.OBJECT_ARRAY[index]!;
    }
}


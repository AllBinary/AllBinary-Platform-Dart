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
// package org.allbinary.graphics.color

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';

class BasicColorArrayIndexer {
    late List<BasicColor?> basicColorArray;
    late CircularIndexUtil circularIndexUtil;

    // Java field initializers run after the base constructor
    void initFieldsBasicColorArrayIndexer() {
    
    
    }
    

    BasicColorArrayIndexer(List<BasicColor?> basicColorArray) {
        this.initFieldsBasicColorArrayIndexer();
        this.basicColorArray = basicColorArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.basicColorArray.length);
    }
    

    void next() {
        this.circularIndexUtil.next();
    }
    

    BasicColor get() {
        return this.basicColorArray[this.circularIndexUtil.getIndex()]!;
    }
    

    List<BasicColor?> getBasicColorArray() {
        return this.basicColorArray;
    }
}


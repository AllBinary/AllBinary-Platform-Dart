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
// package org.allbinary.logic.math.vector

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/math/NoDecimalTrigTable.dart';

class AxisMathVectorUtil {
    static final AxisMathVectorUtil instance = AxisMathVectorUtil();
    late NoDecimalTrigTable noDecimalTrigTable;

    // Java field initializers run after the base constructor
    void initFieldsAxisMathVectorUtil() {
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
    }

    AxisMathVectorUtil() {
        this.initFieldsAxisMathVectorUtil();
    }
    

    static AxisMathVectorUtil getInstance() {
        return AxisMathVectorUtil.instance;
    }
    

    int calculateX(int magnitude, int angle) {
        return magnitude * this.noDecimalTrigTable.cos(angle) ~/ 10;
    }
    

    int calculateY(int magnitude, int angle) {
        return magnitude * this.noDecimalTrigTable.sin(angle) ~/ 10;
    }
    

    int calculateZ(int magnitude, int otherAngle) {
        return magnitude * this.noDecimalTrigTable.sin(otherAngle) ~/ 10;
    }
}


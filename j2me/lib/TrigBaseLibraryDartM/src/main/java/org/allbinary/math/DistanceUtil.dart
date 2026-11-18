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
// package org.allbinary.math

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';

class DistanceUtil {
    static final DistanceUtil instance = DistanceUtil();
    late MathUtil mathUtil;

    // Java field initializers run after the base constructor
    void initFieldsDistanceUtil() {
    this.mathUtil = MathUtil.getInstance();
    }

    DistanceUtil() {
        this.initFieldsDistanceUtil();
    }
    

    static DistanceUtil getInstance() {
        return DistanceUtil.instance;
    }
    

    int getDistance(int x1, int y1, int x2, int y2) {
        final int dx = x1 - x2;
        final int dy = y1 - y2;
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
}


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
// package org.allbinary.graphics

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';

class PointFactory {
    static final PointFactory instance = PointFactory();
    late GPoint ZERO_ZERO;

    // Java field initializers run after the base constructor
    void initFieldsPointFactory() {
    this.ZERO_ZERO = this.createXYZ(0, 0, 0);
    }
    

    static PointFactory getInstance() {
        return PointFactory.instance;
    }
    

    void init() {
    }
    

    PointFactory() {
        this.initFieldsPointFactory();
    }
    

    GPoint createXY(int x, int y) {
        return GPoint(x, y, 0);
    }
    

    GPoint createXYZ(int x, int y, int z) {
        return GPoint(x, y, z);
    }
}


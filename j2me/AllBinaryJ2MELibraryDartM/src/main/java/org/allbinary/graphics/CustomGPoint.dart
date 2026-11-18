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

class CustomGPoint extends GPoint {
    static final CustomGPoint NULL_CUSTOM_POINT = CustomGPoint(0, 0, 0);
    int cx = 0;
    int cy = 0;
    int cz = 0;

    // Java field initializers run after the base constructor
    void initFieldsCustomGPoint() {
    this.cx = 0;
    this.cy = 0;
    this.cz = 0;
    }
    

    static CustomGPoint getInstance1(GPoint point) {
        return CustomGPoint(point.getX(), point.getY(), point.getZ());
    }
    

    static CustomGPoint getInstance3(int x, int y) {
        return CustomGPoint(x, y, 3);
    }
    

    CustomGPoint(int x, int y, int z) : super(x, y, z) {
        this.initFieldsCustomGPoint();
        
    }
    

    void setX(int x) {
        this.cx = x;
    }
    

    @override
    int getX() {
        return this.cx;
    }
    

    void setY(int y) {
        this.cy = y;
    }
    

    @override
    int getY() {
        return this.cy;
    }
    

    void setZ(int z) {
        this.cz = z;
    }
    

    @override
    int getZ() {
        return this.cz;
    }
}


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
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/math/PositionStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class GPoint {
    static const String POINT_LABEL = "Point: ";
    int x = 0;
    int y = 0;
    int z = 0;

    // Java field initializers run after the base constructor
    void initFieldsGPoint() {
    
    
    
    }
    

    static GPoint getInstance1(GPoint point) {
        return GPoint(point.getX(), point.getY(), point.getZ());
    }
    

    GPoint(int x, int y, int z) {
        this.initFieldsGPoint();
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    int getX() {
        return this.x;
    }
    

    int getY() {
        return this.y;
    }
    

    int getZ() {
        return this.z;
    }
    

    int getRawX() {
        return this.x;
    }
    

    int getRawY() {
        return this.y;
    }
    

    int getRawZ() {
        return this.z;
    }
    

    @override
    String toString() {
        return GPoint.toStringStatic(this.getX(), this.getY(), this.getZ());
    }
    

    static String toStringStatic(int x, int y, int z) {
        final StringMaker stringBuffer = StringMaker();
        final PositionStrings positionStrings = PositionStrings.getInstance();
        stringBuffer.append(GPoint.POINT_LABEL);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(x);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(y);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(z);
        return stringBuffer.toString();
    }
}


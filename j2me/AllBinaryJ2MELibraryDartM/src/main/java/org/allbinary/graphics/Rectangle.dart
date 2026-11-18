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
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';

class Rectangle {
    late GPoint point;
    int width = 0;
    int height = 0;

    // Java field initializers run after the base constructor
    void initFieldsRectangle() {
    
    
    
    }
    

    Rectangle(GPoint point, int width, int height) {
        this.initFieldsRectangle();
        this.point = point;
        this.width = width;
        this.height = height;
    }
    

    GPoint getPoint() {
        return this.point;
    }
    

    void setPoint(GPoint point) {
        this.point = point;
    }
    

    int getMaxX() {
        return this.point.getX() + this.width;
    }
    

    int getMaxY() {
        return this.point.getY() + this.height;
    }
    

    int getWidth() {
        return this.width;
    }
    

    void setWidth(int width) {
        this.width = width;
    }
    

    int getHeight() {
        return this.height;
    }
    

    void setHeight(int height) {
        this.height = height;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(this.getPoint().toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().WIDTH_LABEL);
        stringBuffer.appendint(this.getWidth());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().HEIGHT_LABEL);
        stringBuffer.appendint(this.getHeight());
        stringBuffer.append(" MaxX: ");
        stringBuffer.appendint(this.getMaxX());
        stringBuffer.append(" MaxY: ");
        stringBuffer.appendint(this.getMaxY());
        return stringBuffer.toString();
    }
}

